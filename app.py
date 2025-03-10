from flask import Flask, render_template, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import os
from pyswip import Prolog

app = Flask(__name__)

# Database configuration
db_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'database')
os.makedirs(db_path, exist_ok=True)
db_file = os.path.join(db_path, 'artifacts.db')
app.config['SQLALCHEMY_DATABASE_URI'] = f'sqlite:///{db_file}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

# Initialize Prolog
prolog = Prolog()
prolog.consult(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'knowledge_base.pl'))

class Artifact(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(200), nullable=False)
    description = db.Column(db.Text, nullable=False)
    image_path = db.Column(db.String(500), nullable=False)
    audio_path = db.Column(db.String(500))
    category = db.Column(db.String(100))
    period = db.Column(db.String(100))
    created_at = db.Column(db.DateTime, default=datetime.utcnow)

    def get_prolog_info(self):
        """Get additional information from Prolog knowledge base"""
        prolog_id = self.title.lower().replace(' ', '_')
        cultural_significance = list(prolog.query(f"cultural_significance({prolog_id}, X)"))
        material = list(prolog.query(f"made_of({prolog_id}, X)"))
        
        return {
            'cultural_significance': [result['X'] for result in cultural_significance],
            'material': [result['X'] for result in material]
        }

from flask import Flask, render_template, redirect, url_for, flash, session
from pyswip import Prolog
import os

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # Required for flash messages
prolog = Prolog()

# Load Prolog database
db_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'database', 'heritage.pl')
prolog.consult(db_path)

@app.route('/')
def home():
    # Query Prolog database
    heritage_items = []
    artists = []
    souvenirs = []

    # Fetch heritage items
    for result in prolog.query("heritage(Id, Title, Image, Desc, Category, Period)"):
        heritage_items.append(dict(result))
    
    # Fetch artists
    for result in prolog.query("artist(Id, Name, Image, Desc, Type, Period)"):
        artists.append(dict(result))
    
    # Fetch souvenirs
    for result in prolog.query("souvenir(Id, Title, Image, Desc, Type, Price)"):
        souvenirs.append(dict(result))

    return render_template('index.html', 
                         heritage_items=heritage_items[:3],
                         artists=artists[:3],
                         souvenirs=souvenirs[:3])

@app.route('/heritage')
def heritage():
    # Get selected category from query parameter
    selected_category = request.args.get('category', 'all')
    
    # Query all heritage items
    query = "heritage(Id, Title, Image, Desc, Type, Period)"
    heritages = list(prolog.query(query))
    
    # Convert to list of dictionaries
    heritage_items = [
        {
            'Id': item['Id'],
            'Title': item['Title'],
            'Image': item['Image'],
            'Desc': item['Desc'],
            'Type': item['Type'],
            'Period': item['Period']
        }
        for item in heritages
    ]
    
    # Filter by category if one is selected
    if selected_category and selected_category.lower() != 'all':
        heritage_items = [item for item in heritage_items if item['Type'] == selected_category]
    
    # Get all unique categories
    categories = list(set(item['Type'] for item in heritage_items))
    
    return render_template('heritage.html', heritages=heritage_items, categories=categories, selected_category=selected_category)

@app.route('/artist')
def artist():
    artists = []
    for result in prolog.query("artist(Id, Name, Image, Desc, Type, Period)"):
        artists.append(dict(result))
    return render_template('artist.html', artists=artists)

@app.route('/souvenir')
def souvenir():
    souvenirs = []
    for result in prolog.query("souvenir(Id, Title, Image, Desc, Type, Price)"):
        souvenirs.append(dict(result))
    return render_template('souvenir.html', souvenirs=souvenirs)

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/admin', methods=['GET', 'POST'])
def admin():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        
        # Check credentials (you should implement proper authentication)
        if username == 'admin' and password == 'password':
            session['admin'] = True
            return redirect(url_for('admin_dashboard'))
        flash('Invalid credentials')
    return render_template('admin/login.html')

@app.route('/admin/dashboard')
def admin_dashboard():
    if not session.get('admin'):
        return redirect(url_for('admin'))
    return render_template('admin/dashboard.html')

def get_heritage_by_id(heritage_id):
    # Query Prolog for specific heritage item
    for result in prolog.query(f"heritage({heritage_id}, Title, Image, Desc, Category, Period)"):
        return {
            'Id': heritage_id,
            'Title': result['Title'],
            'Image': result['Image'],
            'Desc': result['Desc'],
            'Category': result['Category'],
            'Period': result['Period']
        }
    return None

from random import sample

@app.route('/heritage/<int:heritage_id>')
def heritage_detail(heritage_id):
    query = f"heritage(Id, Title, Image, Desc, Type, Period)"
    heritages = list(prolog.query(query))
    
    heritage_item = next((item for item in heritages if item['Id'] == heritage_id), None)
    
    if heritage_item:
        return render_template('heritage_detail.html', heritage=heritage_item)
    return redirect(url_for('heritage'))

@app.route('/artist/<int:artist_id>')
def artist_detail(artist_id):
    artist = None
    paintings = []
    
    # Get artist details
    for result in prolog.query(f"artist({artist_id}, Name, Image, Desc, Type, Period)"):
        artist = {
            'Id': artist_id,
            'Name': result['Name'],
            'Image': result['Image'],
            'Desc': result['Desc'],
            'Type': result['Type'],
            'Period': result['Period']
        }
        break
    
    # Get artist's paintings with IDs
    for painting_result in prolog.query(f"artist_painting({artist_id}, PaintingId), heritage(PaintingId, Title, Image, Desc, Category, Period)"):
        paintings.append({
            'Id': painting_result['PaintingId'],  # Include the painting ID
            'Title': painting_result['Title'],
            'Image': painting_result['Image'],
            'Desc': painting_result['Desc'],
            'Period': painting_result['Period']
        })
    
    if artist is None:
        return redirect(url_for('artist'))
        
    return render_template('artist_detail.html', artist=artist, paintings=paintings)

if __name__ == '__main__':
    app.run(debug=True, port=5001)
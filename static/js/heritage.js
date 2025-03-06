document.addEventListener('DOMContentLoaded', function() {
    console.log('Heritage JS loaded'); // Debug line to verify script loading

    window.openHeritageModal = function(title, image, period, desc) {
        console.log('Opening modal for:', title); // Debug line to verify function call
        const modal = document.getElementById('heritageModal');
        document.getElementById('modalTitle').textContent = title;
        document.getElementById('modalImage').src = image;
        document.getElementById('modalPeriod').textContent = period;
        document.getElementById('modalDesc').textContent = desc;
        
        modal.style.display = 'block';
        setTimeout(() => {
            modal.classList.add('show');
        }, 10);
        document.body.style.overflow = 'hidden';
    };

    // Close modal when clicking the close button
    document.querySelector('.close-modal').addEventListener('click', function() {
        const modal = document.getElementById('heritageModal');
        modal.classList.remove('show');
        setTimeout(() => {
            modal.style.display = 'none';
            document.body.style.overflow = 'auto';
        }, 300);
    });

    // Close modal when clicking outside
    window.addEventListener('click', function(e) {
        const modal = document.getElementById('heritageModal');
        if (e.target === modal) {
            modal.classList.remove('show');
            setTimeout(() => {
                modal.style.display = 'none';
                document.body.style.overflow = 'auto';
            }, 300);
        }
    });

    // Add filter functionality
    document.addEventListener('DOMContentLoaded', function() {
        const categorySelect = document.getElementById('categoryFilter');
        const galleryItems = document.querySelectorAll('.gallery-card');
    
        categorySelect.addEventListener('change', function() {
            const selectedCategory = this.value;
            
            galleryItems.forEach(item => {
                const itemCategory = item.getAttribute('data-category');
                if (selectedCategory === 'all' || selectedCategory === itemCategory) {
                    item.style.display = 'block';
                } else {
                    item.style.display = 'none';
                }
            });
        });
    });
});
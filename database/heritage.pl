% Heritage items database
:- dynamic heritage/6.
:- dynamic artist/6.
:- dynamic souvenir/6.
:- dynamic category/1.

% Categories
category('Pagoda').
category('Stele').
category('Sculpture').
category('Painting').
category('Handicraft').
category('Musical Instrument').
category('Costume').

% Heritage items
heritage(1, 'Shwedagon Pagoda', 'images/heritage/shwedagon.jpg', 'The most sacred Buddhist pagoda in Myanmar', 'Pagoda', 'Ancient').
heritage(2, 'Mandalay Palace', 'images/heritage/mandalay_palace.jpg', 'Last royal palace of the last Burmese monarchy', 'Historical', 'Konbaung Dynasty').
heritage(3, 'U Bein Bridge', 'images/heritage/u_bein_bridge.jpg', 'Oldest and longest teakwood bridge in the world', 'Architecture', 'Ava Dynasty').
heritage(4, 'Myazedi Inscription', 'images/heritage/heritage4.jpeg', 'Ancient stone inscription in four languages', 'Stele', 'Pagan Period').
heritage(5, 'Seated Buddha', 'images/heritage/heritage5.jpg', 'Ancient bronze Buddha statue', 'Sculpture', 'Ava Period').
heritage(6, 'Traditional Harp', 'images/heritage/harp.jpeg', 'Myanmar traditional string instrument', 'Musical Instrument', 'Traditional').
heritage(7, 'Longyi', 'images/heritage/heritage7.jpg', 'Traditional Myanmar sarong', 'Costume', 'Traditional').
heritage(8, 'Lacquerware Art', 'images/heritage/heritage8.jpeg', 'Ancient lacquerware crafting', 'Handicraft', 'Traditional').
heritage(9, 'Pagan Mural', 'images/heritage/heritage9.jpeg', 'Myanmar, a country rich in cultural and historical treasures, is home to one of the most remarkable archaeological sites in the world: the ancient city of Pagan (Bagan). Known for its thousands of temples and stupas, Pagan also boasts an extraordinary collection of murals that provide invaluable insights into the artistic, religious, and social life of early Burmese civilization. These murals, found within the temples and pagodas, remain a testament to the artistic mastery and spiritual devotion of the people who created them.', 'Painting', 'Pagan Period').

% Artists
artist(1, 'U Ba Nyan', 'images/artist/artist1.jpg', 'Pioneer of western painting in Myanmar', 'Painter', '1897-1945').
artist(2, 'U Ngwe Gaing', 'images/artist/artist2.jpg', 'Master of traditional Myanmar painting', 'Painter', '1901-1967').
artist(3, 'U Lun Gywe', 'images/artist/artist3.jpg', 'Contemporary Myanmar artist', 'Painter', '1930-Present').
artist(4, 'U Thein Han', 'images/artist/artist4.jpg', 'Master of traditional sculpture', 'Sculptor', '1890-1960').
artist(5, 'Daw Sein Mya', 'images/artist/artist5.jpg', 'Pioneer female artist in Myanmar', 'Painter', '1917-2004').
artist(6, 'U Ohn Lwin', 'images/artist/artist6.jpg', 'Expert in traditional lacquerware', 'Craftsman', '1925-1990').
artist(7, 'U Win Pe', 'images/artist/artist7.jpg', 'Modern abstract artist', 'Painter', '1936-Present').
artist(8, 'Daw Khin May', 'images/artist/artist8.jpg', 'Traditional textile artist', 'Weaver', '1940-2010').
artist(9, 'U Aung Soe', 'images/artist/artist9.jpg', 'Innovative modern artist', 'Painter', '1924-1990').

% Souvenirs
souvenir(1, 'Lacquerware Box', 'images/souvenir1.jpg', 'Traditional Myanmar lacquerware', 'Handicraft', '50000').
souvenir(2, 'Myanmar Puppet', 'images/souvenir2.jpg', 'Traditional string puppet', 'Handicraft', '35000').
souvenir(3, 'Silver Bowl', 'images/souvenir3.jpg', 'Handcrafted silver bowl', 'Silverware', '75000').

% Adding Paintings
heritage(10, 'Life in Golden Land', 'images/heritage/painting1.jpg', 'A vibrant depiction of rural life in Myanmar, showcasing traditional farming methods and village scenery', 'Painting', 'Modern').
heritage(11, 'Royal Court Scene', 'images/heritage/painting2.jpg', 'Detailed painting of the Konbaung Dynasty royal court, displaying traditional costumes and architecture', 'Painting', 'Colonial Period').
heritage(12, 'Market Day', 'images/heritage/painting3.jpg', 'Bustling scene of a traditional Myanmar market, showing local trade and daily life', 'Painting', 'Contemporary').
heritage(13, 'Temple at Dawn', 'images/heritage/painting4.jpg', 'Atmospheric painting of ancient temples in Bagan during sunrise', 'Painting', 'Modern').
heritage(14, 'Dance of the Royal Court', 'images/heritage/painting5.jpg', 'Traditional dance performance at the royal palace, showcasing classical Myanmar dance', 'Painting', 'Colonial Period').
heritage(15, 'Harvest Festival', 'images/heritage/painting6.jpg', 'Celebration of the harvest season with traditional festivities and customs', 'Painting', 'Modern').
heritage(16, 'Monastery Life', 'images/heritage/painting7.jpg', 'Daily life in a Buddhist monastery, depicting monks and religious practices', 'Painting', 'Contemporary').
heritage(17, 'River Life', 'images/heritage/painting8.jpg', 'Scene of traditional life along the Ayeyarwady River', 'Painting', 'Modern').
heritage(18, 'Village Festival', 'images/heritage/painting9.jpg', 'Traditional village celebration with local customs and ceremonies', 'Painting', 'Contemporary').
heritage(19, 'Ancient Traditions', 'images/heritage/painting10.jpg', 'Depiction of ancient Myanmar customs and traditions', 'Painting', 'Colonial Period').

% Artist Paintings (artist_id, painting_id)
:- dynamic artist_painting/2.

% U Ba Nyan's paintings
artist_painting(1, 10).  % Life in Golden Land
artist_painting(1, 13).  % Temple at Dawn
artist_painting(1, 17).  % River Life

% U Ngwe Gaing's paintings
artist_painting(2, 11).  % Royal Court Scene
artist_painting(2, 14).  % Dance of the Royal Court

% U Lun Gywe's paintings
artist_painting(3, 12).  % Market Day
artist_painting(3, 15).  % Harvest Festival

% Daw Sein Mya's paintings
artist_painting(5, 16).  % Monastery Life
artist_painting(5, 18).  % Village Festival

% U Win Pe's paintings
artist_painting(7, 19).  % Ancient Traditions
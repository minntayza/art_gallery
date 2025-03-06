% Heritage items database

:- discontiguous heritage/6.

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

% Heritage items

% Pagodas

heritage(1, 'Shwedagon Pagoda', 'images/heritage/shwedagon.jpg', 'The most sacred Buddhist pagoda in Myanmar, covered in gold plates with a height of 99 meters.', 'Pagoda', '15th Century').

heritage(20, 'Sule Pagoda', 'images/heritage/sule.jpg', 'An ancient pagoda located in downtown Yangon, serving as a landmark and city center.', 'Pagoda', 'Before 2nd Century').

heritage(21, 'Kyaiktiyo Pagoda', 'images/heritage/kyaiktiyo.jpg', 'Famous Golden Rock pagoda perched on a granite boulder.', 'Pagoda', '11th Century').

heritage(22, 'Kuthodaw Pagoda', 'images/heritage/kuthodaw.jpg', 'Known as the "World\'s Largest Book" for its marble slabs containing Buddhist texts.', 'Pagoda', '1857').

heritage(23, 'Mahamuni Buddha Temple', 'images/heritage/mahamuni.webp', 'Houses the most highly revered Buddha image in Mandalay.', 'Pagoda', '1784').

heritage(24, 'Shwezigon Pagoda', 'images/heritage/shwezigon.jpg', 'Prototype of Burmese stupas, built to enshrine sacred Buddhist relics.', 'Pagoda', '1102').

heritage(25, 'Botataung Pagoda', 'images/heritage/botataung.avif', 'Houses sacred hair relics of Buddha, unique for its hollow stupa.', 'Pagoda', 'Ancient').

heritage(26, 'Shwemawdaw Pagoda', 'images/heritage/shwemawdaw.jpg', 'Tallest pagoda in Myanmar, standing at 114 meters.', 'Pagoda', '10th Century').

heritage(2, 'Mandalay Palace', 'images/heritage/mandalay_palace.jpg', 'Last royal palace of the last Burmese monarchy', 'Historical', 'Konbaung Dynasty').

heritage(3, 'U Bein Bridge', 'images/heritage/u_bein_bridge.jpg', 'Oldest and longest teakwood bridge in the world', 'Architecture', 'Ava Dynasty').

heritage(4, 'Myazedi Inscription', 'images/heritage/heritage4.jpeg', 'Ancient stone inscription in four languages', 'Stele', 'Pagan Period').

heritage(5, 'Seated Buddha', 'images/heritage/heritage5.jpg', 'Ancient bronze Buddha statue', 'Sculpture', 'Ava Period').

heritage(6, 'Traditional Harp', 'images/heritage/harp.jpeg', 'Myanmar traditional string instrument', 'Musical Instrument', 'Traditional').

heritage(7, 'Longyi', 'images/heritage/heritage7.jpg', 'Traditional Myanmar sarong', 'Costume', 'Traditional').

heritage(8, 'Lacquerware Art', 'images/heritage/heritage8.jpeg', 'Ancient lacquerware crafting', 'Handicraft', 'Traditional').

heritage(9, 'Pagan Mural', 'images/heritage/heritage9.jpeg', 'Myanmar, a country rich in cultural and historical treasures, is home to one of the most remarkable archaeological sites in the world: the ancient city of Pagan (Bagan). Known for its thousands of temples and stupas, Pagan also boasts an extraordinary collection of murals that provide invaluable insights into the artistic, religious, and social life of early Burmese civilization. These murals, found within the temples and pagodas, remain a testament to the artistic mastery and spiritual devotion of the people who created them.', 'Painting', 'Pagan Period').



% Artists

artist(1, 'U Hlaing Bwa', 'images/artist/artist1.png', 'was born in 1950 in Yangon, is a full-time artist who studied under the old master U Thein Han in the 1970s. His artistic style is characterized by bold brush strokes and creative color schemes, reminiscent of the European Impressionist style, with Monet as a significant source of inspiration. His artworks often depict the tranquil beauty of Myanmar, including scenic places like Bagan, the colorful Shan State, vibrant marketplaces and solitary women lost in contemplation.', 'Painter', '1897-1945').

artist(2, 'U Ngwe Gaing', 'images/artist/ngwe_gaing.jpeg', 'Master of traditional Myanmar painting', 'Painter', '1901-1967').

artist(3, 'U Lun Gywe', 'images/artist/lun_gywe.jpg', 'Contemporary Myanmar artist', 'Painter', '1930-Present').

artist(4, 'U Thein Han', 'images/artist/artist4.jpg', 'Master of traditional sculpture', 'Sculptor', '1890-1960').

artist(5, 'Daw Sein Mya', 'images/artist/artist5.jpg', 'Pioneer female artist in Myanmar', 'Painter', '1917-2004').

artist(6, 'U Ohn Lwin', 'images/artist/artist6.jpg', 'Expert in traditional lacquerware', 'Craftsman', '1925-1990').

artist(7, 'U Win Pe', 'images/artist/win_pe.jpeg', 'Modern abstract artist', 'Painter', '1936-Present').

artist(8, 'Daw Khin May', 'images/artist/artist8.jpg', 'Traditional textile artist', 'Weaver', '1940-2010').

artist(9, 'U Aung Soe', 'images/artist/artist9.jpg', 'Innovative modern artist', 'Painter', '1924-1990').



% Souvenirs

souvenir(1, 'Lacquerware Box', 'images/souvenir1.jpg', 'Traditional Myanmar lacquerware', 'Handicraft', '50000').

souvenir(2, 'Myanmar Puppet', 'images/souvenir2.jpg', 'Traditional string puppet', 'Handicraft', '35000').

souvenir(3, 'Silver Bowl', 'images/souvenir3.jpg', 'Handcrafted silver bowl', 'Silverware', '75000').



% Adding Paintings

heritage(10, 'ကိုယ်ဟန်ကြော့ကြော့( Portrait of Poise)', 'images/heritage/painting1.png', 'Portrait of a Myanmar lady', 'Painting', 'Modern').

heritage(11, 'Royal Court Scene', 'images/heritage/painting2.jpg', 'Konbaung Dynasty royal court scene', 'Painting', 'Colonial Period').

heritage(12, 'Market Day', 'images/heritage/painting3.jpg', 'Traditional Myanmar market scene', 'Painting', 'Contemporary').

heritage(100, 'Yellow Paddy Field', 'images/heritage/painting4.png', 'Bagan temples at sunrise', 'Painting', 'Modern').

heritage(101, 'Inside a Floral Garden', 'images/heritage/garden.png', 'Bagan temples at sunrise', 'Painting', 'Modern').

heritage(102, 'The Lady in a Canoe', 'images/heritage/canoe.png', 'Bagan temples at sunrise', 'Painting', 'Modern').

heritage(103, ' Captured Beauty', 'images/heritage/beauty.png', 'Bagan temples at sunrise', 'Painting', 'Modern').

heritage(14, 'Dance of the Royal Court', 'images/heritage/painting5.jpg', 'Traditional court dance performance', 'Painting', 'Colonial Period').

heritage(15, 'Harvest Festival', 'images/heritage/painting6.jpg', 'Traditional harvest celebration', 'Painting', 'Modern').

heritage(16, 'Monastery Life', 'images/heritage/painting7.jpg', 'Daily life in Buddhist monastery', 'Painting', 'Contemporary').

heritage(17, 'River Life', 'images/heritage/painting8.jpg', 'Life along Ayeyarwady River', 'Painting', 'Modern').

heritage(18, 'Village Festival', 'images/heritage/painting9.jpg', 'Traditional village celebration', 'Painting', 'Contemporary').

heritage(19, 'Ancient Traditions', 'images/heritage/painting10.jpg', 'Myanmar customs and traditions', 'Painting', 'Colonial Period').



% Artist Paintings (artist_id, painting_id)

:- dynamic artist_painting/2.





% U Ngwe Gaing's paintings

artist_painting(2, 11). % Royal Court Scene

artist_painting(2, 14). % Dance of the Royal Court



% U Lun Gywe's paintings

artist_painting(3, 12). % Market Day

artist_painting(3, 15). % Harvest Festival



% Daw Sein Mya's paintings

artist_painting(5, 16). % Monastery Life

artist_painting(5, 18). % Village Festival



% U Win Pe's paintings

artist_painting(7, 19). % Ancient Traditions



% Steles

heritage(27, 'Bagan Stone Inscription', 'images/heritage/steles/bagan_stone.jpg', 'Chronicles early Bagan dynasty history.', 'Stele', '11th Century').

heritage(28, 'Mon Inscription', 'images/heritage/steles/mon_inscription.jpg', 'Ancient Mon language stone inscription.', 'Stele', '10th Century').

heritage(29, 'Pyu Inscription', 'images/heritage/steles/pyu_inscription.jpg', 'Rare Pyu script stone inscription.', 'Stele', '7th Century').

heritage(30, 'Mandalay Stone', 'images/heritage/steles/mandalay_stone.jpg', 'Royal edicts from Mandalay period.', 'Stele', '19th Century').

heritage(31, 'Rajakumar Inscription', 'images/heritage/steles/rajakumar_inscription.jpg', 'Historical record of Prince Rajakumar\'s dedication.', 'Stele', '12th Century').

heritage(32, 'Kalyani Inscriptions', 'images/heritage/steles/kalyani.jpg', 'Records the reform of Burmese Buddhism.', 'Stele', '1479').

heritage(33, 'Shwezigon Inscription', 'images/heritage/steles/shwezigon_stone.jpg', 'Details the construction of Shwezigon Pagoda.', 'Stele', '11th Century').

heritage(34, 'Dhammayazika Inscription', 'images/heritage/steles/dhammayazika.jpg', 'Ancient Buddhist teachings and historical records.', 'Stele', '12th Century').



% Sculptures

heritage(35, 'Mandalay Buddha', 'images/heritage/sculptures/mandalay_buddha.jpg', 'Large seated Buddha statue from Mandalay.', 'Sculpture', '19th Century').

heritage(36, 'Bagan Terracotta', 'images/heritage/sculptures/bagan_terracotta.jpg', 'Decorative terracotta plaques from Bagan.', 'Sculpture', '12th Century').

heritage(37, 'Bronze Buddha', 'images/heritage/sculptures/bronze_buddha.jpg', 'Ancient bronze Buddha statue.', 'Sculpture', 'Pyu Period').

heritage(38, 'Stone Relief', 'images/heritage/sculptures/stone_relief.jpg, 'Carved stone relief depicting Buddhist scenes.', 'Sculpture', 'Bagan Period').

heritage(39, 'Wood Carving', 'images/heritage/sculptures/wood_carving.jpg', 'Intricate wooden sculpture from palace.', 'Sculpture', 'Konbaung Period').

heritage(40, 'Marble Buddha', 'images/heritage/sculptures/marble_buddha.jpg', 'White marble Buddha from Mandalay.', 'Sculpture', '19th Century').

heritage(41, 'Bronze Nat', 'images/heritage/sculptures/bronze_nat.jpg', 'Bronze spirit statue from pre-Buddhist era.', 'Sculpture', 'Ancient').

heritage(42, 'Stucco Relief', 'images/heritage/sculptures/stucco_relief.jpg', 'Decorative stucco work from temple walls.', 'Sculpture', 'Bagan Period').



% Musical Instruments

heritage(43, 'Saung Harp', 'images/heritage/instruments/saung.jpg', 'Traditional Burmese harp with 13 strings.', 'Musical Instrument', 'Traditional').

heritage(44, 'Pat Waing', 'images/heritage/instruments/pat_waing.jpg', 'Circle of 21 tuned drums.', 'Musical Instrument', 'Traditional').

heritage(45, 'Hsaing Waing', 'images/heritage/instruments/hsaing_waing.jpg', 'Traditional circular gong ensemble.', 'Musical Instrument', 'Traditional').

heritage(46, 'Sandaya', 'images/heritage/instruments/sandaya.jpg', 'Traditional xylophone with wooden bars.', 'Musical Instrument', 'Traditional').

heritage(47, 'Si Daw', 'images/heritage/instruments/si_daw.jpg', 'Traditional Burmese violin.', 'Musical Instrument', 'Traditional').

heritage(48, 'Kyi Waing', 'images/heritage/instruments/kyi_waing.jpg', 'Bronze gong circle instrument.', 'Musical Instrument', 'Traditional').

heritage(49, 'Hne', 'images/heritage/instruments/hne.jpg', 'Double reed oboe-like instrument.', 'Musical Instrument', 'Traditional').

heritage(50, 'Maung Hsaing', 'images/heritage/instruments/maung_hsaing.jpg', 'Set of small bronze gongs.', 'Musical Instrument', 'Traditional').



% Handicrafts

heritage(51, 'Lacquerware Bowl', 'images/heritage/handicrafts/lacquerware_bowl.jpg', 'Traditional lacquerware bowl with intricate designs.', 'Handicraft', 'Traditional').

heritage(52, 'Silver Bowl', 'images/heritage/handicrafts/silver_bowl.jpg', 'Hand-crafted silver bowl with traditional motifs.', 'Handicraft', 'Traditional').

heritage(53, 'Bronze Bell', 'images/heritage/handicrafts/bronze_bell.jpg', 'Ceremonial bronze bell with decorative patterns.', 'Handicraft', 'Ancient').

heritage(54, 'Wood Panel', 'images/heritage/handicrafts/wood_panel.jpg', 'Carved wooden panel with mythological scenes.', 'Handicraft', 'Traditional').

heritage(55, 'Gold Vessel', 'images/heritage/handicrafts/gold_vessel.jpg', 'Ancient gold ceremonial vessel.', 'Handicraft', 'Pyu Period').

heritage(56, 'Pottery Jar', 'images/heritage/handicrafts/pottery_jar.jpg', 'Traditional glazed pottery storage jar.', 'Handicraft', 'Traditional').

heritage(57, 'Bamboo Basket', 'images/heritage/handicrafts/bamboo_basket.jpg', 'Intricately woven bamboo basket.', 'Handicraft', 'Traditional').

heritage(58, 'Bronze Vessel', 'images/heritage/handicrafts/bronze_vessel.jpg', 'Ancient bronze ceremonial vessel.', 'Handicraft', 'Pyu Period').



% Paintings by Daw Khin May

heritage(11, 'Burmese Lady with Flowers', 'images/paintings/burmese_lady_flowers.jpg', 'A traditional painting depicting a Burmese lady arranging flowers, showcasing the elegance of Myanmar culture and traditional dress.', 'Painting', 'Contemporary').

heritage(12, 'Market Scene', 'images/paintings/market_scene.jpg', 'A vibrant painting of a traditional Myanmar market scene, showing daily life and local culture.', 'Painting', 'Contemporary').

heritage(13, 'Village Life', 'images/paintings/village_life.jpg', 'A serene painting depicting rural life in Myanmar, showcasing traditional houses and daily activities.', 'Painting', 'Contemporary').



% Paintings by U Aung Soe

heritage(14, 'Ancient Temples', 'images/paintings/ancient_temples.jpg', 'A detailed watercolor painting of ancient Myanmar temples in misty morning light.', 'Painting', 'Modern').

heritage(15, 'River Life', 'images/paintings/river_life.jpg', 'A colorful depiction of life along Myanmar\'s rivers, showing traditional boats and fishing activities.', 'Painting', 'Modern').

heritage(16, 'Festival Dance', 'images/paintings/festival_dance.jpg', 'A dynamic painting capturing traditional Myanmar festival dancers in motion.', 'Painting', 'Modern').



% Link paintings to artists (fix Daw Khin May's paintings)

artist_painting(8, 11). % Daw Khin May's paintings (changed from artist_painting(2, 11))

artist_painting(8, 12). % Changed from artist_painting(2, 12)

artist_painting(8, 13). % Changed from artist_painting(2, 13)



artist_painting(9, 14). % U Aung Soe's paintings (changed from artist_painting(3, 14))

artist_painting(9, 15). % Changed from artist_painting(3, 15)

artist_painting(9, 16). % Changed from artist_painting(3, 16)



% U Hlaing Bwa's paintings

artist_painting(1, 10). % Portrait of Poise

artist_painting(1, 100). % Yellow Paddy Field

artist_painting(1, 101). % Inside a Floral Garden

artist_painting(1, 102). % The Lady in a Canoe

artist_painting(1, 103). %  Captured Beauty

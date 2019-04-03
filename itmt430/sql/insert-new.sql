Use website;
INSERT INTO users (
  id, username, user_type, email, password
) 
Values 
  (
    1, "Ficy1953", "user", "AnitaDByrd@einrot.com", 
    "d829f81a918cd60352a185fb4f7cd7407fb6d68f"
  ), 
  (
    2, "Nothers", "user", "NoahDVaughn@armyspy.com", 
    "95679f7748777c13b2d5aff301629702061dd0bc"
  ), 
  (
    3, "Hurasawends", "user", "JessieCDaughtry@gustr.com", 
    "3fe6df3966f68f46fd9156f1b2e9cc9418dbd68b"
  ), 
  (
    4, "Litend", "user", "BettyCLi@fleckens.hu", 
    "32d21e9f69062b43892b0621fee624207945a558"
  ), 
  (
    5, "Hagerre", "user", "BrianKSifuentes@armyspy.com", 
    "12cfbc0bb52684717abc5e0b576ed7ff302e5da9"
  ), 
  (
    6, "Mothesseze", "user", "RobinLShortridge@teleworm.us", 
    "ade98b29b2b5edd5726a8594c764f7c924aabd93"
  ), 
  (
    7, "Girese", "user", "MittieJReed@armyspy.com", 
    "ac18f4abc8190ac6f47e31bf41274f1934e0525a"
  ), 
  (
    8, "Fement42", "user", "AmyRBabb@jourrapide.com", 
    "b578c0afc147e305f2f2a6bb76260a871c628b7b"
  ), 
  (
    9, "Withey", "user", "RichardBGerman@jourrapide.com", 
    "cc2bd1f21741c0bb1adaa78ce4e8ec1be6e6cc17"
  ), 
  (
    10, "Ther1993", "user", "AlbertREspinoza@teleworm.us", 
    "859777b495a50556b1dea9d31365c973c73321ad"
  ), 
  (
    11, "Majessis", "user", "EricGBrim@gustr.com", 
    "b58282250cedd03dc00becacc9104c2c0b169461"
  ), 
  (
    12, "Hertake93", "user", "MirnaTRobinson@teleworm.us", 
    "0710e08784d71f0729be69dbf56ef40c8658bbe3"
  ), 
  (
    13, "Adven1991", "user", "JenniferJVasquez@superrito.com", 
    "503bad60119643f1b6e8c20a74b5188e6cdcc934"
  ), 
  (
    14, "Highted", "user", "JenniferTStarbuck@einrot.com", 
    "6a9780618426de51614fcc573daca03e57755cf0"
  ), 
  (
    15, "Obect1934", "user", "RussellEDaniels@rhyta.com", 
    "e553164c790eb3611d0ca99be71876624cd2c0c1"
  ), 
  (
    16, "Admin", "admin", "Admin@truhawk.com", 
    "98224dbb7c3397c56127074d5cbc2f876040f874"
  );
INSERT INTO pictures (
  photo_id, photo, photo_type, id, photoname, 
  text
) 
Values 
  (
    1, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/angel.jpg'
    ), 
    "image/jpeg", 
    1, 
    "angel", 
    "statue angel"
  ), 
  (
    16, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/beach-rock.jpg'
    ), 
    "image/jpeg", 
    1,
    "beach-rock", 
    "rock water"
  ), 
  (
    31, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/clam.jpg'
    ), 
    "image/jpeg", 
    1,
    "clam",
    "shell algae"
  ), 
  (
    46, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/cuba.jpg'
    ), 
    "image/jpeg", 
    1, 
    "cuba",
    "water bird"
  ), 
  (
    61, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/cutedog.jpg'
    ), 
    "image/jpeg", 
    1, 
    "cutedog",
    "dog animal"
  ), 
  (
    76, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/dragon.jpg'
    ), 
    "image/jpeg", 
    1,
    "dragon",
    "art statue"
  ), 
  (
    91, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/eve.jpg'
    ), 
    "image/jpeg", 
    1, 
    "eve",
    "sunset water"
  ), 
  (
    106, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/glass.jpg'
    ), 
    "image/jpeg", 
    1, 
    "glass",
    "art colors"
  ), 
  (
    121, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/hirsch.jpg'
    ), 
    "image/jpeg", 
    1, 
    "hirsch",
    "deer animal"
  ), 
  (
    136, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/iceland.jpg'
    ), 
    "image/jpeg", 
    1, 
    "iceland",
    "glacier iceberg"
  ), 
  (
    151, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/skates.jpg'
    ), 
    "image/jpeg", 
    1, 
    "skates",
    "skating rollerstakes"
  ), 
  (
    166, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/sunset.jpg'
    ), 
    "image/jpeg", 
    1, 
    "sunset",
    "sunset water"
  ), 
  (
    181, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/talkeetna.jpg'
    ), 
    "image/jpeg", 
    1, 
    "talkeetna",
    "clouds water"
  ), 
  (
    196, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/tiger-cub.jpg'
    ), 
    "image/jpeg", 
    1, 
    "tiger-cub",
    "tiger animal"
  ), 
  (
    211, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(1)Ficy1953/tropical.jpg'
    ), 
    "image/jpeg", 
    1, 
    "tropical",
    "beach sunset"
  ), 
  (
    2, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/apples.jpg'
    ), 
    "image/jpeg", 
    2, 
    "apples",
    "fruit red"
  ), 
  (
    17, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/ara.jpg'
    ), 
    "image/jpeg", 
    2, 
    "ara",
    "parrot bird"
  ), 
  (
    32, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/aurora.jpg'
    ), 
    "image/jpeg", 
    2, 
    "aurora",
    "sky light"
  ), 
  (
    47, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/chicago.jpg'
    ), 
    "image/jpeg", 
    2, 
    "chicago",
    "chicago sky"
  ), 
  (
    62, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/coffee-beans.jpg'
    ), 
    "image/jpeg", 
    2, 
    "coffee-beans",
    "coffee brown"
  ), 
  (
    77, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/colorful-buildings.jpg'
    ), 
    "image/jpeg", 
    2, 
    "colorful-buildings",
    "cars colors"
  ), 
  (
    92, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/cuba-birds.jpg'
    ), 
    "image/jpeg", 
    2, 
    "cuba-birds",
    "flamingo birds"
  ), 
  (
    107, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/golden-lion.jpg'
    ), 
    "image/jpeg", 
    2, 
    "golden-lion",
    "animal lion"
  ), 
  (
    122, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/mouse.jpg'
    ), 
    "image/jpeg", 
    2, 
    "mouse",
    "animal mouse"
  ), 
  (
    137, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/orange-sunset.jpg'
    ), 
    "image/jpeg", 
    2, 
    "orange-sunset",
    "sun bird"
  ), 
  (
    152, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/sunrise.jpg'
    ), 
    "image/jpeg", 
    2, 
    "sunrise",
    "sun aircraft"
  ), 
  (
    167, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/turtle.jpg'
    ), 
    "image/jpeg", 
    2, 
    "turtle",
    "water animal"
  ), 
  (
    182, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/water-drop.jpg'
    ), 
    "image/jpeg", 
    2, 
    "water-drop",
    "water art"
  ), 
  (
    197, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/wooden-boat.jpg'
    ), 
    "image/jpeg", 
    2, 
    "wooden-boat",
    "boat beach"
  ), 
  (
    212, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(2)Nothers/zebra-stripes.jpg'
    ), 
    "image/jpeg", 
    2, 
    "zebra-stripes",
    "zebra animal"
  ), 
  (
    3, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/amsterdam.jpg'
    ), 
    "image/jpeg", 
    3, 
    "amsterdam",
    "water boat"
  ), 
  (
    18, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/basil-pizza.jpg'
    ), 
    "image/jpeg", 
    3, 
    "basil-pizza",
    "food pizza"
  ), 
  (
    33, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/church.jpg'
    ), 
    "image/jpeg", 
    3, 
    "church",
    "art colors"
  ), 
  (
    48, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/cocktail.jpg'
    ), 
    "image/jpeg", 
    3, 
    "cocktail",
    "beach water"
  ), 
  (
    63, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/deer-buck.jpg'
    ), 
    "image/jpeg", 
    3, 
    "deer-buck",
    "deer animal"
  ), 
  (
    78, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/elephant.jpg'
    ), 
    "image/jpeg", 
    3, 
    "elephant",
    "animal rock"
  ), 
  (
    93, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/horseshoe.jpg'
    ), 
    "image/jpeg", 
    3, 
    "horseshoe",
    "water rocks"
  ), 
  (
    108, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/kingfisher.jpg'
    ), 
    "image/jpeg", 
    3, 
    "kingfisher",
    "bird sky"
  ), 
  (
    123, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/mother.jpg'
    ), 
    "image/jpeg", 
    3, 
    "mother",
    "bicycle sky"
  ), 
  (
    138, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/ny.jpg'
    ), 
    "image/jpeg", 
    3, 
    "ny",
    "sky water"
  ), 
  (
    153, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/sky-shades.jpg'
    ), 
    "image/jpeg", 
    3, 
    "sky-shades",
    "sky sunset"
  ), 
  (
    168, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/sphinx.jpg'
    ), 
    "image/jpeg", 
    3, 
    "sphinx.jpg",
    "sky pyramid"
  ), 
  (
    183, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/sunset-birds.jpg'
    ), 
    "image/jpeg", 
    3, 
    "sunset-birds",
    "sunset bird"
  ), 
  (
    198, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/white-wave.jpg'
    ), 
    "image/jpeg", 
    3, 
    "white-wave",
    "beach water"
  ), 
  (
    213, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(3)Hurasawends/wine-cheese.jpg'
    ), 
    "image/jpeg", 
    3, 
    "wine-cheese",
    "food beach"
  ), 
  (
    4, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/castle.jpg'
    ), 
    "image/jpeg", 
    4, 
    "castle",
    "castle sky"
  ), 
  (
    19, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/clarinet.jpg'
    ), 
    "image/jpeg", 
    4, 
    "clarinet",
    "instrument music"
  ), 
  (
    34, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/colorfful-boats.jpg'
    ), 
    "image/jpeg", 
    4, 
    "colorfful-boats",
    "boat water"
  ), 
  (
    49, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/dark.jpg'
    ), 
    "image/jpeg", 
    4, 
    "dark",
    "lights fireworks"
  ), 
  (
    64, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/dawn.jpg'
    ), 
    "image/jpeg", 
    4, 
    "dawn",
    "boat water"
  ), 
  (
    79, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/delicate-arch.jpg'
    ), 
    "image/jpeg", 
    4, 
    "delicate-arch",
    "sky rock"
  ), 
  (
    94, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/eiffel.jpg'
    ), 
    "image/jpeg", 
    4, 
    "eiffel",
    "eiffeltower lights"
  ), 
  (
    109, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/key.jpg'
    ), 
    "image/jpeg", 
    4, 
    "key",
    "key flower"
  ), 
  (
    124, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/keyboard.jpg'
    ), 
    "image/jpeg", 
    4, 
    "keyboard",
    "camera keyboard"
  ), 
  (
    139, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/maldives.jpg'
    ), 
    "image/jpeg", 
    4, 
    "maldives",
    "beach water"
  ), 
  (
    154, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/man-sun.jpg'
    ), 
    "image/jpeg", 
    4, 
    "man-sun",
    "water mansun"
  ), 
  (
    169, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/manipulation.jpg'
    ), 
    "image/jpeg", 
    4, 
    "manipulation",
    "water boat"
  ), 
  (
    184, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/newyears.jpg'
    ), 
    "image/jpeg", 
    4, 
    "newyears",
    "fireworks newyears"
  ), 
  (
    199, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/peacock.jpg'
    ), 
    "image/jpeg", 
    4, 
    "peacock",
    "peacock feathers"
  ), 
  (
    214, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(4)Litend/pink-macarons.jpg'
    ), 
    "image/jpeg", 
    4, 
    "pink-macarons",
    "macarons food"
  ), 
  (
    5, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/blossom.jpg'
    ), 
    "image/jpeg", 
    5, 
    "blosson",
    "flowers spring"
  ), 
  (
    20, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/cathedral.jpg'
    ), 
    "image/jpeg", 
    5, 
    "cathedral",
    "art church"
  ), 
  (
    35, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/chess.jpg'
    ), 
    "image/jpeg", 
    5, 
    "chess",
    "chess game"
  ), 
  (
    50, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/chipmunk.jpg'
    ), 
    "image/jpeg", 
    5, 
    "chipmunk",
    "animal flowers"
  ), 
  (
    65, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/counch-shell.jpg'
    ), 
    "image/jpeg", 
    5, 
    "counch-shell",
    "shell sand"
  ), 
  (
    80, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/rainbow.jpg'
    ), 
    "image/jpeg", 
    5, 
    "rainbow",
    "rainbow water"
  ), 
  (
    95, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/roofs.jpg'
    ), 
    "image/jpeg", 
    5, 
    "roofs",
    "roofs snow"
  ), 
  (
    110, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/sail-boat.jpg'
    ), 
    "image/jpeg", 
    5, 
    "sail-boat",
    "spring rain"
  ), 
  (
    125, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/sailboats.jpg'
    ), 
    "image/jpeg", 
    5, 
    "sailboats",
    "water boat"
  ), 
  (
    140, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/seawave.jpg'
    ), 
    "image/jpeg", 
    5, 
    "seawave",
    "water wave"
  ), 
  (
    155, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/spring.jpg'
    ), 
    "image/jpeg", 
    5, 
    "spring",
    "sping rainbow"
  ), 
  (
    170, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/strawberries.jpg'
    ), 
    "image/jpeg", 
    5, 
    "strawberries",
    "food strawberries"
  ), 
  (
    185, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/summer.jpg'
    ), 
    "image/jpeg", 
    5, 
    "summer",
    "summer birds"
  ), 
  (
    200, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/vintagecar.jpg'
    ), 
    "image/jpeg", 
    5, 
    "vintagecar",
    "vintagecar cars"
  ), 
  (
    215, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(5)Hagerre/water-sport.jpg'
    ), 
    "image/jpeg", 
    5, 
    "water-sport",
    "water watersport"
  ), 
  (
    6, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/continents.jpg'
    ), 
    "image/jpeg", 
    6, 
    "continents",
    "continents map"
  ), 
  (
    21, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/cross.jpg'
    ), 
    "image/jpeg", 
    6, 
    "cross",
    "cross sun"
  ), 
  (
    36, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/cube.jpg'
    ), 
    "image/jpeg", 
    6, 
    "cube",
    "dice cube"
  ), 
  (
    51, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/fall.jpg'
    ), 
    "image/jpeg", 
    6, 
    "fall",
    "fall colors"
  ), 
  (
    66, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/fly-agaric.jpg'
    ), 
    "image/jpeg", 
    6, 
    "fly-agaric",
    "red mushrooms"
  ), 
  (
    81, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/giraffe.jpg'
    ), 
    "image/jpeg", 
    6, 
    "giraffe",
    "giraffe animal"
  ), 
  (
    96, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/horse-racing.jpg'
    ), 
    "image/jpeg", 
    6, 
    "horse-racing",
    "horseracing animal"
  ), 
  (
    111, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/lake.jpg'
    ), 
    "image/jpeg", 
    6, 
    "lake",
    "water hotairballoon"
  ), 
  (
    126, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/lichterkette.jpg'
    ), 
    "image/jpeg", 
    6, 
    "lichterkette",
    "lights colors"
  ), 
  (
    141, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/native.jpg'
    ), 
    "image/jpeg", 
    6, 
    "native",
    "nativeindians tribe"
  ), 
  (
    156, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/paintedglass.jpg'
    ), 
    "image/jpeg", 
    6, 
    "paintedglass",
    "art colors"
  ), 
  (
    171, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/pattern.jpg'
    ), 
    "image/jpeg", 
    6, 
    "pattern",
    "art design"
  ), 
  (
    186, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/picture.jpg'
    ), 
    "image/jpeg", 
    6, 
    "picture",
    "camera lens"
  ), 
  (
    201, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/skydivers.jpg'
    ), 
    "image/jpeg", 
    6, 
    "skydivers",
    "adventure skydivers"
  ), 
  (
    216, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(6)Mothesseze/spring-bird.jpg'
    ), 
    "image/jpeg", 
    6, 
    "spring-bird",
    "spring bird"
  ), 
  (
    7, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/australian-shepherd.jpg'
    ), 
    "image/jpeg", 
    7, 
    "australian-shepherd",
    "dogs animal"
  ), 
  (
    22, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/blush-roses.jpg'
    ), 
    "image/jpeg", 
    7, 
    "blush-roses",
    "flower roses"
  ), 
  (
    37, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/brown-butterfly.jpg'
    ), 
    "image/jpeg", 
    7, 
    "brown-butterfly",
    "flower butterfly"
  ), 
  (
    52, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/chocolates.jpg'
    ), 
    "image/jpeg", 
    7, 
    "chocolates",
    "chocolates food"
  ), 
  (
    67, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/continents.jpg'
    ), 
    "image/jpeg", 
    7, 
    "continents",
    "bluebackground world"
  ), 
  (
    82, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/daffodils.jpg'
    ), 
    "image/jpeg", 
    7, 
    "daffodils",
    "daffodils flower"
  ), 
  (
    97, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/divers.jpg'
    ), 
    "image/jpeg", 
    7, 
    "divers",
    "divers water"
  ), 
  (
    112, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/easter-statue.jpg'
    ), 
    "image/jpeg", 
    7, 
    "easter-statue",
    "easter bunny"
  ), 
  (
    127, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/easter-theme.jpg'
    ), 
    "image/jpeg", 
    7, 
    "easter-theme",
    "easter eggs"
  ), 
  (
    142, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/flower-cat.jpg'
    ), 
    "image/jpeg", 
    7, 
    "flower-cat",
    "cat animal"
  ), 
  (
    157, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/launch-pad.jpg'
    ), 
    "image/jpeg", 
    7, 
    "launch-pad",
    "rocket launchpad"
  ), 
  (
    172, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/palmtrees.jpg'
    ), 
    "image/jpeg", 
    7, 
    "palmtrees",
    "palmtrees water"
  ), 
  (
    187, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/pink-tulip.jpg'
    ), 
    "image/jpeg", 
    7, 
    "pink-tulip",
    "tulip flower"
  ), 
  (
    202, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/water-lily.jpg'
    ), 
    "image/jpeg", 
    7, 
    "water-lily",
    "lily flower"
  ), 
  (
    217, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(7)Girese/waterbunglows.jpg'
    ), 
    "image/jpeg", 
    7, 
    "waterbunglows",
    "water resort"
  ), 
  (
    8, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/buddha-statue.jpg'
    ), 
    "image/jpeg", 
    8, 
    "buddha-statue",
    "buddha statue"
  ), 
  (
    23, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/cham.jpg'
    ), 
    "image/jpeg", 
    8, 
    "cham",
    "places historicsite"
  ), 
  (
    38, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/christ.jpg'
    ), 
    "image/jpeg", 
    8, 
    "christ",
    "jesus christ"
  ), 
  (
    53, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/egg.jpg'
    ), 
    "image/jpeg", 
    8, 
    "egg",
    "egg colors"
  ), 
  (
    68, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/emperor-penguin.jpg'
    ), 
    "image/jpeg", 
    8, 
    "emperpr-penguin",
    "penguin animal"
  ), 
  (
    83, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/gold-honey.jpg'
    ), 
    "image/jpeg", 
    8, 
    "gold-honey",
    "honey food"
  ), 
  (
    98, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/lanterns.jpg'
    ), 
    "image/jpeg", 
    8, 
    "lanterns",
    "lanterns lights "
  ), 
  (
    113, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/mosque.jpg'
    ), 
    "image/jpeg", 
    8, 
    "mosque",
    "mosque islam"
  ), 
  (
    128, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/salad.jpg'
    ), 
    "image/jpeg", 
    8, 
    "salad",
    "food salad"
  ), 
  (
    143, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/scarves.jpg'
    ), 
    "image/jpeg", 
    8, 
    "scarves",
    "scarves colors"
  ), 
  (
    158, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/shish-kebab.jpg'
    ), 
    "image/jpeg", 
    8, 
    "shish-kebab",
    "food barbeque"
  ), 
  (
    173, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/spices.jpg'
    ), 
    "image/jpeg", 
    8, 
    "spices",
    "spices food"
  ), 
  (
    188, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/sultanahmet.jpg'
    ), 
    "image/jpeg", 
    8, 
    "sultanahmet",
    "mosque city"
  ), 
  (
    203, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/vegetables.jpg'
    ), 
    "image/jpeg", 
    8, 
    "vegetables",
    "vegetables food"
  ), 
  (
    218, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(8)Fement42/whitekitchen.jpg'
    ), 
    "image/jpeg", 
    8, 
    "whitekitchen",
    "white kitchen"
  ), 
  (
    9, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/brown-dog.jpg'
    ), 
    "image/jpeg", 
    9, 
    "brown-dog",
    "dog animal"
  ), 
  (
    24, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/cactus.jpg'
    ), 
    "image/jpeg", 
    9, 
    "cactus",
    "cactus sky"
  ), 
  (
    39, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/cuban-streets.jpg'
    ), 
    "image/jpeg", 
    9, 
    "cuban-streets",
    "cuba cars"
  ), 
  (
    54, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/graffiti-wall.jpg'
    ), 
    "image/jpeg", 
    9, 
    "graffiti-wall",
    "wall art"
  ), 
  (
    69, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/ice-cream-cone.jpg'
    ), 
    "image/jpeg", 
    9, 
    "ice-cream-cone",
    "icecream food"
  ), 
  (
    84, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/kitten.jpg'
    ), 
    "image/jpeg", 
    9, 
    "kitten",
    "kitten animal"
  ), 
  (
    99, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/marbles.jpg'
    ), 
    "image/jpeg", 
    9, 
    "marbles",
    "marbles colors"
  ), 
  (
    114, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/organizer.jpg'
    ), 
    "image/jpeg", 
    9, 
    "organizer",
    "flowers organizer"
  ), 
  (
    129, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/pancakes.jpg'
    ), 
    "image/jpeg", 
    9, 
    "pancakes",
    "food pancakes"
  ), 
  (
    144, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/purple-lantern.jpg'
    ), 
    "image/jpeg", 
    9, 
    "purple-lantern",
    "lantern lights"
  ), 
  (
    159, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/tajmahal.jpg'
    ), 
    "image/jpeg", 
    9, 
    "tajmahal",
    "tajmahal historicsite"
  ), 
  (
    174, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/tea-time.jpg'
    ), 
    "image/jpeg", 
    9, 
    "tea-time",
    "tea flowers"
  ), 
  (
    189, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/violin.jpg'
    ), 
    "image/jpeg", 
    9, 
    "violin",
    "violin musicalinstrument"
  ), 
  (
    204, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/white-puppy.jpg'
    ), 
    "image/jpeg", 
    9, 
    "white-puppy",
    "dog animal"
  ), 
  (
    219, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(9)Withey/wolf.jpg'
    ), 
    "image/jpeg", 
    9, 
    "wolf",
    "wolf animal"
  ), 
  (
    10, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/automobile.jpg'
    ), 
    "image/jpeg", 
    10, 
    "automobile",
    "car mercedes"
  ), 
  (
    25, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/chain-clock.jpg'
    ), 
    "image/jpeg", 
    10, 
    "chain-clock",
    "clock antique"
  ), 
  (
    40, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/chipmunk.jpg'
    ), 
    "image/jpeg", 
    10, 
    "chipmunk",
    "chipmunk animal"
  ), 
  (
    55, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/cute-bunny.jpg'
    ), 
    "image/jpeg", 
    10, 
    "cute-bunny",
    "bunny animal"
  ), 
  (
    70, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/dahlia.jpg'
    ), 
    "image/jpeg", 
    10, 
    "dahlia",
    "dahlia flower"
  ), 
  (
    85, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/dandelion.jpg'
    ), 
    "image/jpeg", 
    10, 
    "dandelion",
    "dandelion flower"
  ), 
  (
    100, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/fig.jpg'
    ), 
    "image/jpeg", 
    10, 
    "fig",
    "fig fruit"
  ), 
  (
    115, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/hedgehog.jpg'
    ), 
    "image/jpeg", 
    10, 
    "hedgehog",
    "hedgehog animal"
  ), 
  (
    130, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/oldtimer.jpg'
    ), 
    "image/jpeg", 
    10, 
    "oltimer",
    "vintagecars cars"
  ), 
  (
    145, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/pink-bee.jpg'
    ), 
    "image/jpeg", 
    10, 
    "pink-bee",
    "bee flower"
  ), 
  (
    160, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/pinkcar.jpg'
    ), 
    "image/jpeg", 
    10, 
    "pinkcar",
    "pinkcar car"
  ), 
  (
    175, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/raspberry.jpg'
    ), 
    "image/jpeg", 
    10, 
    "raspberry",
    "raspberry fruit"
  ), 
  (
    190, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/red-rose.jpg'
    ), 
    "image/jpeg", 
    10, 
    "red-rose",
    "rose flower"
  ), 
  (
    205, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/white-lily.jpg'
    ), 
    "image/jpeg", 
    10, 
    "white-lilly",
    "lily flower"
  ), 
  (
    220, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(10)Ther1993/white-ling.jpg'
    ), 
    "image/jpeg", 
    10, 
    "white-ling",
    "flower butterfly"
  ), 
  (
    11, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/bali.jpg'
    ), 
    "image/jpeg", 
    11, 
    "bali",
    "bali sunset"
  ), 
  (
    26, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/beverage.jpg'
    ), 
    "image/jpeg", 
    11, 
    "beverage",
    "tea drink"
  ), 
  (
    41, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/chinese-lantern.jpg'
    ), 
    "image/jpeg", 
    11, 
    "chinese-lantern",
    "lantern art"
  ), 
  (
    56, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/day-of-the-dead.jpg'
    ), 
    "image/jpeg", 
    11, 
    "day-of-the-dead",
    "art colors"
  ), 
  (
    71, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/dumplings.jpg'
    ), 
    "image/jpeg", 
    11, 
    "dumplings",
    "dumplings food"
  ), 
  (
    86, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/early-spring.jpg'
    ), 
    "image/jpeg", 
    11, 
    "early-spring",
    "flower spring"
  ), 
  (
    101, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/flower-branch.jpg'
    ), 
    "image/jpeg", 
    11, 
    "flower-branch",
    "flower spring"
  ), 
  (
    116, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/flower-buds.jpg'
    ), 
    "image/jpeg", 
    11, 
    "flower-buds",
    "flower spring"
  ), 
  (
    131, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/golden-gate-bridge.jpg'
    ), 
    "image/jpeg", 
    11, 
    "golden-gate-bridge",
    "goldengate bridge"
  ), 
  (
    146, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/hollywood-sign.jpg'
    ), 
    "image/jpeg", 
    11, 
    "hollywood-sign",
    "hollywood mountains"
  ), 
  (
    161, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/nature-scene.jpg'
    ), 
    "image/jpeg", 
    11, 
    "nature-scene",
    "butterfly flower"
  ), 
  (
    176, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/palm-trees.jpg'
    ), 
    "image/jpeg", 
    11, 
    "palm-trees",
    "palm sky"
  ), 
  (
    191, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/pumpkin-pie.jpg'
    ), 
    "image/jpeg", 
    11, 
    "pumpkin-pie",
    "pumpkinpie food"
  ), 
  (
    206, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/sport.jpg'
    ), 
    "image/jpeg", 
    11, 
    "sports",
    "running colors"
  ), 
  (
    221, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(11)Majessis/spring.jpg'
    ), 
    "image/jpeg", 
    11, 
    "spring",
    "spring flower"
  ), 
  (
    12, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/amuse.jpg'
    ), 
    "image/jpeg", 
    12, 
    "amuse",
    "ride carousel"
  ), 
  (
    27, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/amusement.jpg'
    ), 
    "image/jpeg", 
    12, 
    "amusement",
    "amusementpark rides"
  ), 
  (
    42, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/anise.jpg'
    ), 
    "image/jpeg", 
    12, 
    "anise",
    "spices lemonslice"
  ), 
  (
    57, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/beijing.jpg'
    ), 
    "image/jpeg", 
    12, 
    "bejing",
    "beijing place"
  ), 
  (
    72, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/birthday-cake.jpg'
    ), 
    "image/jpeg", 
    12, 
    "birthday-cake",
    "cake food"
  ), 
  (
    87, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/bloom.jpg'
    ), 
    "image/jpeg", 
    12, 
    "bloom",
    "flower spring"
  ), 
  (
    102, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/bread.jpg'
    ), 
    "image/jpeg", 
    12, 
    "bread",
    "bread food"
  ), 
  (
    117, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/christmas-tree.jpg'
    ), 
    "image/jpeg", 
    12, 
    "christmas-tree",
    "christmastree ornaments"
  ), 
  (
    132, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/classical.jpg'
    ), 
    "image/jpeg", 
    12, 
    "classical",
    "water beach"
  ), 
  (
    147, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/colorful-lanterns.jpg'
    ), 
    "image/jpeg", 
    12, 
    "colorful-lanterns",
    "colors lanterns"
  ), 
  (
    162, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/cupcakes.jpg'
    ), 
    "image/jpeg", 
    12, 
    "cupcakes",
    "cupcake food"
  ), 
  (
    177, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/dragonfruit.jpg'
    ), 
    "image/jpeg", 
    12, 
    "dragonfruit",
    "dragonfruit fruit"
  ), 
  (
    192, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/library.jpg'
    ), 
    "image/jpeg", 
    12, 
    "library",
    "books library"
  ), 
  (
    207, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/red-skates.jpg'
    ), 
    "image/jpeg", 
    12, 
    "red-skates",
    "skates skating"
  ), 
  (
    222, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(12)Hertake93/tulips.jpg'
    ), 
    "image/jpeg", 
    12, 
    "tulips",
    "tulips flower"
  ), 
  (
    13, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/basketball.jpg'
    ), 
    "image/jpeg", 
    13, 
    "basketball",
    "basketball sport"
  ), 
  (
    28, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/bowling.jpg'
    ), 
    "image/jpeg", 
    13, 
    "bowling",
    "bowling game"
  ), 
  (
    43, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/cosmetic-oil.jpg'
    ), 
    "image/jpeg", 
    13, 
    "cosmetic-oil",
    "oil flower"
  ), 
  (
    58, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/ferris-wheel.jpg'
    ), 
    "image/jpeg", 
    13, 
    "ferris-wheel",
    "ferriswheel ride"
  ), 
  (
    73, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/golf-stick.jpg'
    ), 
    "image/jpeg", 
    13, 
    "golf-stick",
    "golf sport"
  ), 
  (
    88, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/greece.jpg'
    ), 
    "image/jpeg", 
    13, 
    "greece",
    "greece historicsite"
  ), 
  (
    103, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/herbs.jpg'
    ), 
    "herbs",
    "image/jpeg", 
    13, 
    "herbs spices"
  ), 
  (
    118, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/lavender.jpg'
    ), 
    "lavender",
    "image/jpeg", 
    13, 
    "flower lavender"
  ), 
  (
    133, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/orchids.jpg'
    ), 
    "orchids",
    "image/jpeg", 
    13, 
    "orchids flower"
  ), 
  (
    148, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/snooker.jpg'
    ), 
    "image/jpeg", 
    13, 
    "snooker",
    "billiards balls"
  ), 
  (
    163, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/surfer-wave.jpg'
    ), 
    "image/jpeg", 
    13, 
    "surfer-wave",
    "surfer wave"
  ), 
  (
    178, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/the-christmas-tree.jpg'
    ), 
    "image/jpeg", 
    13, 
    "the-christmas-tree",
    "christmastree ornaments"
  ), 
  (
    193, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/the-roller-coaster.jpg'
    ), 
    "image/jpeg", 
    13, 
    "the-roller-coaster",
    "rollercoaster rides"
  ), 
  (
    208, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/video-game.jpg'
    ), 
    "image/jpeg", 
    13, 
    "video-game",
    "gamecontroller techdevice"
  ), 
  (
    223, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(13)Adven1991/zebra-family.jpg'
    ), 
    "image/jpeg", 
    13, 
    "zebra-family",
    "zebras animal"
  ), 
  (
    14, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/athletes.jpg'
    ), 
    "image/jpeg", 
    14, 
    "athletes",
    "sport athletes"
  ), 
  (
    29, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/ball.jpg'
    ), 
    "image/jpeg", 
    14, 
    "ball",
    "pebbles woman"
  ), 
  (
    44, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/beverage.jpg'
    ), 
    "image/jpeg", 
    14, 
    "beverage",
    "drink coffee"
  ), 
  (
    59, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/book.jpg'
    ), 
    "image/jpeg", 
    14, 
    "book",
    "book object"
  ), 
  (
    74, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/breakfast-toast.jpg'
    ), 
    "image/jpeg", 
    14, 
    "breakfast-toast",
    "toast food"
  ), 
  (
    89, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/brush.jpg'
    ), 
    "image/jpeg", 
    14, 
    "brush",
    "paint colors"
  ), 
  (
    104, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/buttons.jpg'
    ), 
    "image/jpeg", 
    14, 
    "buttons",
    "buttons colors"
  ), 
  (
    119, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/candle.jpg'
    ), 
    "image/jpeg", 
    14, 
    "candle",
    "candle coffee"
  ), 
  (
    134, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/embroidery.jpg'
    ), 
    "image/jpeg", 
    14, 
    "embroidery",
    "art embroidery"
  ), 
  (
    149, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/love-key.jpg'
    ), 
    "image/jpeg", 
    14, 
    "love-key",
    "key heart"
  ), 
  (
    164, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/mezcal.jpg'
    ), 
    "image/jpeg", 
    14, 
    "mezcal",
    "drink mezcal"
  ), 
  (
    179, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/sand.jpg'
    ), 
    "image/jpeg", 
    14, 
    "sand",
    "sand water"
  ), 
  (
    194, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/soap-bubble.jpg'
    ), 
    "image/jpeg", 
    14, 
    "soap-bubble",
    "ball soapbubble"
  ), 
  (
    209, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/taco.jpg'
    ), 
    "image/jpeg", 
    14, 
    "taco",
    "taco food"
  ), 
  (
    224, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(14)Highted/white-stones.jpg'
    ), 
    "image/jpeg", 
    14, 
    "white-stones",
    "water sand"
  ), 
  (
    15, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/carnival.jpg'
    ), 
    "image/jpeg", 
    15, 
    "carnival",
    "carnival colors"
  ), 
  (
    30, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/cocoa.jpg'
    ), 
    "image/jpeg", 
    15, 
    "cocoa",
    "drink hotcocoa"
  ), 
  (
    45, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/fiat.jpg'
    ), 
    "image/jpeg", 
    15, 
    "fiat",
    "fiat car"
  ), 
  (
    60, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/happy-teady.jpg'
    ), 
    "image/jpeg", 
    15, 
    "happy-teady",
    "teddy toy"
  ), 
  (
    75, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/idol.jpg'
    ), 
    "image/jpeg", 
    15, 
    "idol",
    "idol statue"
  ), 
  (
    90, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/justice.jpg'
    ), 
    "image/jpeg", 
    15, 
    "justice",
    "justice statue"
  ), 
  (
    105, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/light-bulb.jpg'
    ), 
    "image/jpeg", 
    15, 
    "light-bulb",
    "light bulbs"
  ), 
  (
    120, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/macaroons.jpg'
    ), 
    "image/jpeg", 
    15, 
    "macaroons",
    "macaroons food"
  ), 
  (
    135, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/mask.jpg'
    ), 
    "image/jpeg", 
    15, 
    "mask",
    "mask art"
  ), 
  (
    150, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/paris.jpg'
    ), 
    "image/jpeg", 
    15, 
    "paris",
    "ferriswheel ride"
  ), 
  (
    165, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/pink-wine.jpg'
    ), 
    "image/jpeg", 
    15, 
    "pink-wine",
    "wine drink"
  ), 
  (
    180, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/praline-sweet.jpg'
    ), 
    "image/jpeg", 
    15, 
    "praline-sweet",
    "food chocolate"
  ), 
  (
    195, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/sad-red-rose.jpg'
    ), 
    "image/jpeg", 
    15, 
    "sad-red-rose",
    "rose flower"
  ), 
  (
    210, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/sombrero.jpg'
    ), 
    "image/jpeg", 
    15, 
    "sombrero",
    "hat sombrero"
  ), 
  (
    225, 
    LOAD_FILE(
      '/home/vagrant/2019-team-06f/test.images/(15)Obect1934/white-car.jpg'
    ), 
    "image/jpeg", 
    15, 
    "white-car",
    "car jeep"
  );
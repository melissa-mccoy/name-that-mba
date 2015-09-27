# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db=>seed (or created alongside the db with db=>setup).
# #
# # Examples=>
# #
# #   cities = City.create([{ name=> 'Chicago' }, { name=> 'Copenhagen' }])
# #   Mayor.create(name=> 'Emanuel', city=> cities.first)
require 'csv'
# READ FROM CSV & SEED DB
CSV.foreach("fb_members_final.csv","r:windows-1250") do |row|
   name = row[0]
   facebook_id = row[1]
   Student.create(name: name, facebook_id: facebook_id)
end

# TURN FB RESULTS INTO CSV
# students = Student.create([
#     {
#       "name"=> "William Steel",

#       "facebook_id"=> "890559590977974"
#     },
#     {
#       "name"=> "Haruyuki Oku",

#       "facebook_id"=> "1017239048317331"
#     },
#     {
#       "name"=> "Adam Storck",

#       "facebook_id"=> "10102358164416428"
#     },
#     {
#       "name"=> "Louise Obermayer",

#       "facebook_id"=> "10204391618063107"
#     },
#     {
#       "name"=> "Deborah Jlm",

#       "facebook_id"=> "812923108767"
#     },
#     {
#       "name"=> "Yirong Ni",

#       "facebook_id"=> "154148071597753"
#     },
#     {
#       "name"=> "Yasmin Kumi",

#       "facebook_id"=> "10152946566898551"
#     },
#     {
#       "name"=> "Karan Kamal",

#       "facebook_id"=> "10203023388642614"
#     },
#     {
#       "name"=> "Monika Mečević",

#       "facebook_id"=> "10153448335292589"
#     },
#     {
#       "name"=> "Ruvin Rafailov",

#       "facebook_id"=> "10208366449345841"
#     },
#     {
#       "name"=> "Varun Tandon",

#       "facebook_id"=> "10101486007526527"
#     },
#     {
#       "name"=> "Angela Qi",

#       "facebook_id"=> "10153784207339750"
#     },
#     {
#       "name"=> "Erik Christopherson",

#       "facebook_id"=> "149767438705037"
#     },
#     {
#       "name"=> "Sonjia Yan",

#       "facebook_id"=> "10152149717325911"
#     },
#     {
#       "name"=> "Mark Brown",

#       "facebook_id"=> "10153196741732861"
#     },
#     {
#       "name"=> "Danielle Ashley",

#       "facebook_id"=> "10153964953214045"
#     },
#     {
#       "name"=> "Rachel Hoover",

#       "facebook_id"=> "10152997069596114"
#     },
#     {
#       "name"=> "Lyn Hill",

#       "facebook_id"=> "10152670506347202"
#     },
#     {
#       "name"=> "Shelley Pearson",

#       "facebook_id"=> "10202035011380171"
#     },
#     {
#       "name"=> "Louise Williams",

#       "facebook_id"=> "10155532172075035"
#     },
#     {
#       "name"=> "Alberto Cucca",

#       "facebook_id"=> "10207689641108777"
#     },
#     {
#       "name"=> "Nathan 'Hank' Herold",

#       "facebook_id"=> "10153664524138188"
#     },
#     {
#       "name"=> "Mariko Nakayama",

#       "facebook_id"=> "10102247187360447"
#     },
#     {
#       "name"=> "Eve Binder",

#       "facebook_id"=> "10203833110373099"
#     },
#     {
#       "name"=> "Joshua Abreu",

#       "facebook_id"=> "889369564460352"
#     },
#     {
#       "name"=> "Andrea Wong",

#       "facebook_id"=> "10100758004968775"
#     },
#     {
#       "name"=> "Denise Hearn",

#       "facebook_id"=> "10101830555918153"
#     },
#     {
#       "name"=> "Andrew Graham",

#       "facebook_id"=> "10207774323181852"
#     },
#     {
#       "name"=> "Sourav Sen",

#       "facebook_id"=> "10153248418832782"
#     },
#     {
#       "name"=> "Bobojon N",

#       "facebook_id"=> "10152676707904194"
#     },
#     {
#       "name"=> "Anna Tripodi",

#       "facebook_id"=> "10203222962997381"
#     },
#     {
#       "name"=> "Sabrina Pirsan",

#       "facebook_id"=> "10201713700350737"
#     },
#     {
#       "name"=> "Kaushal Inna",

#       "facebook_id"=> "10153083011150811"
#     },
#     {
#       "name"=> "Bo Pang",

#       "facebook_id"=> "10208017205938153"
#     },
#     {
#       "name"=> "Kath Chau",

#       "facebook_id"=> "10151984528536507"
#     },
#     {
#       "name"=> "Anna Bishop Rehrig",

#       "facebook_id"=> "10100533713141410"
#     },
#     {
#       "name"=> "Mihir Patki",

#       "facebook_id"=> "10152421330689994"
#     },
#     {
#       "name"=> "Michaelia Verbeek",

#       "facebook_id"=> "10203122248937374"
#     },
#     {
#       "name"=> "Chelsea Stein",

#       "facebook_id"=> "10100597550311496"
#     },
#     {
#       "name"=> "Helena Passos",

#       "facebook_id"=> "10153704110736350"
#     },
#     {
#       "name"=> "Sanders Lazier",

#       "facebook_id"=> "10204326076946231"
#     },
#     {
#       "name"=> "Mark Herring",

#       "facebook_id"=> "10156119620185305"
#     },
#     {
#       "name"=> "Pauline Wu",

#       "facebook_id"=> "10152458432333456"
#     },
#     {
#       "name"=> "Nadia Khamis",

#       "facebook_id"=> "10100458533177636"
#     },
#     {
#       "name"=> "Romy Ehrlich",

#       "facebook_id"=> "10155562072105220"
#     },
#     {
#       "name"=> "Lois Kirby",

#       "facebook_id"=> "1663603203883470"
#     },
#     {
#       "name"=> "Mireille van Dongen",

#       "facebook_id"=> "982547481803627"
#     },
#     {
#       "name"=> "Wataru Matsumoto",

#       "facebook_id"=> "912649305487189"
#     },
#     {
#       "name"=> "Su Lee",

#       "facebook_id"=> "909651660802"
#     },
#     {
#       "name"=> "Akash Jain",

#       "facebook_id"=> "10156163986800094"
#     },
#     {
#       "name"=> "Laura Pittman",

#       "facebook_id"=> "10153268593307464"
#     },
#     {
#       "name"=> "Morgan Gerlak",

#       "facebook_id"=> "10202074599206418"
#     },
#     {
#       "name"=> "Adrian Johnson",

#       "facebook_id"=> "10100145831025541"
#     },
#     {
#       "name"=> "Juan Gabriel Herrera Indacochea",

#       "facebook_id"=> "10153115304465695"
#     },
#     {
#       "name"=> "Faisal Azim",

#       "facebook_id"=> "10154042982400109"
#     },
#     {
#       "name"=> "Jessie Nemzoff",

#       "facebook_id"=> "10101583232526227"
#     },
#     {
#       "name"=> "Andrew Dale",

#       "facebook_id"=> "10153237439792635"
#     },
#     {
#       "name"=> "Yurie Fukuda",

#       "facebook_id"=> "963592473659388"
#     },
#     {
#       "name"=> "Euan Matthews",

#       "facebook_id"=> "142639852752399"
#     },
#     {
#       "name"=> "Matthew de la Hey",

#       "facebook_id"=> "10203361069531783"
#     },
#     {
#       "name"=> "James Murray",

#       "facebook_id"=> "1584167438510037"
#     },
#     {
#       "name"=> "John Gardner Long",

#       "facebook_id"=> "10203645261151406"
#     },
#     {
#       "name"=> "Aslı Üvez",

#       "facebook_id"=> "544317379049842"
#     },
#     {
#       "name"=> "Alex MA",

#       "facebook_id"=> "10206548733976722"
#     },
#     {
#       "name"=> "Nick Panza",

#       "facebook_id"=> "10100801987392634"
#     },
#     {
#       "name"=> "Gregory Kahn",

#       "facebook_id"=> "10154863077985705"
#     },
#     {
#       "name"=> "Vana Cristina",

#       "facebook_id"=> "10101579413743995"
#     },
#     {
#       "name"=> "Chau-Jean Lin",

#       "facebook_id"=> "10205143050068724"
#     },
#     {
#       "name"=> "Iris Wen",

#       "facebook_id"=> "10102241678110895"
#     },
#     {
#       "name"=> "Nikolay Mikhaylyuk",

#       "facebook_id"=> "873395696023765"
#     },
#     {
#       "name"=> "Jason Cape",

#       "facebook_id"=> "10152756901287687"
#     },
#     {
#       "name"=> "Wayne Viegas",

#       "facebook_id"=> "10203754452372177"
#     },
#     {
#       "name"=> "Lilit Mughalyan",

#       "facebook_id"=> "461629573983330"
#     },
#     {
#       "name"=> "Vikas Bardia",

#       "facebook_id"=> "930177215462"
#     },
#     {
#       "name"=> "Anupam Mukherjee",

#       "facebook_id"=> "10153054829704713"
#     },
#     {
#       "name"=> "Wan Sayuti",

#       "facebook_id"=> "10152751529007835"
#     },
#     {
#       "name"=> "Hans-Jakob Lothe",

#       "facebook_id"=> "10155473728240461"
#     },
#     {
#       "name"=> "Dalumuzi Happy Mhlanga",

#       "facebook_id"=> "10154327028315173"
#     },
#     {
#       "name"=> "Rob Chmielewski",

#       "facebook_id"=> "10104427635290200"
#     },
#     {
#       "name"=> "Katie Leininger",

#       "facebook_id"=> "10155115701195374"
#     },
#     {
#       "name"=> "Nandini Rao",

#       "facebook_id"=> "969785506397866"
#     },
#     {
#       "name"=> "Haider Agha",

#       "facebook_id"=> "159835031026936"
#     },
#     {
#       "name"=> "Lorraine Wright",

#       "facebook_id"=> "10153334667652627"
#     },
#     {
#       "name"=> "Jin Wang",

#       "facebook_id"=> "153593564987183"
#     },
#     {
#       "name"=> "Maria Del Mar Rodriguez",

#       "facebook_id"=> "10153143261847197"
#     },
#     {
#       "name"=> "Nidhi Thachankary",

#       "facebook_id"=> "10152729014376218"
#     },
#     {
#       "name"=> "M Shoaib Khan",

#       "facebook_id"=> "168904773449057"
#     },
#     {
#       "name"=> "Avinash Nanda",

#       "facebook_id"=> "10152357354980194"
#     },
#     {
#       "name"=> "Nikolina Peričová",

#       "facebook_id"=> "10203346192927471"
#     },
#     {
#       "name"=> "Nik Hazell",

#       "facebook_id"=> "10155331872935557"
#     },
#     {
#       "name"=> "Sualeha Ansari",

#       "facebook_id"=> "787386668882"
#     },
#     {
#       "name"=> "Marie-Anne Bazerghi",

#       "facebook_id"=> "10153734003078676"
#     },
#     {
#       "name"=> "Daniel Schacter",

#       "facebook_id"=> "10153229464299666"
#     },
#     {
#       "name"=> "Jeremiah Loh",

#       "facebook_id"=> "10153546002914845"
#     },
#     {
#       "name"=> "Johan Krynauw",

#       "facebook_id"=> "10153569997440435"
#     },
#     {
#       "name"=> "Philip Qiming Li",

#       "facebook_id"=> "10152594582552751"
#     },
#     {
#       "name"=> "Ryo Kobayashi",

#       "facebook_id"=> "10207292331364524"
#     },
#     {
#       "name"=> "Gautam Mandhian",

#       "facebook_id"=> "10102803289377419"
#     },
#     {
#       "name"=> "Alyssa Mortensen Lindström",

#       "facebook_id"=> "10205067424380963"
#     },
#     {
#       "name"=> "Ana Maria Moreno",

#       "facebook_id"=> "10101727402188967"
#     },
#     {
#       "name"=> "Cedric Sequeira",

#       "facebook_id"=> "10152766185946472"
#     },
#     {
#       "name"=> "Trishna Rao",

#       "facebook_id"=> "10207305272649871"
#     },
#     {
#       "name"=> "Usman Ul Haque",

#       "facebook_id"=> "10152690496122861"
#     },
#     {
#       "name"=> "Pieran Maru",

#       "facebook_id"=> "10152124639281246"
#     },
#     {
#       "name"=> "Gustavo Haber",

#       "facebook_id"=> "170732936598370"
#     },
#     {
#       "name"=> "Priscilla Lam",

#       "facebook_id"=> "10152661721177126"
#     },
#     {
#       "name"=> "Devin O'Brien",

#       "facebook_id"=> "10154607345575066"
#     },
#     {
#       "name"=> "Kritika Agrawal",

#       "facebook_id"=> "10155746369100425"
#     },
#     {
#       "name"=> "Alexander Jones-Davies",

#       "facebook_id"=> "10153567907091970"
#     },
#     {
#       "name"=> "Cara Volpe",

#       "facebook_id"=> "10101917344253556"
#     },
#     {
#       "name"=> "Tom Dopstadt",

#       "facebook_id"=> "10203393194350109"
#     },
#     {
#       "name"=> "Mudit Sharma",

#       "facebook_id"=> "10154897985005527"
#     },
#     {
#       "name"=> "Nitin Jain",

#       "facebook_id"=> "813749727052"
#     },
#     {
#       "name"=> "Hanqiong Hu",

#       "facebook_id"=> "10206382447852365"
#     },
#     {
#       "name"=> "Connie Cha",

#       "facebook_id"=> "10152412584981847"
#     },
#     {
#       "name"=> "Andrew Stein",

#       "facebook_id"=> "1495202084138314"
#     },
#     {
#       "name"=> "Mike K'Ogutu",

#       "facebook_id"=> "10156097564425066"
#     },
#     {
#       "name"=> "Spencer Howell",

#       "facebook_id"=> "10205639174953442"
#     },
#     {
#       "name"=> "Omair Zahid",

#       "facebook_id"=> "163924983949153"
#     },
#     {
#       "name"=> "Anup Jacob",

#       "facebook_id"=> "10152904735673359"
#     },
#     {
#       "name"=> "Shailendra Sason",

#       "facebook_id"=> "10204495966111938"
#     },
#     {
#       "name"=> "Sixuan Ren",

#       "facebook_id"=> "10153027403475033"
#     },
#     {
#       "name"=> "Bo-Erik Abrahamsson",

#       "facebook_id"=> "10152612633241582"
#     },
#     {
#       "name"=> "Daniel Drummer",

#       "facebook_id"=> "10204869888408693"
#     },
#     {
#       "name"=> "Vikram Dalal",

#       "facebook_id"=> "883185898434166"
#     },
#     {
#       "name"=> "周晶",

#       "facebook_id"=> "169937163344720"
#     },
#     {
#       "name"=> "Alex Shuai Liu",

#       "facebook_id"=> "995045897221421"
#     },
#     {
#       "name"=> "Billy Whalen",

#       "facebook_id"=> "10104271833692932"
#     },
#     {
#       "name"=> "Aika Ussenova",

#       "facebook_id"=> "10156127260135188"
#     },
#     {
#       "name"=> "Anne Vos",

#       "facebook_id"=> "10207968544154174"
#     },
#     {
#       "name"=> "Nathan Lambert",

#       "facebook_id"=> "10152588358090095"
#     },
#     {
#       "name"=> "Eugene Yang",

#       "facebook_id"=> "10154769109075478"
#     },
#     {
#       "name"=> "Victor Repetsky",

#       "facebook_id"=> "842490389134859"
#     },
#     {
#       "name"=> "Javier Kwon",

#       "facebook_id"=> "10153342975620452"
#     },
#     {
#       "name"=> "Daniel Price",

#       "facebook_id"=> "10152776150209352"
#     },
#     {
#       "name"=> "Kareenzinho Edwards",

#       "facebook_id"=> "10154631707810195"
#     },
#     {
#       "name"=> "Eva Qin",

#       "facebook_id"=> "478989762278187"
#     },
#     {
#       "name"=> "Ronye Egborge",

#       "facebook_id"=> "10156082716380023"
#     },
#     {
#       "name"=> "Evan Steiner",

#       "facebook_id"=> "10154368035775089"
#     },
#     {
#       "name"=> "Myungjoon David Kim",

#       "facebook_id"=> "10156044189550048"
#     },
#     {
#       "name"=> "Phil Cole",

#       "facebook_id"=> "1477701292558237"
#     },
#     {
#       "name"=> "Umar Ilyas",

#       "facebook_id"=> "10153711335200452"
#     },
#     {
#       "name"=> "Ryan Kahn",

#       "facebook_id"=> "10152329198528684"
#     },
#     {
#       "name"=> "Asad Aslam",

#       "facebook_id"=> "10156172754070360"
#     },
#     {
#       "name"=> "Aiwanose Odafen",

#       "facebook_id"=> "10203285726520664"
#     },
#     {
#       "name"=> "Songqiao Yao",

#       "facebook_id"=> "10206546953926753"
#     },
#     {
#       "name"=> "Jessica Shi",

#       "facebook_id"=> "505963769558669"
#     },
#     {
#       "name"=> "Anastasiya Prymovych",

#       "facebook_id"=> "10156082499165523"
#     },
#     {
#       "name"=> "Niklas Katter",

#       "facebook_id"=> "10153197147167404"
#     },
#     {
#       "name"=> "María L Rodríguez Arteaga",

#       "facebook_id"=> "672921379871"
#     },
#     {
#       "name"=> "Andrea Lo",

#       "facebook_id"=> "10103066745174893"
#     },
#     {
#       "name"=> "Jason Day",

#       "facebook_id"=> "10152986795226566"
#     },
#     {
#       "name"=> "Andy Maitre Warriner",

#       "facebook_id"=> "10152593807051163"
#     },
#     {
#       "name"=> "Ihenetu-Geoffrey Nedulawz",

#       "facebook_id"=> "10152974027161256"
#     },
#     {
#       "name"=> "Scott Gabrielson",

#       "facebook_id"=> "10105492379589210"
#     },
#     {
#       "name"=> "Sherry Wan",

#       "facebook_id"=> "10153401027540639"
#     },
#     {
#       "name"=> "Martin Schild",

#       "facebook_id"=> "10153332351766171"
#     },
#     {
#       "name"=> "Shirley Okwi",

#       "facebook_id"=> "10153495346347232"
#     },
#     {
#       "name"=> "Priyanka Pal",

#       "facebook_id"=> "10153179283677963"
#     },
#     {
#       "name"=> "Timar Stay Focused Jackson",

#       "facebook_id"=> "10152853469373861"
#     },
#     {
#       "name"=> "Arpita Sinha",

#       "facebook_id"=> "10154907640135023"
#     },
#     {
#       "name"=> "Wayne Moodaley",

#       "facebook_id"=> "10155813887745532"
#     },
#     {
#       "name"=> "Dan Ryan",

#       "facebook_id"=> "10154155791855601"
#     },
#     {
#       "name"=> "Tornike Kordzaia",

#       "facebook_id"=> "10204500366731351"
#     },
#     {
#       "name"=> "Melissa McCoy",

#       "facebook_id"=> "3464062049901"
#     },
#     {
#       "name"=> "Rucha Naik Daryani",

#       "facebook_id"=> "10100177244510112"
#     },
#     {
#       "name"=> "Phoebe Ai",

#       "facebook_id"=> "10205822044683638"
#     },
#     {
#       "name"=> "Ian Ng Yihan",

#       "facebook_id"=> "10153317078272874"
#     },
#     {
#       "name"=> "Alvaro Andreu",

#       "facebook_id"=> "10154863170600032"
#     },
#     {
#       "name"=> "Jessica Penberthy",

#       "facebook_id"=> "10155006157820037"
#     },
#     {
#       "name"=> "Shaugh Alshafei",

#       "facebook_id"=> "10101566511714897"
#     },
#     {
#       "name"=> "Yijing Kelly Pan",

#       "facebook_id"=> "748594915246681"
#     },
#     {
#       "name"=> "Nicholas Martinez",

#       "facebook_id"=> "10152442700772682"
#     },
#     {
#       "name"=> "Peter Polydor",

#       "facebook_id"=> "822386942956"
#     },
#     {
#       "name"=> "Ananya Joshi",

#       "facebook_id"=> "10153174824924303"
#     },
#     {
#       "name"=> "Mark Freestone",

#       "facebook_id"=> "10154413358454572"
#     },
#     {
#       "name"=> "Penny Pan",

#       "facebook_id"=> "10101063849645815"
#     },
#     {
#       "name"=> "Alex Terblanché",

#       "facebook_id"=> "1022722174434761"
#     },
#     {
#       "name"=> "Tarek M. El Banna",

#       "facebook_id"=> "10153399597082433"
#     },
#     {
#       "name"=> "Saurabh Saraogi",

#       "facebook_id"=> "10152665146866637"
#     },
#     {
#       "name"=> "Santiago Posada",

#       "facebook_id"=> "10100231020944090"
#     },
#     {
#       "name"=> "Joyeeta Das",

#       "facebook_id"=> "10152016391825423"
#     },
#     {
#       "name"=> "Adam McKay",

#       "facebook_id"=> "10203844276041515"
#     },
#     {
#       "name"=> "Pratik Panchmatia",

#       "facebook_id"=> "10153308750308216"
#     },
#     {
#       "name"=> "Swati Poddar",

#       "facebook_id"=> "10151927366466916"
#     },
#     {
#       "name"=> "Andrea Coulis",

#       "facebook_id"=> "10106255515728199"
#     },
#     {
#       "name"=> "Julian Brown",

#       "facebook_id"=> "10152943969165649"
#     },
#     {
#       "name"=> "Pip Wheaton",

#       "facebook_id"=> "10155069296750533"
#     },
#     {
#       "name"=> "Andrew Kent Gee",

#       "facebook_id"=> "742212759155114"
#     },
#     {
#       "name"=> "Caroline Fürstenberg",

#       "facebook_id"=> "10153698513843447"
#     },
#     {
#       "name"=> "Sean F Walsh",

#       "facebook_id"=> "10100409265995686"
#     },
#     {
#       "name"=> "Adnan Al-Khatib",

#       "facebook_id"=> "274043899445338"
#     },
#     {
#       "name"=> "Rona Peltzer Aydin",

#       "facebook_id"=> "10100393144482199"
#     },
#     {
#       "name"=> "Peter Doelman",

#       "facebook_id"=> "10102210627681337"
#     },
#     {
#       "name"=> "Sachhyam Regmi",

#       "facebook_id"=> "773736993094"
#     },
#     {
#       "name"=> "Senthil Nathan T",

#       "facebook_id"=> "928613860539931"
#     },
#     {
#       "name"=> "Elena Sachkova",

#       "facebook_id"=> "741620072600670"
#     },
#     {
#       "name"=> "Pavel Shulga",

#       "facebook_id"=> "957177144321650"
#     },
#     {
#       "name"=> "Juliana Buelvas",

#       "facebook_id"=> "10152905249783111"
#     },
#     {
#       "name"=> "Nadia Haven",

#       "facebook_id"=> "10105630454301309"
#     },
#     {
#       "name"=> "Nalin Raghav Ramkumar",

#       "facebook_id"=> "10155401885350012"
#     },
#     {
#       "name"=> "Meiling Fang",

#       "facebook_id"=> "470300109800174"
#     },
#     {
#       "name"=> "Ng Eu Gin",

#       "facebook_id"=> "10152742213382187"
#     },
#     {
#       "name"=> "Khurram Waqas Malik",

#       "facebook_id"=> "10100861160669280"
#     },
#     {
#       "name"=> "Colleen Ritzau Leth",

#       "facebook_id"=> "10101227986407192"
#     },
#     {
#       "name"=> "Marina Nuri",

#       "facebook_id"=> "10152747239817026"
#     },
#     {
#       "name"=> "Caryn Parmentier Davies",

#       "facebook_id"=> "10101363034664401"
#     },
#     {
#       "name"=> "Ruvimbo Nyangoni",

#       "facebook_id"=> "800086556766497"
#     },
#     {
#       "name"=> "Aniketh Mj",

#       "facebook_id"=> "10202039291664357"
#     },
#     {
#       "name"=> "Jeremy Lindström",

#       "facebook_id"=> "10153049434509595"
#     },
#     {
#       "name"=> "Mary Yan",

#       "facebook_id"=> "10204514380639050"
#     },
#     {
#       "name"=> "Shuhe Huang",

#       "facebook_id"=> "1090229151004655"
#     },
#     {
#       "name"=> "Alexa Roscoe",

#       "facebook_id"=> "10102454244496242"
#     },
#     {
#       "name"=> "Ben McSweeney",

#       "facebook_id"=> "10152778416643927"
#     },
#     {
#       "name"=> "Ant Ngo",

#       "facebook_id"=> "10152744156121491"
#     },
#     {
#       "name"=> "Hargo Kalra",

#       "facebook_id"=> "10105116299207239"
#     },
#     {
#       "name"=> "Andrew Lundeen",

#       "facebook_id"=> "10153266794792424"
#     },
#     {
#       "name"=> "Amidou Fonso",

#       "facebook_id"=> "10207793618416189"
#     },
#     {
#       "name"=> "Son Ia",

#       "facebook_id"=> "967381213320115"
#     },
#     {
#       "name"=> "Bojana Obradović",

#       "facebook_id"=> "10152987656094337"
#     },
#     {
#       "name"=> "Kate Jarvis",

#       "facebook_id"=> "10153252143305318"
#     },
#     {
#       "name"=> "Stephen Robert Morse",

#       "facebook_id"=> "10101197814706527"
#     },
#     {
#       "name"=> "Frankie Fredericks",

#       "facebook_id"=> "10103745449660659"
#     },
#     {
#       "name"=> "Ren Liao",

#       "facebook_id"=> "10155529790905554"
#     },
#     {
#       "name"=> "Michał Jbkjbkjbb",

#       "facebook_id"=> "10152419317112918"
#     },
#     {
#       "name"=> "Sang Gook Kim",

#       "facebook_id"=> "1505605576427700"
#     },
#     {
#       "name"=> "Miguel Baptista",

#       "facebook_id"=> "869319873091491"
#     },
#     {
#       "name"=> "Anne Malithi Fernando",

#       "facebook_id"=> "10152626936368474"
#     },
#     {
#       "name"=> "Alberto Ak Meneghello",

#       "facebook_id"=> "10207541950249458"
#     },
#     {
#       "name"=> "Ambesh Tiwari",

#       "facebook_id"=> "10154452601030632"
#     },
#     {
#       "name"=> "José Miguel Alfaro",

#       "facebook_id"=> "10152409651240933"
#     },
#     {
#       "name"=> "Rey Castellanos",

#       "facebook_id"=> "10152677946466601"
#     },
#     {
#       "name"=> "Oluwagbemi Malomo",

#       "facebook_id"=> "10154925064575023"
#     },
#     {
#       "name"=> "Heloïse Greeff",

#       "facebook_id"=> "10153355239581096"
#     },
#     {
#       "name"=> "Philip Hoberg",

#       "facebook_id"=> "399940033533057"
#     },
#     {
#       "name"=> "Audrey Yvert",

#       "facebook_id"=> "10155837665305317"
#     },
#     {
#       "name"=> "Aakanksha Pal",

#       "facebook_id"=> "10202875017789845"
#     },
#     {
#       "name"=> "Gustavo Pifano",

#       "facebook_id"=> "10101461356566627"
#     },
#     {
#       "name"=> "YoungHo Lee",

#       "facebook_id"=> "10153035767212016"
#     },
#     {
#       "name"=> "Bryan O'Brien",

#       "facebook_id"=> "10100401315996736"
#     },
#     {
#       "name"=> "Amol Pinge",

#       "facebook_id"=> "10100265718060676"
#     },
#     {
#       "name"=> "Nicolas Hartmann",

#       "facebook_id"=> "1015096455173859"
#     },
#     {
#       "name"=> "Kirsten Liepmann",

#       "facebook_id"=> "10100458933714956"
#     },
#     {
#       "name"=> "Jessica Lau",

#       "facebook_id"=> "10104445217684946"
#     },
#     {
#       "name"=> "Maria Springer",

#       "facebook_id"=> "10103360228546876"
#     },
#     {
#       "name"=> "Patrizio Finicelli",

#       "facebook_id"=> "10155598366970386"
#     },
#     {
#       "name"=> "Andrew Le Grice",

#       "facebook_id"=> "10152455381891821"
#     },
#     {
#       "name"=> "Aditya Tripathi",

#       "facebook_id"=> "10152767557291886"
#     },
#     {
#       "name"=> "Nichole Bestman",

#       "facebook_id"=> "10201937300733963"
#     },
#     {
#       "name"=> "GT Rutherford",

#       "facebook_id"=> "10105367568581383"
#     },
#     {
#       "name"=> "Hangwi Muambadzi",

#       "facebook_id"=> "10152940640573693"
#     },
#     {
#       "name"=> "Mohamed El Dahshan",

#       "facebook_id"=> "10101396380354371"
#     },
#     {
#       "name"=> "Mariel Chan",

#       "facebook_id"=> "10206846625982274"
#     },
#     {
#       "name"=> "Andreas Glinz",

#       "facebook_id"=> "10152562670519435"
#     },
#     {
#       "name"=> "Amith Rao",

#       "facebook_id"=> "1049110891774004"
#     },
#     {
#       "name"=> "Nat Ware",

#       "facebook_id"=> "10152389642906212"
#     },
#     {
#       "name"=> "Tochi Okoronkwo",

#       "facebook_id"=> "10153105990037861"
#     },
#     {
#       "name"=> "Mohan Ahluwalia",

#       "facebook_id"=> "10100383294815948"
#     },
#     {
#       "name"=> "Sarah Hammond",

#       "facebook_id"=> "10100626757065687"
#     },
#     {
#       "name"=> "Patricio Figueroa",

#       "facebook_id"=> "10153601453792429"
#     },
#     {
#       "name"=> "Lindsay Anstett",

#       "facebook_id"=> "10101062581780201"
#     },
#     {
#       "name"=> "Joan Lee",

#       "facebook_id"=> "10103737809282043"
#     },
#     {
#       "name"=> "Aman Kumar",

#       "facebook_id"=> "10152125684490698"
#     },
#     {
#       "name"=> "João Calmon",

#       "facebook_id"=> "10152952104517114"
#     },
#     {
#       "name"=> "Marina Littlewood",

#       "facebook_id"=> "10153656280367430"
#     },
#     {
#       "name"=> "On Onwaris",

#       "facebook_id"=> "10155028120525122"
#     },
#     {
#       "name"=> "Athar Ali",

#       "facebook_id"=> "10103911872647788"
#     },
#     {
#       "name"=> "Tina Marie Fillmon",

#       "facebook_id"=> "10205988547726661"
#     },
#     {
#       "name"=> "Vinay Gorur",

#       "facebook_id"=> "10152145956958737"
#     },
#     {
#       "name"=> "Pawan Kesarwani",

#       "facebook_id"=> "654668441236119"
#     },
#     {
#       "name"=> "Mrunalini Bhate",

#       "facebook_id"=> "10152378994412019"
#     },
#     {
#       "name"=> "Varun Chauhan",

#       "facebook_id"=> "10204808634427915"
#     },
#     {
#       "name"=> "Tzlil Salomon",

#       "facebook_id"=> "10152670841144591"
#     },
#     {
#       "name"=> "Nikhil Saigal",

#       "facebook_id"=> "10152724228345420"
#     },
#     {
#       "name"=> "Julian Barszczewski",

#       "facebook_id"=> "10153287101424288"
#     },
#     {
#       "name"=> "Alex Price",

#       "facebook_id"=> "10153652408534284"
#     },
#     {
#       "name"=> "Neel Patel",

#       "facebook_id"=> "10152942379332017"
#     },
#     {
#       "name"=> "Mahak Singhvi",

#       "facebook_id"=> "724902570903626"
#     },
#     {
#       "name"=> "Ashish Gupta",

#       "facebook_id"=> "10152356769796291"
#     },
#     {
#       "name"=> "Aparna Veerarouthu Pasupulati",

#       "facebook_id"=> "10152544589701050"
#     },
#     {
#       "name"=> "Parag Kulkarni",

#       "facebook_id"=> "10153599836671215"
#     },
#     {
#       "name"=> "Chelsea Guyer",

#       "facebook_id"=> "10103647507392790"
#     },
#     {
#       "name"=> "Reuben Ayley",

#       "facebook_id"=> "10153660453005110"
#     },
#     {
#       "name"=> "Shipra Singh",

#       "facebook_id"=> "10152002928866846"
#     },
#     {
#       "name"=> "Antonius Budianto",

#       "facebook_id"=> "10153322707532955"
#     },
#     {
#       "name"=> "Qiubai Zhou",

#       "facebook_id"=> "180367668965015"
#     },
#     {
#       "name"=> "Mdf Robertson",

#       "facebook_id"=> "448972121971796"
#     },
#     {
#       "name"=> "Jason Mulligan",

#       "facebook_id"=> "10154862200570184"
#     },
#     {
#       "name"=> "Tim Sweeney",

#       "facebook_id"=> "788737831206402"
#     },
#     {
#       "name"=> "Michael Spiros Meerkotter",

#       "facebook_id"=> "10154984817395397"
#     },
#     {
#       "name"=> "Mathew Pathirikatu",

#       "facebook_id"=> "10153081559307797"
#     },
#     {
#       "name"=> "Tushar Das",

#       "facebook_id"=> "10152467507424750"
#     },
#     {
#       "name"=> "Devakshi Chandra Kalani",

#       "facebook_id"=> "10152777679387018"
#     },
#     {
#       "name"=> "Anas Halabi",

#       "facebook_id"=> "566810323414"
#     },
#     {
#       "name"=> "Ting Liu",

#       "facebook_id"=> "10153447793266684"
#     },
#     {
#       "name"=> "Janet Emanuela",

#       "facebook_id"=> "10153224663375292"
#     },
#     {
#       "name"=> "Hameed Khan",

#       "facebook_id"=> "10154250712694392"
#     },
#     {
#       "name"=> "Anusha Aswani",

#       "facebook_id"=> "689687605628"
#     },
#     {
#       "name"=> "Arman Ilkhan",

#       "facebook_id"=> "10204038465637075"
#     },
#     {
#       "name"=> "Jakub Zivansky",

#       "facebook_id"=> "10206277492443211"
#     },
#     {
#       "name"=> "Nicholas J S Roberts-Huntley",

#       "facebook_id"=> "10152929174628300"
#     },
#     {
#       "name"=> "Avril Perry",

#       "facebook_id"=> "10153674067977139"
#     },
#     {
#       "name"=> "Eva Espinoza Vigo",

#       "facebook_id"=> "10153239989883711"
#     },
#     {
#       "name"=> "Daisuke Ueda",

#       "facebook_id"=> "10201785763545832"
#     },
#     {
#       "name"=> "Sougar Munkhtsooj",

#       "facebook_id"=> "840884589359196"
#     },
#     {
#       "name"=> "Kazufumi Aoki",

#       "facebook_id"=> "975859445764103"
#     },
#     {
#       "name"=> "Isha Varshney",

#       "facebook_id"=> "10153108767362005"
#     },
#     {
#       "name"=> "Lu Zheng",

#       "facebook_id"=> "1495238807443301"
#     },
#     {
#       "name"=> "Leon Zabel",

#       "facebook_id"=> "10206041752830190"
#     },
#     {
#       "name"=> "Aki Miyahara",

#       "facebook_id"=> "10206093655568065"
#     },
#     {
#       "name"=> "Sanghyun Kwak",

#       "facebook_id"=> "849246461792451"
#     },
#     {
#       "name"=> "Julia Falkenstern",

#       "facebook_id"=> "10102740701015053"
#     },
#     {
#       "name"=> "Matt McGrath",

#       "facebook_id"=> "10100561855758398"
#     },
#     {
#       "name"=> "Molly Shaw",

#       "facebook_id"=> "10204311030607043"
#     },
#     {
#       "name"=> "Sergei Bykov",

#       "facebook_id"=> "738087009577075"
#     },
#     {
#       "name"=> "Ritesh Singhania",

#       "facebook_id"=> "10154153326395165"
#     },
#     {
#       "name"=> "Eyad Albayouk",

#       "facebook_id"=> "10101134589141314"
#     },
#     {
#       "name"=> "Sophii Weng",

#       "facebook_id"=> "10154602625680207"
#     },
#     {
#       "name"=> "Fábio Couto",

#       "facebook_id"=> "10202812511228923"
#     },
#     {
#       "name"=> "Michiah Prull",

#       "facebook_id"=> "10101499930973311"
#     },
#     {
#       "name"=> "Madhu Sudan J",

#       "facebook_id"=> "1538204609754133"
#     },
#     {
#       "name"=> "Mehak Kharbanda",

#       "facebook_id"=> "10152880623021060"
#     },
#     {
#       "name"=> "Shanshan Tang",

#       "facebook_id"=> "10203574174497106"
#     },
#     {
#       "name"=> "Sreeja Meluveettil",

#       "facebook_id"=> "10202285625653226"
#     },
#     {
#       "name"=> "Yoqtan Del Castillo",

#       "facebook_id"=> "10153556066170609"
#     },
#     {
#       "name"=> "Tana Jambaldorj",

#       "facebook_id"=> "10204592614486147"
#     },
#     {
#       "name"=> "Sean Peters",

#       "facebook_id"=> "10100266606256883"
#     },
#     {
#       "name"=> "Ryan Sandhu",

#       "facebook_id"=> "10100505682111995"
#     },
#     {
#       "name"=> "Al Cottrill",

#       "facebook_id"=> "10155099382655594"
#     },
#     {
#       "name"=> "Will Leiner",

#       "facebook_id"=> "10107302703450634"
#     },
#     {
#       "name"=> "Mike Mehta",

#       "facebook_id"=> "10204307556155692"
#     },
#     {
#       "name"=> "Alex Bertoli",

#       "facebook_id"=> "10100802001519324"
#     },
#     {
#       "name"=> "Meaghan C. Riley",

#       "facebook_id"=> "10101378146016147"
#     },
#     {
#       "name"=> "Massimiliano Di Tommaso",

#       "facebook_id"=> "10153511441036294"
#     },
#     {
#       "name"=> "Sameeraj Rao",

#       "facebook_id"=> "10105513411056860"
#     },
#     {
#       "name"=> "Elizabeth George",

#       "facebook_id"=> "10206241252132508"
#     },
#     {
#       "name"=> "Justine Gamez",

#       "facebook_id"=> "10101452923521467"
#     },
#     {
#       "name"=> "Greg Camacho",

#       "facebook_id"=> "10152866605081582"
#     },
#     {
#       "name"=> "Kevin Wang",

#       "facebook_id"=> "10152487283061036"
#     },
#     {
#       "name"=> "Charleyn Pensivy",

#       "facebook_id"=> "10153646634829594"
#     },
#     {
#       "name"=> "Amarttya Chowdhury",

#       "facebook_id"=> "10153603603714659"
#     },
#     {
#       "name"=> "Pedro Wanderley",

#       "facebook_id"=> "10153253331282495"
#     },
#     {
#       "name"=> "Choong Wei Ling",

#       "facebook_id"=> "10153009668766173"
#     },
#     {
#       "name"=> "Ravindran Damodaran",

#       "facebook_id"=> "10203031850184530"
#     },
#     {
#       "name"=> "Josh Burge",

#       "facebook_id"=> "10154212157825167"
#     },
#     {
#       "name"=> "Francesca Ferreccio del Rio",

#       "facebook_id"=> "676105219156081"
#     },
#     {
#       "name"=> "Joydeep Chakravarty",

#       "facebook_id"=> "1503058266676526"
#     },
#     {
#       "name"=> "Abhinav Dubey",

#       "facebook_id"=> "10206039423397069"
#     },
#     {
#       "name"=> "Sumeet Sarangi",

#       "facebook_id"=> "10154914042410352"
#     },
#     {
#       "name"=> "Callan Walsh",

#       "facebook_id"=> "10100851958235675"
#     },
#     {
#       "name"=> "Hussein Sharif",

#       "facebook_id"=> "10102044080630028"
#     },
#     {
#       "name"=> "Artan Visha",

#       "facebook_id"=> "10153760203368238"
#     },
#     {
#       "name"=> "Laura Taylor",

#       "facebook_id"=> "824965615171"
#     },
#     {
#       "name"=> "İbrahim Onur Baysal",

#       "facebook_id"=> "1721563434738772"
#     },
#     {
#       "name"=> "Halla Koppel",

#       "facebook_id"=> "10153024450232397"
#     },
#     {
#       "name"=> "Fang Wang",

#       "facebook_id"=> "10156177958040145"
#     },
#     {
#       "name"=> "Tuanta Wiraboonchai",

#       "facebook_id"=> "10155591874950436"
#     },
#     {
#       "name"=> "Himanshu Agarwal",

#       "facebook_id"=> "10154130878735150"
#     },
#     {
#       "name"=> "Gabriela Hernández",

#       "facebook_id"=> "10152700263158096"
#     },
#     {
#       "name"=> "Ian Dunham",

#       "facebook_id"=> "10103215928979423"
#     },
#     {
#       "name"=> "Stan Tormey",

#       "facebook_id"=> "10152630791075941"
#     },
#     {
#       "name"=> "Orkhan Gambarli",

#       "facebook_id"=> "10202800998380732"
#     },
#     {
#       "name"=> "Cynthia Y. Ang",

#       "facebook_id"=> "10152499222102069"
#     },
#     {
#       "name"=> "Abhiroop Srivastava",

#       "facebook_id"=> "10152963905147504"
#     },
#     {
#       "name"=> "Ben Preston",

#       "facebook_id"=> "10152638672770168"
#     },
#     {
#       "name"=> "Singh Nidhi",

#       "facebook_id"=> "1501866826791740"
#     },
#     {
#       "name"=> "Kinshuk Kocher",

#       "facebook_id"=> "10152654250965932"
#     },
#     {
#       "name"=> "Jacek Czarnecki",

#       "facebook_id"=> "10201794952704444"
#     },
#     {
#       "name"=> "Cécile Guillot Boschetti",

#       "facebook_id"=> "10205063892611636"
#     },
#     {
#       "name"=> "Andre Havrylyshyn",

#       "facebook_id"=> "10155966275380717"
#     },
#     {
#       "name"=> "Julian Müller",

#       "facebook_id"=> "10204916301886166"
#     },
#     {
#       "name"=> "Charles Ghuysen",

#       "facebook_id"=> "10205661671236797"
#     },
#     {
#       "name"=> "Selma Studer",

#       "facebook_id"=> "10102241661813555"
#     },
#     {
#       "name"=> "Amal Kothari",

#       "facebook_id"=> "790801500440"
#     },
#     {
#       "name"=> "Kanad Bagchi",

#       "facebook_id"=> "10153329732104902"
#     },
#     {
#       "name"=> "HaiShan Tan",

#       "facebook_id"=> "10152429462661644"
#     },
#     {
#       "name"=> "Karen K K Ng",

#       "facebook_id"=> "10152028370426650"
#     },
#     {
#       "name"=> "Jonathan Yee",

#       "facebook_id"=> "10151981808690997"
#     },
#     {
#       "name"=> "Anthony Weijia Ayala",

#       "facebook_id"=> "10153102178493814"
#     },
#     {
#       "name"=> "Gary Pickholz",

#       "facebook_id"=> "10152395790104441"
#     },
#     {
#       "name"=> "Pam Alquisada",

#       "facebook_id"=> "976955019034711"
#     },
#     {
#       "name"=> "Swati Kathuriya Aggarwal",

#       "facebook_id"=> "974538245923875"
#     },
#     {
#       "name"=> "Jacqueline Heilman",

#       "facebook_id"=> "10153070041086632"
#     },
#     {
#       "name"=> "Ray Moriya",

#       "facebook_id"=> "10153042350902868"
#     },
#     {
#       "name"=> "Zach Bucheister",

#       "facebook_id"=> "10205377988153786"
#     },
#     {
#       "name"=> "Chloe Wei Li",

#       "facebook_id"=> "10151992750917606"
#     },
#     {
#       "name"=> "Amol Kane",

#       "facebook_id"=> "10155048647255273"
#     },
#     {
#       "name"=> "Shrey Chopra",

#       "facebook_id"=> "10152511038917513"
#     },
#     {
#       "name"=> "Monesh Kirpalani",

#       "facebook_id"=> "10100264795884091"
#     },
#     {
#       "name"=> "Nana Akyaa",

#       "facebook_id"=> "10100436487721918"
#     },
#     {
#       "name"=> "Ritesh Tibrewal",

#       "facebook_id"=> "10152639284978740"
#     },
#     {
#       "name"=> "Riyaz Aboobacker",

#       "facebook_id"=> "10153618798217359"
#     },
#     {
#       "name"=> "Tarun Varma",

#       "facebook_id"=> "10152344399890259"
#     },
#     {
#       "name"=> "Julian Lindloff",

#       "facebook_id"=> "10204968173699616"
#     },
#     {
#       "name"=> "Ross Jones",

#       "facebook_id"=> "10101920326836613"
#     },
#     {
#       "name"=> "Jingwen Nie",

#       "facebook_id"=> "370714043103216"
#     },
#     {
#       "name"=> "Kael Roberts",

#       "facebook_id"=> "10152975409193067"
#     },
#     {
#       "name"=> "Tong Yu",

#       "facebook_id"=> "477771025735312"
#     },
#     {
#       "name"=> "Sarp Ulas Ocak",

#       "facebook_id"=> "10153084199381892"
#     },
#     {
#       "name"=> "Paolo Somaglia",

#       "facebook_id"=> "1456599481317893"
#     },
#     {
#       "name"=> "Katharina Doesburg",

#       "facebook_id"=> "10152833813416061"
#     },
#     {
#       "name"=> "Aanchal Jain",

#       "facebook_id"=> "10155247373345131"
#     },
#     {
#       "name"=> "Simanti Mitra",

#       "facebook_id"=> "794274817262937"
#     },
#     {
#       "name"=> "Harshit Kabra",

#       "facebook_id"=> "10205990970636177"
#     },
#     {
#       "name"=> "Pedro Yu",

#       "facebook_id"=> "382287411935902"
#     },
#     {
#       "name"=> "Punit Mattoo",

#       "facebook_id"=> "10105738195826383"
#     },
#     {
#       "name"=> "Michael Railton",

#       "facebook_id"=> "10154180992205391"
#     },
#     {
#       "name"=> "Sumit Pandey",

#       "facebook_id"=> "10155810580690204"
#     },
#     {
#       "name"=> "Nivedita Garg",

#       "facebook_id"=> "10153006008850388"
#     },
#     {
#       "name"=> "Sugam Taneja",

#       "facebook_id"=> "10155907593295538"
#     },
#     {
#       "name"=> "Aparna Choudhary",

#       "facebook_id"=> "10153300867399584"
#     },
#     {
#       "name"=> "Ives Huang",

#       "facebook_id"=> "10153683961077588"
#     },
#     {
#       "name"=> "Yfantis Efthymios",

#       "facebook_id"=> "10152989687772981"
#     },
#     {
#       "name"=> "Alexandre Carneiro",

#       "facebook_id"=> "10152016854736637"
#     },
#     {
#       "name"=> "Prakash Ranjan",

#       "facebook_id"=> "10205278978273005"
#     },
#     {
#       "name"=> "Patrick Staudt",

#       "facebook_id"=> "10154875683730285"
#     },
#     {
#       "name"=> "Heerden Herman",

#       "facebook_id"=> "1036003389763583"
#     },
#     {
#       "name"=> "Moeen Abbas",

#       "facebook_id"=> "896675887048487"
#     },
#     {
#       "name"=> "Ankit Shah",

#       "facebook_id"=> "10154342932170556"
#     },
#     {
#       "name"=> "Ravshanbek Mamajonov",

#       "facebook_id"=> "10203540316067747"
#     },
#     {
#       "name"=> "Claudia Ji",

#       "facebook_id"=> "10154595324825475"
#     },
#     {
#       "name"=> "Ines Lucia Fernandez",

#       "facebook_id"=> "10103434094344482"
#     },
#     {
#       "name"=> "Jo Weerawat Wongcharoenyai",

#       "facebook_id"=> "10152757164021218"
#     },
#     {
#       "name"=> "Mufeed Mahmood",

#       "facebook_id"=> "10203758549736650"
#     },
#     {
#       "name"=> "Jamie Huckabay",

#       "facebook_id"=> "723669609970"
#     },
#     {
#       "name"=> "Shirish Tulsian",

#       "facebook_id"=> "1619593548307513"
#     },
#     {
#       "name"=> "Björn Müller",

#       "facebook_id"=> "10203152043816517"
#     },
#     {
#       "name"=> "Noura Ismail",

#       "facebook_id"=> "10204836315416962"
#     },
#     {
#       "name"=> "Angela Liu",

#       "facebook_id"=> "811513935547227"
#     },
#     {
#       "name"=> "Sumit Joshi",

#       "facebook_id"=> "1034178686603016"
#     },
#     {
#       "name"=> "Rimi Chatterjee",

#       "facebook_id"=> "10205496902045102"
#     },
#     {
#       "name"=> "Akshat Agarwal",

#       "facebook_id"=> "10153288430241613"
#     },
#     {
#       "name"=> "Yashna Belliappa",

#       "facebook_id"=> "10153372383179019"
#     },
#     {
#       "name"=> "Tania Warren",

#       "facebook_id"=> "10153136820753341"
#     },
#     {
#       "name"=> "Christian Forrer Basagoitia",

#       "facebook_id"=> "10152797158068229"
#     },
#     {
#       "name"=> "Grace Mengtong Shao",

#       "facebook_id"=> "1711025255798308"
#     },
#     {
#       "name"=> "Alexia Doyamis",

#       "facebook_id"=> "10103460677316719"
#     },
#     {
#       "name"=> "Matthew Williams",

#       "facebook_id"=> "10153567791899435"
#     },
#     {
#       "name"=> "Muhammed Emin Torunoglu",

#       "facebook_id"=> "10153331698477535"
#     },
#     {
#       "name"=> "Rohit Chaudhary",

#       "facebook_id"=> "793972420627806"
#     },
#     {
#       "name"=> "Safia Tapal",

#       "facebook_id"=> "10100449945203018"
#     },
#     {
#       "name"=> "Saiba Kataruka",

#       "facebook_id"=> "10153820256506159"
#     },
#     {
#       "name"=> "Patience Tu",

#       "facebook_id"=> "932169710126949"
#     },
#     {
#       "name"=> "David Baker",

#       "facebook_id"=> "10152697985824090"
#     },
#     {
#       "name"=> "Dennis Mathagu Muchira",

#       "facebook_id"=> "10152553153831872"
#     },
#     {
#       "name"=> "Krishna Somani",

#       "facebook_id"=> "10152630924842819"
#     },
#     {
#       "name"=> "Kunal Singla",

#       "facebook_id"=> "10152909369866241"
#     },
#     {
#       "name"=> "Misa Lazovic",

#       "facebook_id"=> "10202281091284304"
#     },
#     {
#       "name"=> "Leo Luk",

#       "facebook_id"=> "10152456698094858"
#     },
#     {
#       "name"=> "Niharika Chaudhary",

#       "facebook_id"=> "10152384619691920"
#     },
#     {
#       "name"=> "Ryan Xu Chen",

#       "facebook_id"=> "10153645459406948"
#     },
#     {
#       "name"=> "Prateek Jain",

#       "facebook_id"=> "10104662400888127"
#     },
#     {
#       "name"=> "Alan Cheung",

#       "facebook_id"=> "10202041624551264"
#     },
#     {
#       "name"=> "Josh Sacks",

#       "facebook_id"=> "10102489040120494"
#     },
#     {
#       "name"=> "Suet Ying Khong",

#       "facebook_id"=> "10100589132026862"
#     },
#     {
#       "name"=> "Vatsal Uttarwar",

#       "facebook_id"=> "10152243388247854"
#     },
#     {
#       "name"=> "Dimitar Stankov",

#       "facebook_id"=> "10205384807118968"
#     },
#     {
#       "name"=> "Amrinder Bali",

#       "facebook_id"=> "10206045807846274"
#     },
#     {
#       "name"=> "Adam Flamm",

#       "facebook_id"=> "10152647076405819"
#     },
#     {
#       "name"=> "Mark Fleming",

#       "facebook_id"=> "10154292989440160"
#     },
#     {
#       "name"=> "Jessica Cheng",

#       "facebook_id"=> "10101102361500592"
#     },
#     {
#       "name"=> "Stephan Jensen",

#       "facebook_id"=> "10100557804187807"
#     },
#     {
#       "name"=> "Kevin Wang",

#       "facebook_id"=> "1500400520275922"
#     },
#     {
#       "name"=> "Madhumitha Ramanathan",

#       "facebook_id"=> "1134762863216982"
#     },
#     {
#       "name"=> "Oxford Guild",

#       "facebook_id"=> "1640175169580338"
#     },
#     {
#       "name"=> "Gayathri Balan",

#       "facebook_id"=> "972546576104435"
#     },
#     {
#       "name"=> "Hieu Nguyen",

#       "facebook_id"=> "10100261002535991"
#     },
#     {
#       "name"=> "Deepti Pulavarthi",

#       "facebook_id"=> "833371790109251"
#     },
#     {
#       "name"=> "Rishi Kartari",

#       "facebook_id"=> "756182247770222"
#     },
#     {
#       "name"=> "Bryce Hoover",

#       "facebook_id"=> "10153432276516773"
#     },
#     {
#       "name"=> "Wenyan Miao",

#       "facebook_id"=> "615913685177423"
#     },
#     {
#       "name"=> "Vijay Kumar",

#       "facebook_id"=> "1039983299369460"
#     },
#     {
#       "name"=> "Richard Edwards-Earl",

#       "facebook_id"=> "10101216353844553"
#     },
#     {
#       "name"=> "Charlotte B. Ntim",

#       "facebook_id"=> "10101767830096247"
#     },
#     {
#       "name"=> "Caroline Ong",

#       "facebook_id"=> "10203937163902051"
#     },
#     {
#       "name"=> "Siddharth Yadwad",

#       "facebook_id"=> "654332228009"
#     },
#     {
#       "name"=> "Chor Hiang Tan",

#       "facebook_id"=> "10153578756604831"
#     },
#     {
#       "name"=> "Ahana Dwivedi",

#       "facebook_id"=> "10207680456474625"
#     },
#     {
#       "name"=> "Shreekanth Acharya",

#       "facebook_id"=> "922387421142432"
#     },
#     {
#       "name"=> "Yan Yu",

#       "facebook_id"=> "10155457600255332"
#     },
#     {
#       "name"=> "Teddy Zareva",

#       "facebook_id"=> "10100188560146116"
#     },
#     {
#       "name"=> "Piotr Nowak",

#       "facebook_id"=> "10152723296728175"
#     },
#     {
#       "name"=> "Alan Keeso",

#       "facebook_id"=> "885606186360"
#     },
#     {
#       "name"=> "Jamil Armanazi",

#       "facebook_id"=> "875833726302"
#     },
#     {
#       "name"=> "Sai Ma",

#       "facebook_id"=> "10207850707492692"
#     },
#     {
#       "name"=> "Jay Y. Jiraporn",

#       "facebook_id"=> "883837041640959"
#     },
#     {
#       "name"=> "Raquel Lisón",

#       "facebook_id"=> "10100137451156351"
#     },
#     {
#       "name"=> "Ricky Gallo",

#       "facebook_id"=> "10207588529935165"
#     },
#     {
#       "name"=> "Tammy Brophy",

#       "facebook_id"=> "10152387593545850"
#     },
#     {
#       "name"=> "Alwin Verbeek",

#       "facebook_id"=> "10153029577216587"
#     },
#     {
#       "name"=> "Talisa Jane Du Bois",

#       "facebook_id"=> "595904522338"
#     },
#     {
#       "name"=> "Mallikarjun Erasu",

#       "facebook_id"=> "10156028873625206"
#     },
#     {
#       "name"=> "Parag Jain",

#       "facebook_id"=> "771929559498333"
#     },
#     {
#       "name"=> "Christine Griffin",

#       "facebook_id"=> "10101127232309227"
#     },
#     {
#       "name"=> "Arjun Prasad",

#       "facebook_id"=> "10152985467670435"
#     },
#     {
#       "name"=> "Smriti Chadha",

#       "facebook_id"=> "700759426698055"
#     },
#     {
#       "name"=> "Ghaly M",

#       "facebook_id"=> "10154869027380045"
#     },
#     {
#       "name"=> "Julie Butler",

#       "facebook_id"=> "10152956477709516"
#     },
#     {
#       "name"=> "Karan Khanna",

#       "facebook_id"=> "10152718612127186"
#     },
#     {
#       "name"=> "Naziya Sogi",

#       "facebook_id"=> "10156161474885441"
#     },
#     {
#       "name"=> "Julie Grace",

#       "facebook_id"=> "10203950443315883"
#     },
#     {
#       "name"=> "Priyanka DeSouza",

#       "facebook_id"=> "10204135771498810"
#     },
#     {
#       "name"=> "Abby Chan",

#       "facebook_id"=> "10154766701595112"
#     },
#     {
#       "name"=> "Tatiana Fullick",

#       "facebook_id"=> "10152688460608354"
#     },
#     {
#       "name"=> "Aislin O'Connor",

#       "facebook_id"=> "10152922572280854"
#     },
#     {
#       "name"=> "Tilman Melzer",

#       "facebook_id"=> "10206728876734172"
#     },
#     {
#       "name"=> "Hedy Qianran Li",

#       "facebook_id"=> "10153520413856508"
#     },
#     {
#       "name"=> "Samriti Sood",

#       "facebook_id"=> "10202083290673239"
#     },
#     {
#       "name"=> "Rodrigo Navarro Romero",

#       "facebook_id"=> "10154849381050285"
#     },
#     {
#       "name"=> "Dhaval Patel",

#       "facebook_id"=> "685677921467847"
#     },
#     {
#       "name"=> "Sherry  Tang",

#       "facebook_id"=> "1689711761265053"
#     },
#     {
#       "name"=> "Lexi Crampton",

#       "facebook_id"=> "10152832893561500"
#     },
#     {
#       "name"=> "Abbas Kazmi",

#       "facebook_id"=> "10152296558036077"
#     },
#     {
#       "name"=> "Koushik Prasad",

#       "facebook_id"=> "10155293307265107"
#     },
#     {
#       "name"=> "Pat Prendiville",

#       "facebook_id"=> "10153046521816363"
#     },
#     {
#       "name"=> "Nick Ingle",

#       "facebook_id"=> "10152812762918004"
#     },
#     {
#       "name"=> "Davide Tedone",

#       "facebook_id"=> "10107183066304424"
#     },
#     {
#       "name"=> "Ambreen Razaq",

#       "facebook_id"=> "10102774666522874"
#     },
#     {
#       "name"=> "Simon Spier",

#       "facebook_id"=> "10101049972840045"
#     },
#     {
#       "name"=> "Justin Shanxing Guan",

#       "facebook_id"=> "736021013169266"
#     },
#     {
#       "name"=> "Lorenzo Duretto",

#       "facebook_id"=> "10206892261085185"
#     },
#     {
#       "name"=> "William Ou",

#       "facebook_id"=> "10156105362170187"
#     },
#     {
#       "name"=> "Johannes Moll",

#       "facebook_id"=> "874033865981112"
#     },
#     {
#       "name"=> "Neeraj Dhanothia",

#       "facebook_id"=> "10153235552960218"
#     },
#     {
#       "name"=> "Tianhang Gao",

#       "facebook_id"=> "872957649447505"
#     },
#     {
#       "name"=> "Mario Felix Pasku",

#       "facebook_id"=> "10203523831597546"
#     },
#     {
#       "name"=> "Neil Yeoh",

#       "facebook_id"=> "604248905367"
#     },
#     {
#       "name"=> "Xueying FU",

#       "facebook_id"=> "1632719443665444"
#     },
#     {
#       "name"=> "Min Ji Sue Kim",

#       "facebook_id"=> "10100139948164610"
#     },
#     {
#       "name"=> "Animesh Roy",

#       "facebook_id"=> "1049411545088838"
#     },
#     {
#       "name"=> "Geetanjali Kaur",

#       "facebook_id"=> "10152042183232548"
#     },
#     {
#       "name"=> "Nakul Agrawal",

#       "facebook_id"=> "10204886144329023"
#     },
#     {
#       "name"=> "Yashvin Singh",

#       "facebook_id"=> "737483346356837"
#     },
#     {
#       "name"=> "Anubhav Soni",

#       "facebook_id"=> "10154983492235462"
#     },
#     {
#       "name"=> "Ashley Elizabeth",

#       "facebook_id"=> "10100503667318458"
#     },
#     {
#       "name"=> "Andrés Baehr",

#       "facebook_id"=> "10152874419428767"
#     },
#     {
#       "name"=> "Gabriel Roque",

#       "facebook_id"=> "10152540385032499"
#     },
#     {
#       "name"=> "Tamás Jakab",

#       "facebook_id"=> "10203728786852871"
#     },
#     {
#       "name"=> "Nidhi Joshi",

#       "facebook_id"=> "10153053391032687"
#     },
#     {
#       "name"=> "Andrew Iyer",

#       "facebook_id"=> "10152120247836486"
#     },
#     {
#       "name"=> "Matt Rehrig",

#       "facebook_id"=> "10100458052071800"
#     },
#     {
#       "name"=> "Nick Dunford",

#       "facebook_id"=> "10152560018600768"
#     },
#     {
#       "name"=> "Bhanu Birla",

#       "facebook_id"=> "10153964054145478"
#     },
#     {
#       "name"=> "Dennis Ou",

#       "facebook_id"=> "10152454419117109"
#     },
#     {
#       "name"=> "Stuart Noland",

#       "facebook_id"=> "10155728707755587"
#     },
#     {
#       "name"=> "Kit Chomcharn",

#       "facebook_id"=> "10154436426350531"
#     },
#     {
#       "name"=> "Michal Prause",

#       "facebook_id"=> "10203034199799017"
#     },
#     {
#       "name"=> "Niyati Gupta",

#       "facebook_id"=> "10154126286490188"
#     },
#     {
#       "name"=> "Quincy Yuliang Wang",

#       "facebook_id"=> "1200078683339499"
#     },
#     {
#       "name"=> "Rahul Gandhi",

#       "facebook_id"=> "10154546018775251"
#     },
#     {
#       "name"=> "Daniel Kim",

#       "facebook_id"=> "910849708933340"
#     },
#     {
#       "name"=> "Franco Chow",

#       "facebook_id"=> "10152972634850927"
#     },
#     {
#       "name"=> "Yolanda Zheng",

#       "facebook_id"=> "795657613828775"
#     },
#     {
#       "name"=> "Shan Gao",

#       "facebook_id"=> "10206345394290170"
#     },
#     {
#       "name"=> "Farhan Chaudhary",

#       "facebook_id"=> "10153448757584859"
#     },
#     {
#       "name"=> "Patrick Dowd",

#       "facebook_id"=> "10101467503498077"
#     },
#     {
#       "name"=> "Hubert Lau",

#       "facebook_id"=> "663627335058"
#     },
#     {
#       "name"=> "Stuart Higley-Walters",

#       "facebook_id"=> "10152942868714434"
#     },
#     {
#       "name"=> "Michael Yuen",

#       "facebook_id"=> "1033287116698307"
#     },
#     {
#       "name"=> "Misa Zivic",

#       "facebook_id"=> "10204314079031482"
#     },
#     {
#       "name"=> "Andriy Tymoshenko",

#       "facebook_id"=> "10204443307717028"
#     },
#     {
#       "name"=> "Jamie Lynne Boutilier",

#       "facebook_id"=> "10102191127160410"
#     },
#     {
#       "name"=> "Anastasia Gorbunova",

#       "facebook_id"=> "10102748382685962"
#     },
#     {
#       "name"=> "Andrew Li",

#       "facebook_id"=> "10152741616707301"
#     },
#     {
#       "name"=> "Alind Choudhry",

#       "facebook_id"=> "10153056628964734"
#     },
#     {
#       "name"=> "Akash Mukherjee",

#       "facebook_id"=> "10152883787972674"
#     },
#     {
#       "name"=> "Sadia Shahid",

#       "facebook_id"=> "10154355467140072"
#     },
#     {
#       "name"=> "Tianwei Pang",

#       "facebook_id"=> "589831727508"
#     },
#     {
#       "name"=> "Moe du Bourget",

#       "facebook_id"=> "10153567155249360"
#     },
#     {
#       "name"=> "Marcus Schweizer",
#       "facebook_id"=> "10153396544418629"
#     }
#   ])

# CSV.open("fb_members.csv", "wb") do |csv|
#   csv << Student.attribute_names
#   Student.all.each do |user|
#     csv << user.attributes.values
#   end
# end

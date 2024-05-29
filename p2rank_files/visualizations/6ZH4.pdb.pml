
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/6ZH4.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/6ZH4.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [14399,14400,14401,14572,14528,14226,14199,14190,14421,14197,14167,14166,14137,14429,14817,14449,14448,14450,14793,14794,14796,14797,14823,14850,14580,14582,14972,14982,14579,14974,15139,14983,14509,14511,14519,14520,14521,14522,14524,14525,14515,14517,14512,14479,14480,14938,14940,14851,14529,14935,14937,14939,14944] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.431,0.702]
select surf_pocket2, protein and id [26474,20009,20010,20011,20048,20039,20197,20072,20461,20498,20501,20463,26473,26461,20558,20555,20238,20556,22358,22359,26463,26464,26465,22342,26439,20047,20046,20199,20201,20202,20175,28044,28076,28077,20023,20219,20192,26441,26444,28098,22338,22350,28066,21539,21540,21572,20012,20013,20014,20015,20523,19975,20494,20493,20559,21978,20557,21971,21977,21961,21962,21960,21963,21967,21573,21605,19981,19993,19970,21538] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.529,0.902]
select surf_pocket3, protein and id [636,638,634,635,648,401,615,609,611,612,647,614,344,347,374,726,722,724,373,372,398,405,406,687,674,700,671,758,721,746,757,958,706,709,265,268,269,403,606,639,342,340,341,365,367,640,30,31,8,9] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.392,0.702]
select surf_pocket4, protein and id [26643,26644,26645,27634,27635,27706,26675,26692,26680,26686,27604,27608,26027,26218,26025,26026,26075,27711,27712,27713,27714,28383,26038,26039,27605,27615,26233,26234,26251,26052,26053,28382,26534,26535,26293,26295,26622,26623,26267,26248,27703,27705,27707,27708,28351,26627,26634,26647,26654,26029,26032,26033,26549,26292] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.482,0.902]
select surf_pocket5, protein and id [930,931,932,933,934,935,902,903,1259,1260,1088,795,1084,1086,790,793,815,817,1112,792,965,1041,1043,1278,1280,1277,1256,1308,1306,1307,964,929,1085,1087,1113,1111,1281,1282,1285,1060,1062,1288,1019,900,866,788,789,785,786,812] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.357,0.702]
select surf_pocket6, protein and id [24922,25460,25461,24891,25386,25352,24920,24919,24888,24921,25034,25036,25037,25038,25063,25389,25041,24990,24947,25417,25404,25388,25379,24942,25436,25434,25059,25027,25028,25031,25456,25458,25455,25429,25457,25459,25350] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.435,0.902]
select surf_pocket7, protein and id [27739,27569,27570,27571,27804,28395,28398,28399,29140,29142,29159,27831,29165,29166,27816,29138,28385,28358,28380,28391,28392,28393,28394,28382,27588,27590,27592,27589,27591,27738,29158] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.318,0.702]
select surf_pocket8, protein and id [13684,13681,13682,13683,13685,13686,13653,14373,14374,14237,14244,14247,14328,14329,14214,14246,14265,14272,14331,13705,13680,13706,14360,14212,14215,14362,14363,13796,13645,14206,14239,14208,14210,14180,14209,13772,13741] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.388,0.902]
select surf_pocket9, protein and id [25126,25082,25083,25091,25092,25115,24845,24847,24848,24879,24915,25055,24884,24886,25095,25054,24785,24786,24788,25209,24797,25117,25120,25208,25114,24811,26238,24851,24784,24850,25056,25057,25088,25084,26589,26590,26593,24758,26588,26600,24767,26578] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.282,0.702]
select surf_pocket10, protein and id [27338,27347,27355,19096,27339,19087,19504,6146,27340,27341,6157,21497,21498,21499,19701,19702,19703,27363,27364,6415,6416,6417,19063,19065,19064,19479,19085,19471,19469,19470,19474,19093,19089,19120,19121,19094,6379,6380,19535,5848] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.380,0.361,0.902]
select surf_pocket11, protein and id [8858,8437,8868,8867,25714,25715,25716,7921,7923,8438,8474,7942,8457,7916,7919,7920,25737,25735,25750,8475,8465,8466,8893,25738,25741,25720,25733,25739,25736] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.314,0.278,0.702]
select surf_pocket12, protein and id [3569,3194,3188,3190,11639,29321,3571,3536,11288,11290,3191,3176,11289,11562,11322,11587,11285,11320,11569,11283,11286,11585,11588,11570,11611,11561,11612,11613,11608,11355,11356,3570,11326,11327,11330,3221,3227,3544] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.427,0.361,0.902]
select surf_pocket13, protein and id [28265,26286,26287,27744,27743,27765,28505,28506,28554,28555,27764,28268,28223,28227,28231,28553,28267,27729,28318,28320] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.353,0.278,0.702]
select surf_pocket14, protein and id [27524,27526,27856,27549,27551,27757,28702,28674,28678,28699,28649,28615,28669,28671,27555,27561,27853,27855,27776,27834,27847,27775] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.475,0.361,0.902]
select surf_pocket15, protein and id [21580,21573,21581,21582,21214,21224,22016,21195,21604,21605,21603,21398,21182,21201,21205,21422,21207,21211,21424,21425,21400,21428,21430,21633,21459,21174,21420,21421] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.388,0.278,0.702]
select surf_pocket16, protein and id [19518,19331,19356,19114,19115,19145,18320,18412,18413,18339] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.522,0.361,0.902]
select surf_pocket17, protein and id [24860,25459,25303,25312,25340,25341,25350,25349,25314,25492,25485,25483,25515,25342,24891,25065,25067,24892] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.424,0.278,0.702]
select surf_pocket18, protein and id [20047,28043,20044,20046,20170,20171,20176,20202,20177,20179,20172,28044,28076,28077,20023,28065,28066,28067,28035,29023,20180,20182,28988,20155,20151,28003,20042,20051,20080,28006,20078,20079,20020,28033,28005,29024] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.573,0.361,0.902]
select surf_pocket19, protein and id [20978,20569,20572,22005,22262,22406,22414,20590,20976,20977,22002,22286,22287,22261,22435,20563,21966,22039,20975,20971,20974,22063,22383,22384,22436,22437] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.463,0.278,0.702]
select surf_pocket20, protein and id [28,239,241,242,243,402,404,27,220,63,423,30,269,607,604,606,601,9,573,576,397,430,424,395,398,400,615,575] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.620,0.361,0.902]
select surf_pocket21, protein and id [29284,29287,3620,3622,3618,3593,3597,3598,29286,3631,11671,11672,11673,11674,29302,4187,4222,4188,4189,4220,4221] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.498,0.278,0.702]
select surf_pocket22, protein and id [1348,1602,1603,1289,1290,1287,1264,1286,1413,1377,1334,1336,1341] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.667,0.361,0.902]
select surf_pocket23, protein and id [9071,8949,9405,8950,9045,9073,9413,9609,9611,9081,9082] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.537,0.278,0.702]
select surf_pocket24, protein and id [29332,29321,12010,12040,12346,3199,3202,11981,11982,11985,3235,2908,3226,3227,29326,29337,29331] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.714,0.361,0.902]
select surf_pocket25, protein and id [1645,1381,1405,1407,1414,1419,1448,1447,1604,1578,1576,1610,1643,1644,1722,1720,1690,1698,1699,1700,1581,1761] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.573,0.278,0.702]
select surf_pocket26, protein and id [24858,24860,25303,25311,25312,25341,25314,25315,24862,25515,25516,25279,25270,25549,25548,25097,25096,25067,24892,25127,25124,25125,25065] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.761,0.361,0.902]
select surf_pocket27, protein and id [6622,6624,18593,18572,18591,18944,18946,18583,6263,6621,6264,18581,6573,6599,18966,6601,6602,6255,6257,6246,6260,18926,18963,18938] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.612,0.278,0.702]
select surf_pocket28, protein and id [2741,2459,2763,2764,2765,2460,2461,2467,2497,2496,2537,2538,2539,2829,2792,2770,2773,2795,2790,2791,2455,2454,2456,2457] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.808,0.361,0.902]
select surf_pocket29, protein and id [7536,7904,7682,7871,7534,7546,7548,7708,7507,7508,7509,7505,7506] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.647,0.278,0.702]
select surf_pocket30, protein and id [4157,10961,10982,4159,10944,10980,10981,4188,4189,11335,3590,3591,3556,3558,3597,11329] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.361,0.902]
select surf_pocket31, protein and id [3977,3978,3979,3981,3984,2702,2347,2704,2735,2346,2376,2375,3985,3114,2700,2708,2726,2727,3147,2725,3146,3148,4013,2348,2355,2345] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.682,0.278,0.702]
select surf_pocket32, protein and id [3190,3197,3199,3200,3202,3194,29320,29321,12010,12040,11611,3195,11583,11990,11987,3226,3227,29326] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.898]
select surf_pocket33, protein and id [16613,16614,16616,16621,16328,16291,16226,16554,16562,16224,16329,16246,16651] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.678]
select surf_pocket34, protein and id [6201,6202,6203,26749,27289,27291,6682,6684,6176,6200,6167,27651,27652,27653,27655,27329,27326,26685,26684,26724] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.851]
select surf_pocket35, protein and id [3551,4027,3561,11212,11213,11214,3520,3521,3527,3528,11237,11239,4024,11301,11259,11261,10920,10899,10923] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.643]
select surf_pocket36, protein and id [21214,21223,21224,20908,20909,20910,22016,21195,20945,21605,21197,20911] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.804]
select surf_pocket37, protein and id [19943,19945,19946,20847,20451,19912,19914,19942,19936,19935,19938,19939,19973,19974,20496,20072,20456,20459,20461,20455,20071,20073,20427,19915,20425,19937] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.604]
select surf_pocket38, protein and id [14809,14784,14786,13475,13866,13867,14434,13899,13885,13886,13895,13896,13900,14409,14410,14838,14839,14840,14842,14455,14456,14428,14430,14431,14433,14807,14808] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.757]
select surf_pocket39, protein and id [6087,21510,21527,21528,21529,21530,21531,21523,6086,6088,21532,21541,27426,27428,27450,27449,26480,26481,26469,27420,27423,27418,27393,27392,27419,27390,27416,27415] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.569]
select surf_pocket40, protein and id [24179,24429,24426,24439,24440,24403,24405,26303,26304,24150,25812,25813,25816,24396,25825,25828,25829,25832,26541,26555,26546,26560] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.706]
select surf_pocket41, protein and id [6763,6738,6740,7085,7114,6950,6761,6772,6918,6919,6941,6943] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.533]
select surf_pocket42, protein and id [27801,27807,27813,27826,28811,27810,27811,27814,27819,27044,27047,28430,27049,28755,28758,28765,27048,28730,28732,28735,27018,27023,27043] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.659]
select surf_pocket43, protein and id [14159,14125,14127,14156,13858,13859,13625,13598,13626,13570] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.494]
select surf_pocket44, protein and id [9354,9885,9389,9860,9334,9862,9331,9733,9735,9756] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.612]
select surf_pocket45, protein and id [9053,9595,9596,9638,9088,9089,9114,9050,9051,7959,7964,7965,9090,7962,7963,8482,25742,25743,8481,9628,9630] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.459]
select surf_pocket46, protein and id [7584,7586,25977,25978,25979,26129,7555,25985,26182,26179,7563,7553,7561,7562,7128,7625,7626] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.565]
select surf_pocket47, protein and id [29334,29337,29338,29331,12781,2951,12782,3235,2907,2908,12317,29326,2941,2942,12345,12348] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.420]
select surf_pocket48, protein and id [24291,24284,24056,23950,23951,23917,24079,24081] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.518]
select surf_pocket49, protein and id [6400,6401,6579,6590,6730,6589,6731,6689,6688,6578,6241,6699,6608] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.384]
select surf_pocket50, protein and id [9765,9733,9735,9918,10202,10240,9926,9829,10242,9858,9892,9860] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.471]
select surf_pocket51, protein and id [18411,18330,18331,18465,18311,18463] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.349]
select surf_pocket52, protein and id [25703,25705,24740,25670,25671,25672,25673,25669,25665,25666,25668,25695,25667,25711,25760,24715,25731,25728,25729,25730] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.424]
select surf_pocket53, protein and id [26493,26511,26513,27427,27428,27455,26515,27677,27683,27671,27669,27670] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.278,0.310]
select surf_pocket54, protein and id [15955,16217,15965,15968,16175,16222,16228,16254,16238,15967,16156,15995] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.361,0.376]
select surf_pocket55, protein and id [3612,3309,3611,3845,3846,3874,4099,4137] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.286,0.278]
select surf_pocket56, protein and id [24742,24747,25703,25705,25672,25673,24715,24745] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.392,0.361]
select surf_pocket57, protein and id [28140,28141,28142,23870,23871,23873,23906,23564,23562,23563,23569,23593,23594,23595,23625,23628,23036,28149,28151] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.322,0.278]
select surf_pocket58, protein and id [11046,11047,10789,10382,10383,10685,10763,11079,10686,10352] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.439,0.361]
select surf_pocket59, protein and id [23,234,22,17050,17075,17040,17042,17047,263,240,58,57,55,83,91,88,186,213,211,17073] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.361,0.278]
select surf_pocket60, protein and id [20806,20808,21187,19431,19680,20810,20836,19424,19429,19455,19401,19404,19654,19657] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.486,0.361]
select surf_pocket61, protein and id [6627,6974,7026,6628,6702,6656,6645,6660,7027,7059,7060,7061,7028,6612,6615,6703] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.396,0.278]
select surf_pocket62, protein and id [5569,5570,5587,5588,5590,4888,4891,4886,4914,4915,4911,4889,4923,4921,5307,5301,5592,5618,5585,5591,5586,5617] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.533,0.361]
select surf_pocket63, protein and id [4305,4311,4304,4308,4309,7692,8097,4314,8047,8065,8067,4293,7717,7719,8098] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.435,0.278]
select surf_pocket64, protein and id [18326,17996,18333,18176,17812,17850,18213,18227] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.580,0.361]
select surf_pocket65, protein and id [4694,4696,4698,10067,4662,4697,4663,5078,10047,10045,10046,10051,5077,5046,5075,5047] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.471,0.278]
select surf_pocket66, protein and id [4518,4889,4516,4860,4867,4835,5277,5278,4890,4891] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.627,0.361]
select surf_pocket67, protein and id [234,17075,16787,17042,17044,16788,16789,16790,17073] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.506,0.278]
select surf_pocket68, protein and id [14473,14482,14483,14484,14876,14877,14516,14518,14848,14840,14842,14843,14816,14849] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.675,0.361]
select surf_pocket69, protein and id [4460,4802,18756,4797,4795,4427,18774,18770] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.545,0.278]
select surf_pocket70, protein and id [25615,25199,25200,26084,26085,25647,25653,25612,25619,25605,25600,24799,24805,24792] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.722,0.361]
select surf_pocket71, protein and id [27387,27409,27410,19963,19965,27958,27981,20002,20004,20031,20003] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.580,0.278]
select surf_pocket72, protein and id [29080,27110,29079,29092,29095,27112,27109,28852,28853,28856,28892] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.773,0.361]
select surf_pocket73, protein and id [23486,23489,23499,23500,23503,23504,23505,22911,22913,23520,23525,23526,23479,23507,23516,22921,22946,23517] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.620,0.278]
select surf_pocket74, protein and id [547,458,578,579,115,197,90] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.820,0.361]
select surf_pocket75, protein and id [16907,16625,16657,16658,16532,16533,16895,16896,16917,16938,16918,16599,16626,16639,16631,16632,16636] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.655,0.278]
select surf_pocket76, protein and id [14648,14652,14660,14672,15374,14665,14645,14638,14651,15371,15373,15097,15370,15062] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.867,0.361]
select surf_pocket77, protein and id [14858,14860,14861,14857,14859,15191,14853,14886,15222,15233,15234,14945,14855,14846,14852,14880,14883,14848,14821,15193] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.690,0.278]
select surf_pocket78, protein and id [23015,22771,23054,23226,23249,23250,22773] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.886,0.902,0.361]
select surf_pocket79, protein and id [24205,24143,24347,24315,24349,24140] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.671,0.702,0.278]
select surf_pocket80, protein and id [17113,17251,17253,17292,17319,17019] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.839,0.902,0.361]
select surf_pocket81, protein and id [28211,28188,28214,28215,28216,26309,28219,24197,24198,26311,26313,24173,28191,26336,26308] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.635,0.702,0.278]
select surf_pocket82, protein and id [20735,20738,20892,20663,20720,20717,20774,20776,20676,20655,20660] 
set surface_color,  pcol82, surf_pocket82 
   
        
        deselect
        
        orient
        

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
        
        load "data/7OTV.pdb", protein
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
 
        load "data/7OTV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14454,14432,14434,14462,14260,14226,14229,14482,14547,14549,14544,14483,14543,14552,14231,14233,14561,14553,14557,15001,14601,14559,14562,14563,15003,14975,14879,14964,14966,14967,14973,14556,15010,15011,14826,14609,14611,14825,14608,15012,15168,14846,14852,14200,14223,14197,14225] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.427,0.702]
select surf_pocket2, protein and id [20285,20286,20288,20289,21685,19726,19729,19743,19744,19745,19746,19747,19748,20253,19708,21251,21252,21253,26157,26160,21250,21668,21669,21670,21671,22050,26161,19742,19781,19778,19780,19970,19971,19925,19927,19969,19928,19772,19930,19803,19908,19929,19805,20193,20231,26137,26140,19934,19952,22046,22067,26168,26169,26170,27772,27773,19756,26135,21284] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.522,0.902]
select surf_pocket3, protein and id [26388,27300,27302,26339,26341,27304,25771,25913,25914,25930,25946,25749,26382,26387,26340,26371,27287,28067,28074,28078,25734,25735,25740,25744,25748,26413,25721,25722,27399,27400,27311,27408,27409,27410,26230,27401,27329,27330,27402,26323,26319,26343,26330,26347,26373,28081,26231] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.384,0.702]
select surf_pocket4, protein and id [11393,11395,11396,11718,11680,11681,11683,3574,11361,11363,11650,11651,11652,11656,11657,28977,28979,28980,11631,11655,3198,11629,11632,11402,11405,3230,3231,3255,3256,3232,28962,28964,3601,3602,3635,28965,3573,3575,3548,3540,3192,3195,3196,3565,11327,11330,11370,11371,3539,3197,3199,11605,11606,3223,3225,3224,11394,11428,28959] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.467,0.902]
select surf_pocket5, protein and id [25159,25161,25163,25196,25113,25188,25090,25044,25045,25054,25112,24564,24771,25021,25016,24566,25220,25046,25219,24623,25139,24625,25092,25108,25140,25122,24595,24596,24769,24767,24743,24745,24742,24744,24693,24694] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.341,0.702]
select surf_pocket6, protein and id [735,371,372,374,375,622,625,626,769,768,731,732,756,757,767,400,407,408,399,791,792,431,432,433,794,598,562,588,737,738,656,648,650,403,405,342,590,685] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.416,0.902]
select surf_pocket7, protein and id [9439,9749,9917,9919,9921,9923,9924,9895,9896,9806,9777,9893,9894,9783,10279,9785,9804,9813,9955,9927,9404,9922,9384] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.302,0.702]
select surf_pocket8, protein and id [6158,18797,18819,18820,27043,27044,19237,19268,6149,6147,6416,6417,6418,18796,18798,27059,27051,27035,6414,18826,18827,18829,6407,6408,27038,6381,21210,19436,19204,19435,21208,21209,21211,27058,27060] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.361,0.902]
select surf_pocket9, protein and id [27286,27287,27288,28079,28086,28082,28083,28084,28078,28089,28094,27284,28838,28840,28856,28858,27422,27265,27266,27267,28081,27500,27531,27406,27311,27312,27410] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.302,0.278,0.702]
select surf_pocket10, protein and id [20598,20599,20634,20636,20909,20936,20638,21316,21317,21694,21724,20672,21142,21289,21292,20926,21315,21345,20923,20927,20935,20894,20907,21683,21112,21346,21140] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.416,0.361,0.902]
select surf_pocket11, protein and id [14246,14248,14269,14271,14240,14362,14363,14364,14297,14281,14278,13738,14406,14407,13709,13710,13711,13712,13713,13714,14249,13806,14393,13774,14395,13737,14242,14243,14244] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.341,0.278,0.702]
select surf_pocket12, protein and id [4225,4226,4191,4193,11405,11718,3626,3624,3635,3601,3602,3595,4224,11713,11715,11716,11717,28960,28945,28941,28942,28944] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.467,0.361,0.902]
select surf_pocket13, protein and id [26033,26000,26036,25997,24109,24143,24144,23892,24133,26251,24130,26256,26242,23863,23854,23860,23861,23862,26064,25511,25508,25509,25528,24100,24107,25524,25525,25534,25537,25541] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.384,0.278,0.702]
select surf_pocket14, protein and id [12387,2912,12029,12367,28984,28989,3230,3231,3239,3203,28995,2909,2910,2954,12359,12051,12054,12046,12047,12050,12025,12049,3206,12386,12388,12389] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.522,0.361,0.902]
select surf_pocket15, protein and id [83,17074,181,81,82,184,234,210,211,56,57,58,17064,188,190,189,107,158,88,90,150,85,17104,17105,16820,16822,17073,17107,16819,17072,17076,16801,16799,16802] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.427,0.278,0.702]
select surf_pocket16, protein and id [27762,27730,27732,19935,19909,19910,19903,19811,19812,19813,19884,19905,27699,27701,28721,19915,28722,19889,19777,19779,19776,27739,27736,27740] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.576,0.361,0.902]
select surf_pocket17, protein and id [21715,22122,22144,20302,20703,20705,22114,22145,22146,22147,22148,20704,21994,21967,22118,21968,22155,21744,21771,21773,20692,20698,21969,21970,20702,21747,20701,20700] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.471,0.278,0.702]
select surf_pocket18, protein and id [1098,1270,1096,1094,1071,948,950,952,1267,1292,1296] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.631,0.361,0.902]
select surf_pocket19, protein and id [25951,25963,25991,25929,25943,25947,27411,27408,27409,27410,26230,26318,26319,27422,27423,28044,28047,28081,28072,25945,25946,27413,25984,25988,27414,26231] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.510,0.278,0.702]
select surf_pocket20, protein and id [28425,28429,28431,28433,28453,27477,27497,27496,27502,28172,28179,28180,28134,28456,28463,27484,27485,27494,27503,27506,27507,27508,28135,28133,26746,26744,26745,28434,28423,28443,27489,27491] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.682,0.361,0.902]
select surf_pocket21, protein and id [9498,9661,9455,9515,9497,9505,9511,9506,9502,9659,9453,9095,9132,9430,9000,9123,9083,9054,9059,9061,9071] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.553,0.278,0.702]
select surf_pocket22, protein and id [7968,7973,7992,8507,8917,7971,8488,7998,25408,25410,25411,8918,25412,7970,7972,8330,8487,8337,8328,25421,8908,25424,8525,8524,7990,7991,7993,7994] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.737,0.361,0.902]
select surf_pocket23, protein and id [27461,28198,28195,28014,27961,27974,27439,27923,27925,28214,28246,28247,27919,27921,27967,25981,25982,25983,27964,28008,27440,28016,28010,28011] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.596,0.278,0.702]
select surf_pocket24, protein and id [27088,27089,27112,27113,27114,19737,19734,19735,21249,21250,19729,19730,27122,26165,27145,27714,21222,21235,21239,21240,21241,21242,21245,6087,6088,21226,21220] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.792,0.361,0.902]
select surf_pocket25, protein and id [19678,19647,19706,19707,19668,19671,19672,19675,19676,20226,19645,19806,19804,19648,20157,20189,20185,20186,20181,19670] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.635,0.278,0.702]
select surf_pocket26, protein and id [4191,4192,4193,11404,11405,11022,11000,11001,4190,3601,3624,3562,10984,3563,3565,11021,4163,3594,3595,4136,4161] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.847,0.361,0.902]
select surf_pocket27, protein and id [9139,9140,8013,8046,8014,8015,25437,25439,9643,9103,9648,9684,9687,9101,9104,9688,9164,9678,9680,9708,9709,9710,8532] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.678,0.278,0.702]
select surf_pocket28, protein and id [240,220,590,91,60,63,425,426,62,401,402,403,404,405,406,615,617,243,239,241,242,213,423,624,626] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.902]
select surf_pocket29, protein and id [25369,25362,25363,25364,25365,25366,25367,25368,25361,24869,24416,24419,24441,24442,24443,24444,25483,24449,24445,24446,24451,25466,25400,25402,25428,25427] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.678]
select surf_pocket30, protein and id [2799,2751,2750,2784,2782,2775,2781,2783,2832,2550,2798,2549,2507,2508,2752,2472,2476,2479,2475,2469,2547] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.847]
select surf_pocket31, protein and id [1359,1357,1614,1423,1639,1640,1298,1300,1301] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.635]
select surf_pocket32, protein and id [27472,28394,28757,28370,28371,27543,27535,27222,28366,28307,28308,28362,28364,28342,27551,27220,27549,27217,27251,27245,27246,27247,27552] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.792]
select surf_pocket33, protein and id [6027,5684,5685,5687,5680,5682,21595,5752,5753,5992,5996,6003,6004,21600,21592,5642,6002,5640,5991,5711,5646] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.596]
select surf_pocket34, protein and id [11652,12084,28979,11655,3198,12054,12031,3201,3204,3206,11627,12034,3230,3231,3203,28984] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.737]
select surf_pocket35, protein and id [6261,6264,6265,6247,6325,6624,6652,6673,6674,6326,18612,18609,18573,6256,18678,18679,6622,18611] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.553]
select surf_pocket36, protein and id [13504,13507,13870,13873,13874,14418,14415,13908,13899,13900,13898,13901,14817,14443,14788,13471,13875,13876] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.682]
select surf_pocket37, protein and id [27006,19294,19297,27031,27041,27045,27046,27049,27050,27051,27070,19480,27035,19266,19267,19288,19268] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.510]
select surf_pocket38, protein and id [2719,2335,3972,3441,2689,3094,2711,3118,3472,2709,2710,3980,3981,3091,3100] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.631]
select surf_pocket39, protein and id [9783,10279,9785,9813,9814,10277,9963,10239,10275,10276,9955,9927,9919,9921,9923,9924,9895,9896] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.471]
select surf_pocket40, protein and id [21391,21824,21543,21801] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.576]
select surf_pocket41, protein and id [14876,14882,14887,14889,15222,14913,14914,15220,15250,15251,15262,15263,14877,14880,14971,14974,14955] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.427]
select surf_pocket42, protein and id [27122,27123,27124,27366,27373,27374,26209,26211,26176,26165,27376,26207,27379,27388,26189,27146,27151,27148,27145,26185,6118,27343,27390] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.522]
select surf_pocket43, protein and id [1472,1252,1253,1176,1184,1149,1167,1543,1242,1150,1156,1157,1158,1131,1495,1469,1199,1520,1213,1191,1212,1218,1542] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.384]
select surf_pocket44, protein and id [16652,16261,16257,16254,16583,16585,16363,16651,16325,16594,16255,16256,16364,16552,16555] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.467]
select surf_pocket45, protein and id [10960,10966,10961,10964,11341,3525,3532,11300,11301,11280,11258,4032,11253,10985,3534,11339,3555,4031] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.341]
select surf_pocket46, protein and id [1787,1792,1795,1548,1574,1575,1798,1914,1508,1509,1478,1480,1760,1762,1500,1789] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.416]
select surf_pocket47, protein and id [10970,10964,10969,10984,10983,10985,3534,4096,4099,3555,4044,4135,3556,4098,4089,4091,4127] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.302]
select surf_pocket48, protein and id [17376,17378,17380,17379,17317,45,46,17080,17082,17083,17086,17088,15,17341,17375,17424,17339,17346,17116,17425] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.361]
select surf_pocket49, protein and id [7640,25652,25418,7638,7641,8000,25651,25416,25419,7996,25837,25839,25833,25835,25836,25475,25636,8020] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.302,0.278]
select surf_pocket50, protein and id [4464,4431,4433,4808,4462,4463,4453,4455,4799,4805,5229,5230,4801,4794,4807,4841,4842] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.416,0.361]
select surf_pocket51, protein and id [7636,7675,7676,7634,25877,25878,25675,7605,25674,7147,7176,7169,7613] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.341,0.278]
select surf_pocket52, protein and id [2715,2737,2740,2741,2746,2387,2384,2386,3980,3983,3985,3988,3989,2711,2359,2738,2739,2767,3150,3151,3152] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.467,0.361]
select surf_pocket53, protein and id [824,916,917,825,827,801,804,806,1271,1095,1120,1124,1122,1123] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.384,0.278]
select surf_pocket54, protein and id [27952,24197,24198,27946,27954,25972,27958,27959,27955,23919,23922,23921,23890,23891,24177,25970] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.522,0.361]
select surf_pocket55, protein and id [3175,3177,3165,3171,3174,11284,3523,3526,3527,3531,11298,11292,11295,11302,11277,3548,3540,3180,11327,11326,11605,11606,3181] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.427,0.278]
select surf_pocket56, protein and id [20872,20846,20780,20509,20510,20863,20865,20567,20594,20499,20506,20494,20497,20566] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.576,0.361]
select surf_pocket57, protein and id [27902,27901,27903,27936,27937,23656,23361,23360,23392,28286,28288,28255,23401,28258,28261,28221,28223,28224,28225,28227,23397,23398,23399,23400,23655] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.471,0.278]
select surf_pocket58, protein and id [19696,19698,19737,27084,19735,19736,27082,27106,27113,27654,27677,19763] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.631,0.361]
select surf_pocket59, protein and id [4944,4945,4969,4970,4973,5345,5622,5322,5325,5328,4916,4918,4912,4915,5334,5336] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.510,0.278]
select surf_pocket60, protein and id [1278,1422,1132,1409,1439,1441,1442,1131,1162,1249,1251,1445,1420,1587] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.682,0.361]
select surf_pocket61, protein and id [10125,10126,10127,10119,10069,10093,10067,9677,9679,9702,9704,9709,9674,10065] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.553,0.278]
select surf_pocket62, protein and id [1734,1656,1652,1654,1732,1417,1456,1458,1416,1425,1615,1387,1592,1621,1591] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.737,0.361]
select surf_pocket63, protein and id [21932,21934,21936,20700,21769,21771,20692,20698,21969,21970,20702,21770,21807,21808,22148,21968,22155,22183] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.596,0.278]
select surf_pocket64, protein and id [19304,19306,19038,18931,18902,18901,19005,18900,18906,19302,19308,19313,19317,19312] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.792,0.361]
select surf_pocket65, protein and id [23119,22733,22734,22481,22482,23118,23120,22705,22704,22502,22956,23083,23081,23082,22954] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.635,0.278]
select surf_pocket66, protein and id [12776,13000,12980,13004,12638,12628,12774,12640,12641,12659,12663,13037,13039,12645,13007,12978] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.847,0.361]
select surf_pocket67, protein and id [1992,1963,1621,1964,1772,2027,2029,1593,1651,1731,2015,2014] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.678,0.278]
select surf_pocket68, protein and id [14605,14612,15033,15076,15077,14616,15032,15055,15002,14595] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.902,0.361]
select surf_pocket69, protein and id [20236,20237,20380,20381,20053,20214,20377,20029,20032,20062] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.678,0.702,0.278]
select surf_pocket70, protein and id [13926,14192,14158,14159,13653,13893,13598,13626] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.847,0.902,0.361]
select surf_pocket71, protein and id [3511,3247,3220,3225,3182,3224] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.635,0.702,0.278]
select surf_pocket72, protein and id [10472,10487,10489,10468,10448,10450,10856,10576,10542] 
set surface_color,  pcol72, surf_pocket72 
   
        
        deselect
        
        orient
        
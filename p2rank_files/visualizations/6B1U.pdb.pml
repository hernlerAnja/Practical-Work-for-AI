
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
        
        load "data/6B1U.pdb", protein
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
 
        load "data/6B1U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [12560,13355,13356,14340,14343,14346,13910,14344,13354,7585,7578,7566,7574,7576,7577,13201,13796,13799,14350,14351,14352,14364,14362,13204,13795,13780,13790,14354,13353,13891,14183,14359,13890,13892,14180,14154,14169,14177,14182,14181,14165,14164,13210,13195,13199,13200,13202,13345,13181,13212,13213,13337,12559,13335,13909,13924,13925,13927,13929,13936,13937,13917,13915,13919,13938,14119,14121,14152,14118,14141,14143,14144,12698,12699,12701,12693,12691,12694,12707,12692,12702,12708,13785,13784] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [10222,11564,11565,11579,11593,11570,11543,11547,11546,10355,10221,10883,10353,10217,10363,10356,10378,10659,10354,10369,11572,11574,10368,10370,11454,11455,11437,11438,11441,2627,2608,2616,2618,2619,11584,11582,11778,11795,11810,11812,11823,10218,2634,11774,11776,11767,11769,11771,11592,10361,2656,10360,10660,10873,10876,12000,12001,12003,12014,11456,10882,10860,10867,10871,10872,10874,11010,10853,11436,10865,2630,11021,11022,11023,11024,11994,11995,11996,11831,11837,12009,10885,11003,11004,11006,11016] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [9772,9773,12322,9790,12319,12321,12329,12330,12331,9778,9779,7090,7091,7389,12301,12302,12303,12300,12281,12282,7119,7120,7121,7352,7356,7357,7118,9791,9777,12361,7420,7354,7379,7382,7388,7351,7350,12283,12284,12292,12293,12294,7475,7476,7477,7417,7419,7474,12360,7416,7422,7427] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.329,0.702]
select surf_pocket4, protein and id [1188,1189,1190,1183,1187,1182,1080,1092,1107,1108,105,718,721,1180,1184,1181,112,114,160,162,111,116,117,121,122,275,277,261,106,108,161,109,669,686,695,698,710,536,674] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.373,0.902]
select surf_pocket5, protein and id [5535,5570,4958,5537,6043,5945,6041,6033,6036,6037,6040,5385,5518,6034,5110,5959,5960,5541,5961,5544,6035,5567,5933,5940,5009,5010,5011,4955,4957,4954,4960,5123,4971,5124] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.310,0.278,0.702]
select surf_pocket6, protein and id [2469,9964,9965,9992,2462,2494,2495,9952,9953,9993,2465,2492,9954,9955,9948,9957,2466,2468,2434,2435,2430,2432,2457,2460,9956,9944,2259,2260,2261,2262,2426,2428,4757,4759,4775,9983,9984,9981,2550,4776,4765,4766,4767,2502,2549,2551,2491,10022,2548] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.451,0.361,0.902]
select surf_pocket7, protein and id [3696,3691,169,170,171,3688,3690,282,284,646,81,285,3754,25,26,27,79,78,154,155,151,281,145,147,3720,3739,3741,3719,3740,3735,3679,3482,3673,3501,3722,3723,624,625,3502,3503,298] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.392,0.278,0.702]
select surf_pocket8, protein and id [10986,10987,10988,10989,10884,11005,11003,2630,11021,11022,11023,11018,11020,11025,11026,11004,4507,10977,10979,10981,4494,4495,11031,11033,2613,2614,10015,2629,4502,10214,10218,10206,10208,10039,10212,10228,10229,10225] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.553,0.361,0.902]
select surf_pocket9, protein and id [8510,8736,5000,5002,5018,5019,5134,5020,8702,8703,8708,8701,5004,4874,4873,4875,4927,4930,8692,4935,5472,5473,5474,5496,5133,5495,8767,8490,8754,8753,8748,8752,8509,8511,8686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.471,0.278,0.702]
select surf_pocket10, protein and id [10853,10851,10852,10854,10855,10856,10858,10859,12143,11262,11436,11449,11294,11295,11261,10875,10876,11456,12004,12013,12108,12109,12121,12122,12135,12136,12144,10818,10862,11015,11457,11460,11450,11451,11448,11299,11296,11300] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.655,0.361,0.902]
select surf_pocket11, protein and id [9521,13309,13311,13313,9507,9508,9509,13363,13365,12377,12550,12567,13211,13319,13321,13322,12558,13213,13337,12557,13318,13336,7587,9516,7584,7586,7588,13354,13352,13320,12552,12546,12549,12544,12563] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.549,0.278,0.702]
select surf_pocket12, protein and id [13204,13795,13804,13780,13789,13792,13793,13794,13203,13800,14363,14468,14482,14483,14490,14491,14516,13596,14469,14455,13595,14456,13179,13180,13181,13183,13146,13152,13156,13634] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.757,0.361,0.902]
select surf_pocket13, protein and id [6114,6122,8250,9618,6124,6131,6127,6282,6283,8149,8151,8230,8128,8129,7978,7979,8115,7976,8131,9360,7977] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.627,0.278,0.702]
select surf_pocket14, protein and id [8219,8406,8434,7726,7730,8222,7734,7746,7747,7733,8433,8240,7827,7849,7798,7801,7820,8122,8123,7826,8407] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.859,0.361,0.902]
select surf_pocket15, protein and id [1958,1964,1490,1967,1456,1457,1243,4383,1466,1923,1463,1947,1966,4552,4553,4555,4559,4561,4548,4554,951,973,974,975,1009,986,1971,1974,1930,4407,4408,4381] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.690]
select surf_pocket16, protein and id [9680,12506,12507,12510,12530,12531,12473,12499,12532,7673,7677,9705,9848,9850,9851,9688,9691,9651,9649,9670,9656,9671,12474,12475,12539] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.839]
select surf_pocket17, protein and id [6413,6438,6440,6439,6454,6441,6442,6443,6452,6453,5612,5623,5613,5616,5585,5587,5589] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.612]
select surf_pocket18, protein and id [740,736,738,1359,767,1560,1586,1585,774,1599,1601,1600,1358,1588] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.733]
select surf_pocket19, protein and id [4675,4693,4833,4835,4656,4657,10192,10194,10136,10137,10135,10161,10168,4678,2693,4635,4637,2694,4642,4659,10193,10169,10172,2712,4427,10191,10202] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.533]
select surf_pocket20, protein and id [8299,8288,12647,12648,12644,12649,8307,13277,13279,13255,13258,12652,13038,12653,12656,13245,13244,13051] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.631]
select surf_pocket21, protein and id [491,961,2179,2180,2181,2209,2210,2214,2220,2226,2106,952,987,2138,2139,2140,954,1000,985,959,1001,930,932,2122,2116,502,504,2118,510,511] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.451]
select surf_pocket22, protein and id [10378,10659,10354,10330,10333,10631,10336,10337,10695,10338,10355,10657,10660,10865,10845,10853,10693,10717,10880,10877,10863,10867,10709,10714,10711,10715] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.529]
select surf_pocket23, protein and id [13274,13275,13253,6110,8277,8269,8320,8322,8329,13287,9608,9740,13302,9760,9743,9746,13284,9737] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.373]
select surf_pocket24, protein and id [3147,2991,2992,2993,3167,3144,3266,4604,1298,1429,1278,1280,1430,1271,1269,1274,1275] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.427]
select surf_pocket25, protein and id [9566,9567,9568,6096,9577,6309,6310,6319,6343,6815,6817,9575,5827,5826,5828,6825,6818] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.294]
select surf_pocket26, protein and id [13032,13039,13027,13043,13045,13037,13042,12675,12676,13230,13173,13193,13209,13208,12668,12958,12715,12716,12991,12982,12671,12674,12692,12693,12663] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.392,0.361]
select surf_pocket27, protein and id [5812,5814,7030,5783,5351,5353,6969,5336,7060,7061,7032,7076,7065,5360,5842] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.345,0.278]
select surf_pocket28, protein and id [3315,3304,10310,10314,10318,10315,10710,10723,3323,10947,10916,10927,10306,10311] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.498,0.361]
select surf_pocket29, protein and id [14335,14337,13390,13392,7452,13352,7587,9502,7571,7572,13354,9529,13313,9506,9509,13363,13365,7461,7464,9528,13357] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.427,0.278]
select surf_pocket30, protein and id [10955,10970,4727,4730,4733,4594,3335,3336,3337,3285,3286,3288,10942,10925,10943] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.600,0.361]
select surf_pocket31, protein and id [8511,8945,8964,8506,8507,8488,8498,8493,8503,5464,5465,5466,8965,8967,9068,9069,5166,5167,8958,8845,8846,5474,5149,5150] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.506,0.278]
select surf_pocket32, protein and id [2726,4634,4652,2746,3433,4686,3434,4630] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.702,0.361]
select surf_pocket33, protein and id [615,617,3503,3526,3480,3485,3495,3498,3499,3948,3949,3951,3929,3928,3830,3941] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.584,0.278]
select surf_pocket34, protein and id [8414,8415,7729,9697,9664,9666,9644,7710,9648,9654,9659,9714] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.804,0.361]
select surf_pocket35, protein and id [12173,12174,12200,11902,11903,11249,11251,11174,11237,11238,11172,11173,11175,11177] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.663,0.278]
select surf_pocket36, protein and id [4718,4802,4422,4707,4416,4620,4618,4619,4621,4414] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.894,0.902,0.361]
select surf_pocket37, protein and id [3230,4393,2732,2719,2728,4395,2707,4415,4399,2755,2722,2756,4387] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.655,0.702,0.278]
select surf_pocket38, protein and id [13291,9824,12659,13288,8338,12404] 
set surface_color,  pcol38, surf_pocket38 
   
        
        deselect
        
        orient
        
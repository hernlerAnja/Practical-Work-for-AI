
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
        
        load "data/7MYJ.pdb", protein
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
 
        load "data/7MYJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [13772,14335,13881,13882,13887,13889,14317,14321,14324,13778,13910,13862,13863,13864,13860,14330,14151,12668,12665,12666,12667,12681,12682,13891,13178,13182,13183,13184,13185,13187,13188,13193,13195,13196,13186,13753,13166,7525,7527,13901,13897,13896,13899,13335,13332,13333,13334,7528,13908,13909,14093,14095,14315,14314,14316,14154,14127,14129,14140,14148,14153,7539,12537,13314,13316,7517,7543,12672,13904,13930,12676,7565,7563,7564,14084,14086,14091] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [10190,10191,11554,10325,10328,11521,11567,11568,11539,11540,10187,10186,10321,10326,11545,11547,11429,10318,10319,10320,10334,11549,10335,10853,10854,10976,10978,10994,10996,11964,11968,11799,11977,11430,11522,11969,11980,11982,10851,11971,10829,10836,10840,10841,10842,10843,10844,10834,2531,2521,2543,10997,2532,2529,11778,11780,11791,11962,10995,11961,11963,11803,11804,11805,11557,11559,2547,2563,2569,11744,11749,11751,11753,11746,11770,11776,2567,11588,11742,10822] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.478,0.902]
select surf_pocket3, protein and id [13315,13316,13336,13340,13342,13331,9462,7538,7539,12529,12533,12534,7522,14302,14305,14306,13369,13333,7535,13298,13299,13300,12543,12526,12527,12540,13288,13290,13292,13297,13194,9476,9461,9463,9460,9481,9482,9483,12332,7357,7358,7365,7370,13344,9469,9475,12521,7523,9451,14308,13370,13371,9454,7359,7360,12356] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.333,0.702]
select surf_pocket4, protein and id [10181,4418,10183,4424,4410,4411,4409,2538,2539,2526,2527,2542,2543,10008,10950,10952,10954,10956,10959,4412,11004,11006,10995,11949,11952,11953,11955,10991,10993,10998,11033,2438,10992,10999,11031,4431,4432,2435,2433,2426,10175,10177,10853,10854,10976,10977,10978,10994,10960,10961,10962,10852,10194,10198,10187,10188,10197] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.380,0.902]
select surf_pocket5, protein and id [535,668,1184,1186,1179,1180,1183,173,1175,1178,1088,123,118,717,720,1076,289,669,465,1193,273,673,119,121,122,687,172,174,126,287,134,135,124,125,127,533,1103,1104,709,691,697,694] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.302,0.278,0.702]
select surf_pocket6, protein and id [5959,5961,5962,5965,5966,5968,5449,5035,5466,5050,4934,4936,5049,4935,4880,4881,4886,4883,5468,4884,4897,5870,5317,5319,5454,5478,5884,5885,5960,5472,5318,5958,5490,5493,5498,5501,5886,5475,5858] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.435,0.361,0.902]
select surf_pocket7, protein and id [7042,7043,7045,7293,7294,7295,7260,7263,7258,7262,9733,12339,12340,9745,9746,9734,9735,12300,12301,7322,7323,7325,7384,7385,7290,7285,7289,7380,7382,7328,7333,9727,12282,12309,12281,7044,12261,12308,12310,12271,12273,12269,12270,7288,12272] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.376,0.278,0.702]
select surf_pocket8, protein and id [10820,10823,10824,10825,11269,11235,11236,12104,11420,11423,11424,11270,11273,11263,11411,11426,11431,11981,12069,12067,12068,10844,10845,12096,12097,12082,12083,12105,11432,11435] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.533,0.361,0.902]
select surf_pocket9, protein and id [8647,8673,8449,8451,8690,8691,8640,8641,8669,4804,4805,5058,5405,5426,5427,8430,8704,5059,4928,4943,4854,4855,4858,4944,4945,4863] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.451,0.278,0.702]
select surf_pocket10, protein and id [3430,3431,3429,3624,3646,3647,3619,623,622,624,646,39,3677,3679,3410,3666,3664,3665,38,40,3618,94,297,181,182,183,92,645,294,296,164,167] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.631,0.361,0.902]
select surf_pocket11, protein and id [2912,2913,2914,2915,3181,3063,1264,1265,1266,1267,4520,1257,1273,1421,1292,1422,1271,1270,3047,3081,3083,4259,3060,3162,3061] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.529,0.278,0.702]
select surf_pocket12, protein and id [14450,14449,13572,13166,13131,13164,13165,13168,13753,13762,13765,13766,13573,14427,14428,14441,14442,13768,13773,14414,13173,13325,13326,13187] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.725,0.361,0.902]
select surf_pocket13, protein and id [7773,7774,8158,8177,8374,7802,8346,8347,8349,7796,8061,7681] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.604,0.278,0.702]
select surf_pocket14, protein and id [4550,2645,2646,2663,2665,3351,3378,3352,4529,4546,3171,2656,2659,2660,4568] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.824,0.361,0.902]
select surf_pocket15, protein and id [1439,4470,4478,4469,4472,1944,1952,1950,1482,1953,1450,1449,1455,1458,1448,4298,4300,1916,4324,4325,1918,1911,1933,4468,4471,969,970,971,1005,947,1957,1960,973] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.678,0.278,0.702]
select surf_pocket16, protein and id [4609,4749,4553,4751,4752,10161,10162,10163,4569,4573,4575,4572,4591,4594,10130,10170,10160,4551,4552,4554,4558,2614,2615,2631,4344,10107,10104,10105,10106] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.878]
select surf_pocket17, protein and id [739,735,737,768,769,773,1578,766,1355,1552,1577,1591,1593,1580,1592] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.647]
select surf_pocket18, protein and id [9660,9805,9806,12516,12484,12487,12508,12483,9624,9643,9645,9635,12507,12509,12476,9603,7648,9605,9606,7629,9610,9625,9627,7625,12453,12454,12455,12452] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.780]
select surf_pocket19, protein and id [4692,9991,4681,4682,4683,2362,2364,2390,2391,2393,2396,2401,4691,9961,2394,9934,9952] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.569]
select surf_pocket20, protein and id [6338,6379,6378,6364,6366,6367,6372,6377,6137,5554,5547,5548,5545,6363,6365,6368,5516,5518,5520] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.682]
select surf_pocket21, protein and id [8354,9653,9652,9620,9618,9581,8355,9598,9602,9608,9611,9613,7673,7677,7683,8173,7675,7662,7663,8175] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.494]
select surf_pocket22, protein and id [7005,6918,6919,7000,7007,6959,6960,6961,6994,6989,5765,5778,5738,5708,5269,5284,5286,5293,5740,5732,6898,6990,6886,5730,6920] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.588]
select surf_pocket23, protein and id [7925,7924,7926,8054,8068,8070,8185,6047,6207,6208,9317,6052,8052,8067,6056,8090,6049,6039,9572,8166] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.420]
select surf_pocket24, protein and id [9520,9521,9522,6234,6235,9529,6021,5753,5752,6244,6744,6746,6747,6752,6754,6268,9523] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.490]
select surf_pocket25, protein and id [10678,10680,10303,10850,10683,10684,10849,10834,10832,10836,10846,10319,10320,10343,10295,10298,10301,10302,10668,10664,10686,10814] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.341]
select surf_pocket26, protein and id [9698,9701,9710,9713,9695,8260,9562,9692,9563,9763,9765,13253,13254,13263,13266,13281,9715,8259,8262,8205,8208] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.392]
select surf_pocket27, protein and id [10663,10622,10624,10625,10370,10596,10594,10319,10320,10341,10342,10343,10333,10335,10301,10302] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.294,0.278]
select surf_pocket28, protein and id [12650,13191,12645,12648,12649,13027,13028,13213,13177,12666,12667,13174,13192,13022,12642,12941,13024,12979,12978,13176,13030,12690,12969] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.424,0.361]
select surf_pocket29, protein and id [12621,12618,12623,13228,13023,13225,13036,12627,12626,13227,13232,13256,13238,8247,13258,12577,12630,8228,8239] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.369,0.278]
select surf_pocket30, protein and id [3221,3257,10912,3256,3258,10915,10916,10928,10943,10907,10894,4663,4661,3201,3203,3202,3204,4648,4649,4643,4640,4646,10905] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.522,0.361]
select surf_pocket31, protein and id [5395,5397,8428,8433,8438,8786,8787,8906,8908,8905,8907,9010,9007,8446,8447,8886,8443] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.443,0.278]
select surf_pocket32, protein and id [2796,2767,3054,3055,3172,3154,3373,2835,3344,2791,2792,2788,2790] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.620,0.361]
select surf_pocket33, protein and id [3225,10692,10271,10276,10275,10280,10679,10886,3244,10918,10283,10885,10920,10896] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.518,0.278]
select surf_pocket34, protein and id [14479,13562,14480,14508,14509,13549,13545,13491,13492,13488,13489,13490,14220,13487] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.718,0.361]
select surf_pocket35, protein and id [616,3426,3454,3408,3413,3423,3427,312,614,615,313,3430,3431,3870,3848,3850,3851,3871,3872,3873,3755,3754] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.596,0.278]
select surf_pocket36, protein and id [5080,5118,9137,5084,5387,5392,5094,5087,9129,9156,9055,9033,9034,9035] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.812,0.361]
select surf_pocket37, protein and id [354,355,356,4017,606,4018,4111,4085,3998,322,4093,3979] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.671,0.278]
select surf_pocket38, protein and id [11225,11145,11146,11148,11211,12135,12134,12169,12162,12164] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.890,0.902,0.361]
select surf_pocket39, protein and id [4534,4535,4536,4347,4623,4346,4537,4331,4333,4634,4339] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.655,0.702,0.278]
select surf_pocket40, protein and id [2191,2192,2163,2092,2161,490,510,501] 
set surface_color,  pcol40, surf_pocket40 
   
        
        deselect
        
        orient
        
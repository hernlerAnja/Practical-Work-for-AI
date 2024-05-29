
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
        
        load "data/4GYW.pdb", protein
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
 
        load "data/4GYW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5581,1958,1959,1965,2706,2708,2700,3015,3027,3017,5586,5589,5590,5588,5592,5595,5598,5596,5597,1469,2721,2722,2725,2726,2727,4664,4666,5570,4008,1468,4027,4265,4495,4497,4668,4672,4673,4674,4658,4680,3028,4662,5547,5568,5576,5584,4475,4267,5577,4493,4000,4005,4036,4037,3993,1972,3766,1948,1988,1996,1949,3767,3769,3764,4244,4521,4523,4525,3984,4522,4524,4477,4480,4490,4701,4489,2549,5603,2545,2548,2543,2542,1926] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [7423,7424,7426,7455,10137,7431,8159,9961,10136,10138,10165,7408,11032,11034,11048,9953,9954,9957,9959,11011,11012,8167,8486,8487,11041,9472,9729,9731,9467,9987,9988,9989,9984,9985,9708,9986,11045,11050,11053,11054,11056,11059,9475,11036,11040,11009,9944,9941,9939,9465,10144,9451,9460,9503,9504,10126,10128,10130,11060,11061,6920,6921,6945,8185,8186,8184,9494,7427,7407,9234,9236,9231,9233,9210] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [921,923,5604,5608,1478,1479,1466,1476,1477,1128,918,930,5624,5628,5630,1447,1450,5632,1136,1138,1129,1137,1433,662,895,896,5603,5607,1190,1192,4007,1160,1161,4024,4026,1468,4025,4027,1191,955,957,939,5591,5595,5599,5602,4272,4273,4274] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [6382,6373,6375,6612,6613,6928,6930,6931,6580,11094,11096,6588,6589,6590,11095,6581,6885,6557,6558,6559,11092,6556,6407,6409,6642,6643,6644,9491,9732,9736,9737,9738,6929,6952,6895,9493,6321,6542,6544,6377,6383,6113,6114,6347,6328,6348,6391,6393,6370,6379,11067,11066,11068,11071,11072,11055,11059,9474,9728,9730,11076,11087,11088,6902,11089,6918,6920,6945] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [6944,8177,8178,8188,8183,8191,6919,8194,10287,8382,8195,8380,8197,8367,8368,10283,10279,10275,8372,6996,7025,10269,10272,10274,6991,7021,7022,7023,7030,6915,6938,6939,6942,6908,6937] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [1566,2908,2909,2913,1536,1541,1564,1538,1463,1456,1485,1486,1457,1563,2729,2732,2921,2923,2736,2735,2738,2719,1487,1490,4805,4811,4808,4810,2724,4815] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [11084,11077,11080,7142,7143,8048,7111,7089,7086,7118,8040,8047,8049,8020,11093] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [7725,3813,7491,7498,7727,3730,3814,3806,3810,7736,7745,3809,3817,7510,7531,7529,7530,7722,3718,3727,3721,3757,3803,3726,3729,3728,3695,3696,3698,3839,3822,3823] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [10203,8601,10642,10609,10610,10618,10619,8886,8887,8903,8904,8684,10589,8870,10198,8687,10615,10587,10611,10585,8889,8891,8892,8897,8868,8901,10646,10643,10644,8874,8875,8596,10649,8598] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [2561,5620,5616,2590,1659,5626,1630,1684,2588,2589,1652] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [8669,8674,8676,8680,8704,8663,8678,8654,8655,8657,8686,8687,8694,10052,10583,10548,10586,10613,10581,10582,9412,9414,10551,10552,9404,9405,9396,9397,9658] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [2268,2039,9281,9202,2051,2070,2071,2072,9277,9273,9276,2263,9200,9181,9190,9193,9199,9201,9270,9289,9290,9306,2032,2286,2277] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [4588,3945,3947,5117,5086,5088,5085,3245,3929,3930,3935,4194,3226,3227,3235,5118,5122,5115,5084,5149,3204,5126,3210,3215,3217,5087] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [1015,1017,1146,1119,1121,1123,1273,1277,1268,1269,1270,1011,1037,1308,1070,1039,1040,1013,1231,1242,1279,1239,1211,1212,1232,1234,1174,1276,1272,1018,1213] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [5119,5121,5123,3141,3225,3228,3431,3142,4739,5150,5151,5146,5155,5157,5145,5147,3426,3429,3430,3420,3417,3419,5180,5182,5178,5179,5184,5126] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [2244,3069,3070,2019,2020,3064,3065,3068,2047,8761,2045,5282,2273,2272,2018,3061,3062,3063,8753,9278,9279] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [3615,3632,3633,3635,10792,3627,7544,7545,7546,10856,7547,10817,7558,7524,10788,10826,10827,10823,10814,10819,10820,10824] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [4601,4678,4681,4706,4683,4760,4708,4655,4682,4616] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [1138,1104,1105,1090,1092,1107,5628,662,896,876,869] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [6684,6467,6468,6469,6470,6596,6626,6598,6489,6491,6571,6573,6760,6683,6691,6694,6575,6729,6730,6731] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [8008,8010,11067,11062,11052,8001,8003,7384,7385,8002,8167,7417,7416,7418] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [6236,6238,6312,6314,6477,6478,6479,6441,6442,6444,6445,6337,6239,6449,6214,6210,6212,6213,6215,6425] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [9105,2086,9087,2088,9098,9104,2099,5350,5353,5324,5363,5348,5355,5356,5359,5360,5392] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [2203,3777,3784,2244,2013,2242,3067,3070,3071,2201,2202,2240,2241,3785,3792,3798,3773,2014,3073] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [7699,7703,7472,7701,8529,8530,8526,9265,9244,9251,9252,9259,7661,7662,9240,8532,8536,8534,7473] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [3742,1949,3769,3781,2183,2198,1946,5547,5565,5568,5548,5562,5563,5570] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [787,885,786,860,862,1026,997] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [10119,10145,10146,10147,9448,10065] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [2580,2770,2778,2743,2523,2505] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [9813,9811,9838,9835,6669,6670,9526,9525,9559,9846,9844] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [5582,1957,1959,1939,1940,1945,1920,2184,2187,1916,2163,2164,1925,2552,2550,2551,2548] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [468,332,333,505,283,285,250,253,251,475,477,478] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [7376,7377,7384,8007,8014,7404,7413,7416,11046,8011,7627,7622,7623,7401,7643,7644,7646,7398,7375,7397,7399,7403,7389,7379,7380] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        
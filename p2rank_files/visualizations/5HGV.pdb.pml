
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
        
        load "data/5HGV.pdb", protein
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
 
        load "data/5HGV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5581,5586,5589,5590,4008,5588,5592,5595,5596,5597,1468,2722,2725,2726,2727,4664,4666,2549,5603,2542,2543,1469,2721,4027,1493,4036,4645,1964,1968,1972,1996,2700,2702,3016,3026,1957,1958,1959,1965,1949,5584,1925,1926,2548,2509,2706,2708,5572,5576,4480,5577,4523,4525,4668,4672,4673,4674,4701,3028,4662,5546,5568,4266,4267,3984,4005,4680,4037,4658,4475,3769,4489,1948,1988,3766,4490,4493,4495,4497,4477,4244,4520,4521,4522] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9961,10136,10138,10144,9987,9989,10165,9451,9988,9986,7424,11056,7423,11061,8167,6921,11059,11060,10137,9504,8485,10126,10128,10130,8159,8184,8185,8186,11045,11036,11048,11032,9944,9953,9954,9947,9984,9985,9475,11050,11053,11054,11040,11041,9730,9731,9939,9941,11010,11008,9472,9467,9708,9494,9503,6945,9460,7427,7426,7431,9959,9957,7455] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [923,1478,1479,1447,1477,925,930,921,922,1190,1192,1160,1161,4007,4024,4026,4027,4025,1463,1493,918,1191,955,957,939,941,5602,5604,5607,5608,1466,5591,4008,5595,1468,5624,5628,5625,5630,1136,1137,1138,869,1104,1105,1090,1092,1107,5632,1450,1443,1433,662,895,896,876,4274,4272,4273,4268] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [6375,6930,11072,6918,6928,6929,6931,11076,6902,6915,6377,6382,11088,11087,9474,9493,9491,6612,6613,9727,9729,9494,6945,6952,6370,6379,6391,6393,9736,9738,9732,6348,6373,6580,6588,6589,6590,6347,6643,6644,9737,6407,6409,11071,11068,11055,11063,11066,6920,11059,11089,11094,11096,11092,6086,6084,6089,6112,6113,6087,6088,6090,11082,6556,6557,6559,6297,6321,6328,6329,6298,6299,6544,6542] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [8020,11084,11080,8047,8048,8049,8040,7086,7118,7087,11093,7089,7111,7142,7143,7109] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [10642,10643,10644,8889,8887,8891,8868,8870,8892,8596,8902,8903,8897,8901,8904,8598,8601,10649,10646,10619,10585,10609,10610,10611,10618,10587,10589,10203,8687,10615] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [2561,5616,2581,1659,5620,5626,5629,1630,1684,1650,1652,2589] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [2037,2268,2284,2285,2286,2051,2070,2071,2072,2263,2039,9202,9273,9277,9281,9276,9290,9193,9289,9200,9201,9190,9199,9224,9170,9194,9168,9270,9306,9969,9222,9223,2032] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [3727,3728,3729,3718,3721,7529,7530,3730,3822,3823,3800,3806,3817,3803,7531,7498,7510,3809,3810,3813,3814,7496,7725,7727,7736,7745,7722,7491] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [9414,10581,9412,10551,10552,8657,8704,9396,9397,9402,9405,8678,8674,8676,8687,10614,10051,8686,8694,10582,10583,10613,10548,10586] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [5087,5088,5084,3215,3217,3219,3245,3929,3930,3935,3936,4194,3204,5126,5122,3195,3198,3937,3945,3947,5117,3226,3227,3235,4587,3228,5149,5115,5118] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [7023,7025,8371,8369,6915,6908,6937,6938,6942,10272,6944,8183,8188,8191,8194,8197,10283,10275,10279,7021,7022] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [1146,1270,1039,1120,1122,1123,1015,1011,1174,1231,1242,1279,1239,1212,1232,1234,1238,1273,1276,1277,1017,1018,1070,1037,1040,1308] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [5180,5182,5146,5178,5179,5145,5155,3139,3141,3142,5185,5184,3226,3228,4739,5150,5151,5147,3429,3432,3225,5123,5126,3417,3420] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [10119,10146,10147,10170,10172,10145,9455,9466,9448] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [6468,6467,6469,6470,6596,6626,6690,6691,6694,6683,6728,6729,6730,6731,6598,6491,6574,6575] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [3633,3627,3632,3635,10792,10817,7524,7557,7544,7545,10856,7546,7547,3615,10814,10788,10823,10824,10820] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [1456,1485,1566,1564,2910,1461,1463,1486,1487,1490,2729,2732,2719,2735,2738,2912,2724,1563] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [11065,8002,8001,8003,8010,8004,8007,8008,11052,7418,11062,11067,11061,8167,7384,7385] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [787,885,786,860,862,997,993,1026] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [2163,2164,1916,1920,1926,2548,1939,1940,1945,1957,5582,1959,2184,2187,1930,1929,2552,2550,2551,2549] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [2098,5392,2086,9087,2087,2088,9098,9104,9105,5348,5350,5355,5356,5322,5324,5325,5353,5359,5360,5363] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [6337,6449,6312,6215,6441,6444,6445,6478,6442,6425,6443,6236,6238,6239,6314] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [2770,2743,2505,2778,2523] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [9844,9813,9811,9838,9835,6669,9525,9526,9524,9846,6670] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
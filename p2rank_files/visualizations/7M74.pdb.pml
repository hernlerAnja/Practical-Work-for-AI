
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
        
        load "data/7M74.pdb", protein
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
 
        load "data/7M74.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6536,6537,7416,6309,7413,7414,7415,7412,8880,6307,6308,6719,6727,6728,8838,8839,8852,8854,8841,8843,8844,8845,8846,6552,6554,6555,6690,6693,6694,6695,6329,6330,7080,8249,6697,6701,8233,8234,7077,7430,7432,7434,8763,8764,7445,7446,8008,8009,7431,7433,7428,7429,6321,7390,7859,7861,606] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [1185,663,1184,1089,715,661,244,92,680,682,125,1187,1049,1066,258,96,98,100,101,105,146,94,95,144,145,88,89,90,123,260,109,115,106,686,692,1103,1104,1105,689,535,704,712,703,1065,1090,1077,1179] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [452,11503,11504,453,11501,1224,1202,1210,1208,545,549,552,664,1209,445,480,1196,1198,1194,1188,1199,1181,531,1013,11479,11480,11482] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.345,0.702]
select surf_pocket4, protein and id [3789,3790,3792,4131,4132,4135,3794,3795,4164,3775,2265,2268,2269,3393,3400,3410,3475,4005,4069,4098,3611,2247,3609,3649,3590,2243,2246,4099,3633,3634,3474,4004,3761,3594,4156,4155,4157,4122,2226,2221,3411,3406,3409,3451,4007] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.400,0.902]
select surf_pocket5, protein and id [5597,5601,5602,5603,4185,5605,5007,5008,5455,5464,5592,5595,5596,6042,6043,6045,4854,4855,6041,6055,5462,5586,5587,5588,4332,4316,4317,4318,4865,4862,4864,4323,4181,4182,4183,4324,4177,4180,4852,4851,4850,4989,4853] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.282,0.278,0.702]
select surf_pocket6, protein and id [389,628,629,630,119,279,280,285,286,273,342,326,327,333,338,320,321,317,318,290,292,293,289,649,1232,1230,276,122,418,420,419,11509,11510,11508,579] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.408,0.361,0.902]
select surf_pocket7, protein and id [1006,11461,11075,11102,11070,11071,11072,11073,11074,11110,11112,11125,9761,11439,11057,10920,10937,10938,9776,9778,11124,9763,11553,11554,11442,11537,11538,11555,11441,9747,9745,11460,1004] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.353,0.278,0.702]
select surf_pocket8, protein and id [5793,5800,5586,5587,5614,5615,2199,2201,2202,6037,6041,6055,6053,6035,6024,6031,6034,6050,5568,5856,5864,5869,5870,5569,5837,5802,5601,5602,5603,5604,5606,5607,5008,2197,2198,2200] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.498,0.361,0.902]
select surf_pocket9, protein and id [6334,6301,6365,6366,6679,6677,6678,6681,8417,8250,8531,7058,8481,8530,7059,8416] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.420,0.278,0.702]
select surf_pocket10, protein and id [10489,10660,10661,10463,10465,10460,10461,9960,9961,9997,9998,10426,10464,10466,10462,10490,10197,10412,10516,10518,10040,10041,10520,10640,10644,10646,10499,10657] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.584,0.361,0.902]
select surf_pocket11, protein and id [6723,8814,8817,6726,8816,6748,6749,6747,6775,6728,8852,8854,8815,8822,6758,6557,6560,6552,6550,609,610,606,613,614,8856,621,622,604,605,283,302,303,304,612,6561] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.490,0.278,0.702]
select surf_pocket12, protein and id [3604,3640,3641,3642,3820,3043,3042,3044,2292,2298,3077,3582,2300,3565,3078,3603,3586] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.675,0.361,0.902]
select surf_pocket13, protein and id [7225,7227,7254,7253,7731,7363,7360,7380,7382,7762,7480] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.557,0.278,0.702]
select surf_pocket14, protein and id [1427,1437,1441,1442,1467,1375,1376,11450,11452,1428,11429,11576,11586,1413,1457,10856,10851,1456,1926,1927,10912,10913] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.761,0.361,0.902]
select surf_pocket15, protein and id [11825,12151,12152,12153,11824,11826,11830,11831,11832,11833,12253,11950,11951,11952,11953,11995,12233,12234,12236,12232] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.627,0.278,0.702]
select surf_pocket16, protein and id [4331,4332,4333,4317,4318,4339,4341,4367,4622,4623,4340,4675,4844,4846,4674,4845,4847,4860,4861,4655,4296,4299,4594,4300,4301,4303,4679,4691,4684,4688,4882,4696,4632,4670,4630,4631] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.851,0.361,0.902]
select surf_pocket17, protein and id [8888,8887,8889,8917,8956,8957,9018,9077,9047,9075,9014,9016,9017,9015,601,608,8855,8857,587,11,18,23,25,28,592,8863,8891,8990,8861] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.698,0.278,0.702]
select surf_pocket18, protein and id [8693,8691,8692,6925,6926,6927,8725,8723,7071,8717,8540,7072,6907,6904,6908,6906,8695] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.859]
select surf_pocket19, protein and id [4855,4856,5444,6181,6180,5463,5453,6167,6162,6166,6150] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.635]
select surf_pocket20, protein and id [2870,2874,2873,4920,2869,3684,3685,2866,2944,4926,2941,2942,4905,3703,3705,3689,3698,3699,3709,3714] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.773]
select surf_pocket21, protein and id [613,614,8856,621,622,9070,9059,9062,9067,9071,268,154,267,8814,8817,8815,8822,9056] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.565]
select surf_pocket22, protein and id [11522,9451,9452,1252,1253,1254,1248,1250,9456,9426,9428,11491,11492,1432,1244,9473,1434,9477,11498] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.682]
select surf_pocket23, protein and id [5035,5971,5972,5099,5177,3861,6227,5176,6226,3859,5033] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.498]
select surf_pocket24, protein and id [9946,10060,10062,9944,10048,10049,11744,12145,10391,12132,12133,11836,11837] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.596]
select surf_pocket25, protein and id [2852,2853,3546,3682,3684,3685,2863,2866,2944,2946,2867,2869,3668,3535,2951,2952,2976,2975,3689] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.427]
select surf_pocket26, protein and id [7490,7489,7713,7420,8870,8901,7452,7464,8868,8892,8893,8894,8895,7714,9001,7466,9023,7657,7454,7455] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.506]
select surf_pocket27, protein and id [478,1195,1197,959,1193,967,526,957] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.361]
select surf_pocket28, protein and id [671,672,673,1165,1166,677,691,1118,543,544,4489,4438,4491,504,506,1121] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.420]
select surf_pocket29, protein and id [2381,2382,2501,2518,3205,3206,3189,3199,3202,3203,2535] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.290]
select surf_pocket30, protein and id [10137,10136,10115,9134,9136,9137,9138,9140,9842,9843,9844,9845,9139,9149,9150,12844,12845,12827,12793,12820,12821,12822,12826,9145,9148,10122] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.388,0.361]
select surf_pocket31, protein and id [37,35,5351,8984,8985,8986,8987,8988,8981,8983,8957,9018,16,28,192,193,194,9008,9009,9010,9017] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.337,0.278]
select surf_pocket32, protein and id [4272,4262,4269,2928,2929,2927,4929,4273,4225,4281,4896,4931,4283,4897] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.478,0.361]
select surf_pocket33, protein and id [2717,2718,2738,2740,2719,2843,2844,2720,2561,3338,3520,3556,3557,3313] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.408,0.278]
select surf_pocket34, protein and id [7562,7564,7559,7561,7563,7604,8755,7606,7558,8760,6951,6952,6958,6957,6955,6956] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.565,0.361]
select surf_pocket35, protein and id [3347,2307,2808,2756,2757,3307,2309,2308,3376,3378,3369,3371] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.475,0.278]
select surf_pocket36, protein and id [10321,10323,10344,10346,10087,10086,12003,12004,12007,12020,12022,12023,12010,12160] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.655,0.361]
select surf_pocket37, protein and id [11950,11952,11949,11994,11995,11985,12234,12236,11971,11972,12151,12152,12153,12000,12166,12002] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.545,0.278]
select surf_pocket38, protein and id [1594,730,1072,1071,1553] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.741,0.361]
select surf_pocket39, protein and id [11646,11649,11892,11372,11651,11652,12093,11890,12095,11660,11661,11672,12112,12067,12110,11373,11371] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.612,0.278]
select surf_pocket40, protein and id [2402,2816,2571,2572,2376,2401,2375,2380,2537,2542,2544,2726,2729] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.831,0.361]
select surf_pocket41, protein and id [11936,12252,11837,11838,11854,11937,12125,12139] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.682,0.278]
select surf_pocket42, protein and id [11294,11395,11396,11195,11197,11045,11046] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.878,0.902,0.361]
select surf_pocket43, protein and id [1683,1685,1686,1309,1310,1316,1286,1390,1391,1392,1394,1682,1684,1680,1681] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.651,0.702,0.278]
select surf_pocket44, protein and id [12767,12917,13118,13119,13121,12683,13123,12662,12768,12669,12656] 
set surface_color,  pcol44, surf_pocket44 
   
        
        deselect
        
        orient
        
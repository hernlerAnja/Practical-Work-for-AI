
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
        
        load "data/3LW0.pdb", protein
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
 
        load "data/3LW0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1273,1274,1275,1278,1287,1288,761,762,763,1264,1265,1268,1262,1271,1291,1304,211,212,1138,1141,1378,1305,1116,1119,1120,1104,1105,1121,1122,566,567,568,1259,642,648,657,536,537,538,543,539,498,221,223,540,541,542,222,560,395,210,544,746,565,658,661] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [6063,5343,6074,6075,6076,6089,5340,5341,5342,5922,5923,5013,5023,5024,5299,5942,5917,5927,5928,5939,5195,5562,5563,5564,6072,5196,6060,6066,6069,5547,5012,6092,6105,6106,6179,6224,6221,6240,6222,5906,5864,5904,5367,5345,5361,5344,5366,5368,5369,5438,5443] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [7417,7589,7722,7729,7730,7723,7724,7725,7726,7727,7728,7692,7828,7949,7754,7752,7753,7751,8249,8448,8290,8291,8302,8305,8306,8308,8289,8464,8454,8457,8459,8460,8461,8473,8474,8307,8327,8477,7405,7406,8490,8491,8450,8451,8324,8325,8625,8606,8607,7948,7588,7849,7932,7947,7834,7835,7843,7847] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [2961,3512,3513,3514,3515,3509,3497,3498,3520,3571,3666,3667,3668,3680,3534,3681,3698,3655,3657,3658,3664,2931,2934,3155,3156,2787,2788,3671,2959,2960,2930,2937,2958,2932,2953,2935,2933,2605,3139,3531,3832,3532,3771,3813,3035,3652,3036] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [4986,4985,5618,5964,6098,6099,6131,6133,4992,6125,6091,6122,5609,5612,5616,5641,5642,4993,4994,4995,4998,5593,5608,4987,4989,4990,5992,5993,6070,6081,6084,6086,6077,5585] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [7378,7379,7380,7382,7384,7385,7386,7387,7388,7976,7977,7978,7965,7970,8469,8471,8472,7967,7985,7993,7994,8378,7997,8001,8003,8027,8026,7391,8507,8510,8484,8483,8511,8516,8518,8462,8455,8476,8377,7456,7383] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [1296,1276,1283,1285,242,1192,1286,1297,1290,1324,192,193,197,1321,186,188,189,184,185,190,191,779,784,1298,811,815,817,841,1330,1332,1342,840,798,807,799,808,792,790] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [3669,3204,3208,3585,3210,3683,3690,3691,3717,3723,3714,3676,3678,2581,2585,2586,2582,2578,2584,3673,3679,2590,2597,3735,3233,3234,3725,3172,3174,3177,3184,3185,3183,3200,3201] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [8132,8133,8130,8099,8102,8129,8131,8037,8047,8071,8103,8128,8172,8173,8174,8417,8418,320,321,322,323,8412,8413,8415,8411,8414,8416,8384,8038] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [3398,3618,3619,5120,5121,3620,3621,3622,3623,3610,3337,3338,3339,3340,5124,5122,5123,3369,3333,3336,3335,3218,3379,3380,3591,3245,3242,3244,3279,3381,3309,3278] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [5653,5788,5789,5652,5686,5662,5747,5744,5745,5746,5717,2713,2714,2716,5748,6028,6030,6029,6031,6027,6026,5787,5743,5777] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [987,988,851,1198,942,986,1225,976,849,885,1230,1226,1227,1228,1229,1231,7514,7515,7517,852,943,944,945,946,916,918,912,913,7516,947] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [6020,6022,6039,5807,6018,6026,7050,7051,7052,7061,7062,7063,7064,7065,7068,7109,5420,5421,5422,7110,5432,7056] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [4657,4658,4659,3398,3399,3618,3619,3014,3631,3610,3611,3612,3614,4675,4677,4717,3024,4671,4672,4716,4663,4668,4669,4656,3369,3370,3333,3336,3335,3337,3013,3379] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [1238,620,621,1221,631,1006,2250,2251,2249,2261,2262,2264,2255,2263,2260,2309,2308,1224,1225,1233,1234,1226,1217] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [9450,9455,9456,9458,8407,8192,8424,7807,7817,9437,9464,8404,8403,8410,8419,8420,9444,9445,9446,9443,9503,9504,7806,9457] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [7962,7955,7956,7958,8391,7840,7838,8407,8440,8441,8423,8424,8406,8390,7799,7804,7806,7957,7500,7857,1218] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [618,1255,652,1238,620,621,1219,1221,769,770,776,772,771,1204,1205,1237,1239,1254,1220] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [2064,2066,4356,4384,4385,4354,4357,4359,4394,4396,4607,4382,4389,4390,2080,2084,4605,2114,2116,4606,2072,4360,2068,4614] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [5419,5421,5452,5572,6056,6020,6021,6022,6039,6055,6005,5570,5571,5573,5577,5588] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [3162,3163,3165,3597,3598,3169,3006,3045,3011,3013,3164,3648,2699,3014,3631,3612,3613,3614,3161] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [8257,8750,8751,8787,8255,8752,8753,8754,8755,9343,9339,8227,8230,9355,8756,8761,8763,9334,9337,8229,9356] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [1497,1522,1523,1520,2094,4642,2077,2078,3364,4639,3323,3325,1852,1865,3322,1488,1490,1494,4637,3331,3327,3330,3326,4628] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [4562,4563,3434,3460,3466,3467,3470,4545,4544,4541,4546,3957,3958,3970,3959,3960,3461,3462,3464,3961,3994] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [2155,2160,2142,2143,2139,1043,1068,1073,1074,2161,1564,1565,1071,1566,1568,1069,2144,1567] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [2355,2356,2373,2372,2374,2306,2313,2316,2317,610,611,601,612,616,607] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [2998,2994,4781,3000,3005,4721,4724,4725,4763,4764,4728,4730,4714,4778] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [1475,1610,1613,2043,1450,1749,1750,1848,1873,1875,1881,1882] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [8796,8799,8945,9239,9240,9083] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
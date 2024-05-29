
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
        
        load "data/1NXK.pdb", protein
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
 
        load "data/1NXK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5057,5059,5845,5848,5849,5841,5842,5843,5844,5712,5724,5851,5701,5700,5713,5354,5143,5311,5740,5741,5326,5318,5323,5025,5307,4806,4807,4808,4922,4762,4763,4755,4756,4757,4761,4939,4768,4774,4937,5322,4759] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1155,1167,243,249,250,1290,413,288,502,238,239,232,1291,1287,1283,1284,1281,244,535,776,777,398,1280,619,781,796,797,799,1183,1184,1282,793,533,286,287,233,235,236] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [8080,8092,8200,8108,8109,7727,7729,7730,7724,8202,8203,8206,8199,8201,7473,7712,7554,7756,8209,7195,7201,7183,7188,7189,7239,7182,7184,7186,7187,7343,7238,7358,7359,7445,7708,7705,7707,8207,8208,7360] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [2673,2504,2510,3566,3567,3569,3033,2493,2542,2543,2544,3568,3080,3467,3055,3052,3466,2658,2495,2496,3049,3044,3048,3450,3573,3438,3574,3576,3030,3032,2879,3037,2492,2498,2499,2501] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [6104,5694,5707,5708,6141,6896,6184,5370,5372,6086,6321,6290,6197,6289,6075,6082,6073,6103,6105,6194,6198,6200,6919,5697,5717,6921] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [8953,8954,8942,8945,1447,1450,1473,1456,1503,1478,1479,1482,2015,2038,2060,2022,8950,8976,2049,2054,2048,1442,1443,1085,1475,1476,1477,1474,8708,8709,8710,8707,1401,1061,2061,2067,2055,2058,8718,8944,8943,8721] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [3148,3147,3112,3113,3115,3476,3478,3114,3496,3249,3251,3125,3223,3512,3527,3537,3238,3239,3242,3273,3274,2863] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [7891,8148,7864,7887,7893,7886,7881,7884,8146,7865,8120,8118,8160,7915,7879,7880,8163,8170,8166,7538,7916,7786,7788,7790,7800,7837,7826,7824] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [2073,8718,2077,8724,8740,8925,8943,2081,2082,8742,8900,8726,2059,2071,2072,2076,8901,8902,8903,8877,2079,2083,8878,8938,8939,2075,2108,2109,2111,8735,8741,8759,8761,2107] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2410,2682,2458,2666,2551,2552,2459,2966,2968,4592,4556,4557,4548,4555,2472,2488,4554] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [6017,6617,6044,6624,6631,6606,6615,6618,6616,5962,6034,6035,6036,6037,5616,5618,6039,6040,6043,5643,5622,5623,6038,5614,5615,5586,6008,6011,6004] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [1132,1137,1151,1140,1159,1160,1150,1580,1623,1624,1636,1511,1513,1515,1512,1514,1759,1760,1633,1637,1639,1487,1488,1521,1525,1542,1543,1544] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [5802,5389,5750,5385,5425,5423,5424,5790,5548,5519,5816,5819,5751,5752,5523,5525,5399,5459,5492,5512,5513,5516,5494,5496,5495] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [2988,2708,2744,2939,2941,5039,5040,5041,5037,5081,5042,4619,5080,4612,4616,2956,5067,2940,4609,4615,2389,4634] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [4947,5229,4946,5231,5232,8622,16,18,4816,8621,8620,26,27,4801,4944] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [8038,8042,8230,8232,8430,8432,1419,8431,1359,1381,1383,8052,1386,1392,1391,1418,8468] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [7351,7148,7149,7101,7150,7109,7367,7368,7639,7641,7246,7684,7621,7628] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [7984,8399,8422,8425,8426,8446,7986,7988,9010,8998,9001,9003,9004,9017,8992,8416,8418,8419,8420,7982,7983,8390,8386,8421,8393] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [3415,3800,3802,3804,3821,3822,3823,3420,3433,3434,3423,3791,3793,3918,3982,3902,3903,3859,3952,3983,3915] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [5714,5717,5355,6927,6928,6929,6861,5408,5368,5370,5372,6834,6835,6832,5707,6896,6891,6893,6894] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [869,908,968,891,892,939,1193,1195,1255,1241,859,856,966,937,962,990,991,1229] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [1068,1043,1045,1077,8647,8648,8660,5236,5237,5239,5240,554,8636,8638,8639,5234,5235,5238,51,54,56,578,577] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [5248,5250,5251,5237,8683,8661,8678,8662,8677,1068,5238,8621,5229,5231,8622,8712] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [3733,3736,3740,3757,3762,3752,3753,3754,3344,4282,4285,3782,4276,4287,4242,4265,3729,3341,3756,3342,4301] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [3443,3902,3903,3859,3081,3094,4500,4501,3133,3858,3904,3885,4498,4523,3432,3433,3096] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [840,1150,1580,1623,1579,1624,1625,1606,1608,2269,2270,877,2267,2285,1160,838,878,824] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [1511,1513,1515,1512,1514,1759,1488,1999,2017,1518,1997,2043,1516] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [7755,8074,1369,1371,8075,8085,7771,7773,8522,7769,8549,9215,8523,8568,7808] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [4169,4195,4197,4279,4346,4157,4158,4163,4164,4344,4348,4159,4160] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
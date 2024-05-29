
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
        
        load "data/2RD0.pdb", protein
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
 
        load "data/2RD0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5225,3487,3489,3490,3488,8421,8416,8418,8420,8412,5203,5207,5208,5209,5224,5219,7817,7818,7813,7814,7860,3513,3514,4879,7809,7810,5210,5214,5215,5216,5217,5218,3658,9054,9056,8445,3638,8478,8480,8506,3646,8444,8470,8471,3482,3477,3480,3633,3634,3635,3636,3637,3657,3503,3307,3308,3566,3567,3525,3582,3592,3578,3583,3584,3587,3581,3579,7802,7808] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [48,50,6397,6398,6399,6400,47,49,6490,6491,46,69,7230,41,42,70,6437,6439,5,6,6616,1,6515,6517,6499,7231,6368,6407,6408,6435,6436,4793,6370,6371,13,2288,2317,2325,2326,2329,2330,2316,2359,2358,2360,2349,2350,2351,15,1481,1482,1483,2320,1553,2318,2319,1525,2289,2291,2292,2293] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5103,5104,5105,5847,5853,5856,6616,6532,6535,6537,6538,6531,6372,6373,6522,6547,6314,4783,4787,4789,4791,6371,5099,5150,5151,5100,5101,5102,4784,4785,4820,4822,6345,6340,6341,6344,6312,5069,1466,2292,5067,5068,5857,5858,5866,5859] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [6051,6224,5985,5986,5987,7266,7267,6653,6696,7185,7186,6279,6305,6527,6529,6605,6606,6607,7265,6030,6243,6244,7273,5998,6005,7274,7276,6307,6306,6308,7270,7268,6671,6672,7269,6031,6624,6053,6622,6627,6655,6611,6629] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [3236,3238,2730,2745,2812,3472,3464,3465,3296,3473,3466,3663,3664,3239,3232,3665,2715,3653,2727,3496,3240,3241,3245,3532,3246,3533,3535,3249,3251,3658,9054,9056,9057,9091,9092,9094,9064,2738,3497,8413,9093,9127,9128,9129,9130,9126,3490,3485,3488,3491] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [8103,8104,7057,7367,7388,8135,8105,7597,7055,7620,7619,7587,7590,7593,7594,8098,8099,8091,7356,7082,7083,7081,7630,7631,8070,8071,8069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [5866,5865,2172,5829,5830,5862,5863,5864,5859,5867,5868,5871,2168,2169,5890,2181,2178,5857,5858,5057,5062,1432,1434,5063,5066,5067,5068,1435,1449,1452,5070,1464,1465,1466,1467,5373,5375,2517,5400,5061,5401,5402,5403,1441,1443,1444,2502,2489,2490,2493,5104,5105,5847,5853,5856,5361] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [760,784,757,782,783,1027,1031,994,1002,1017,1018,1026,721,837,785,749,751,1054,5452,5453,5455,5454,1051,1052,1053,1055,1057,1034,5425,5392,5393,1029] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [1050,5475,5477,5476,1072,5167,5168,1074,5193,5188,6562,6558,6564,5501,5502,6567,5140,5166,5192,5163,5198,5196] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [1539,1580,1581,1582,117,91,97,102,118,2348,65,87,74,2362,1543,6474,6981,7016,6476,6493,6979,6959,6988,89,6960,6957,67] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [1161,1162,1174,3362,3364,3374,3438,3439,3440,3412,3337,3349,3363,3330,3333,3334,3606,3609,3610,3327,3328,4917,4919,1177,3358,3365,3372,3624,3611,3625] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [700,701,718,721,836,837,785,1027,994,1002,1017,1018,1026,749,751,1046,1044,1045,1047,1048,1072,1029,686,1051,1052,1053] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [7874,4589,7876,3580,3575,3576,3582,3573,4578,4580,4581,4579,2887,2890,2886,2888] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [6382,6414,6416,6379,6405,6406,6408,4768,4805,4769,4794,7729,4770,4762,1489,4509,4739,4803,4501,4503,4504,7728,4517,4520,7706] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [2075,2079,2113,2114,2115,2078,2080,2081,1678,1937,1935,1943,1906,1907,2421,1679] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [5453,5455,5454,5780,5781,5786,5790,820,5754,5782,5784,5485,818,5425,5426,5392,5393,760,784,782,778,777,774,773,788,772,793,776,817] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5848,5856,2,6614,6616,6615,6203,6198,6200,39,5850,6613,6620,5836,4,5878,5880,6183,5877] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [5467,5843,5494,5820,5822,6599,6216,5897,6082] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [1379,1380,1381,1382,1383,1384,2208,2230,1857,1855,1856,2123,2124,2443,2444] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [5858,5881,14,15,17,16,2181,1467,5,6] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [2429,2430,2458,2459,2413,2414,1686,1684,2428,2418,2424,2431,2494,6122,6123,6124] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [4608,4585,4596,4598,2878,2882,2884,4331,4333,4334,4336,4613,4289,4290,4295,4296] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [7385,7431,7432,8105,7510,7509,7557,7405,8130,8148,8150,8131,8134] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [7776,7310,7100,7103,7308,6329] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        
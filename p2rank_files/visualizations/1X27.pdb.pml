
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
        
        load "data/1X27.pdb", protein
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
 
        load "data/1X27.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7961,2731,2733,2901,5924,7947,5927,2732,2734,7950,7952,7958,7959,7960,7955,7970,2722,2888,6488,6509,2896,2898,6491,6489,6482,6485,5932,5923,5925,5929,5930,6145,5918,5920,2379,2380,2381,2382,2366,2373,2372] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [6605,6716,7557,3977,3990,3991,4102,7554,4941,4943,4940,5018,3980,4342,5023,5039,5037,3981,5025,4942,5024,5033,5034,7651,7636,7638,7639,7647,7653,7648,7553,7634,7633,7561,7563,7541,4346,6603,6604,6591,4927,5017,5020,6594,6595,6957,6592,6956] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [3636,3713,1367,1368,1369,3633,3634,3035,3036,2673,2671,2399,2398,2683,2684,2305,2320,2319,2321,1355,1356,1479,2318,1359,2674,2670,2793,2795,2396,1720,2417,1358,2415,3717,3726,3727,3730,3732,3718,3708,3711] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [5004,8080,4988,4994,4995,6809,6819,6654,6822,4971,6620,6622,8081,8074,8076,8067,4907,6644,8079,6652,6653,6655,680,1265,683,8084,1240,679,688,1244,6810,1247,1245] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [1995,1998,2000,4039,4041,8190,4040,7609,2556,2580,2554,4205,4206,4208,2576,4203,7618,8191,8192,7598,7601,7602,8196,8197,7614,2562,2560,4195,4193,1991] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [3875,3877,3895,3891,3894,3870,3902,5347,5348,3306,3311,3313,3309,3310,5346,3879,7905,7906,7907,7909,5345,3904,5510,5512,5515,5503,5499,1067,1065,1066] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [258,259,268,271,7815,7816,6311,8130,103,104,8134,8135,8128,8133,7231,7232,7791,7234,7800,7796,7798,7792,7795] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [6327,1083,54,6248,6249,6250,6247,6234,1003,990,5295,5297,5296,5298,6325,5649,5285,5287,6344,5284,6340,6346,5653,41,43,44,53,405,409,40,164,165,1081,1087,1088,1011,1012,1002] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [441,492,439,440,493,1149,1150,1118,1153,1154,239,1156,1187,6793,1188,6796,6792,6785,6786,6783,6797,707,507,509,1282,1283,6781,499,500,1147] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [8012,8017,1419,8014,8018,8019,4617,4618,4620,1417,5182,1573,5184,5201,5202,1583,1584,3695,3696,1586,1418,1416,5210,5211,1415] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [2862,2865,2876,5682,5683,5684,2858,6431,6432,6393,6394,6362,6397,6398,6400,6390,6391,5751,5753,6360,6365,6363,6526,5743,5744,5735,5736,5737] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [7705,7701,7738,235,7669,7698,7704,6989,7670,7060,7043,7042,7044,246,234,241,242,7058,228,7050,7051,7833,7834,232,6990,6991] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [2623,2630,3069,3123,3122,3130,3129,5471,3747,3749,3137,3139,3142,3071,3780,3783,3779,3748,3777,3818,5486,5490,3912,5489,3786,5476,5478,5479] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [7398,2184,7422,7394,2186,7412,7420,2182,8136,8137,8138,7393,8140,7421,6103,6105,6091,6167,6476,6477,6087,6168,6085,6086,6475] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [4377,5093,4375,5056,5058,5124,5125,5081,5082,5084,5087,5090,5091,5086,5055,5053,4437,4429,4428,4430,4444,4446,5219,1550,1557,1560,1561,1553,1554,1555,1542,1547,1545,4378,4391] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [8203,8200,8202,7784,8178,2161,2165,2170,2171,2172,2167,8175,8179,8171,8174,2162,2178,2179,2182] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [2437,1782,1765,1781,1783,2339,2111,2112,2447,2414,2419,1751,2422,2325,2340] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [4172,4164,4171,4178,4169,2502,4179,4182,4183,1814,1815,4167,4165,1754,2436,2438,2464,2433,2465,2468,1807,1824,1827,1822,1808] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [2471,1600,1754,1756,2472,2436,2433,2470,2432,1528,1323,1551,1552,1553,1554,1555] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [3096,3097,3754,3175,3373,3410,3426,3427,3080,3737,3752,3654,3655,3611,3640,3066,3729,3734] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [7993,7990,3553,3554,7996,8025,7997,3863,8024,4807,4787,4789,4794,4623,4786,8004] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [450,796,797,1107,1112,467,468,466,981,1023,1024,1025,780,1104,1122,1124,436] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [2544,2158,2547,2176,6115,2162,7965,7966,7967,7969,2548,2239,6113,6114,6091,6112,6094] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [2865,5251,5682,5683,5684,5685,6362,6397,6398,6400,6401,6431,6394,6365,6363,5736,5483,5484,5529,6439] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [7575,7655,7658,7576,7650,7663,7017,7018,7347,7348,6987,7673] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [6348,6351,6254,6268,6269,6040,6366,6368,5711,5710] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [5048,5049,4734,5050,4404,4733,4403,4405,4947,4961,4962,5044,5041,4373,4717,4919] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [8014,8003,8005,3688,3671,3600,3601,1409] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [1041,1058,5338,5337,7909,7898,5347,5348] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
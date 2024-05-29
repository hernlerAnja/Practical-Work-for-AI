
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
        
        load "data/6VGL.pdb", protein
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
 
        load "data/6VGL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7684,7685,7828,8629,8630,8631,8643,8644,8628,7521,7511,7520,7758,7760,7509,7513,7515,7762,7501,7479,7484,7485,7486,7488,8165,7490,7497,7498,8622,8623,8542,8129,8130,8131,8133,8543,8137,8646,7756,7754,7757,7786,7787,7789,7534,7535,7536,7669,8080,8084,7935,7702,7480,7482,7483,7478,8102,8105,7796,8487,8488,8516,7517,8807,8808,8809,8806,8485,8526,8512,8138,8478,8648,8669,8652,8654,8653,8670,8771,8798,8801,8793,8788,8785] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4370,4394,4369,7580,4393,4401,4403,4405,7578,3996,3998,4004,4006,4009,4431,4002,7380,7381,7960,7382,7650,7965,4399,7596,7597,7603,7604,4398,4430,4439,4463,7636,4465,7646,7647,7648,7642,7574,7634,7639,7366,7581,4371,7388,7390,7350,7353,7355,7320,7338,7339,7341,7346,7348,7349,3897,3900,3915,3963,3965,3992,3914,7321,7324,3929,7352,7354,4023,4024,3870,7347] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2224,2241,2794,1600,2216,2217,2218,2219,2222,2645,2549,2559,2567,2571,2546,2548,2595,2596,1364,2574,2575,2220,1370,1570,1587,1588,1523,1556,1072,1322,1360,2553,1373,1375,1571,1361,1362,2281,2808,2810,2809,2811,2798,2793,1593,1594,1595,1596,1597,1049,1050,1526,2251,2252,2256,2257,1621,1026,2280,1025,2262,2260,1052,1057] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6122,6123,6128,6129,6130,6131,6042,6043,5605,5630,4979,4980,4983,5035,4982,4986,5034,5036,4985,5020,5021,5022,5023,5184,4987,5025,5026,5286,6146,5185,6144,5202,5328,6026,4997,4998,5001,4988,4990,6154,5004,5015,6021,5637,6012,5665,5633,5579,5580,5169,5290,5284,5435,5584,5602] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [6456,7496,6222,6223,6224,6449,6459,6455,6458,6483,7474,7113,7114,7118,7707,7119,7122,7693,7529,7708,7711,7494,7500,6226,5912,6457,5887,5888,5913,5910,5911,6184,7504,7142,7143,5914,7084,7085,7086,7545,7694,7081,7103,6462] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3728,3731,3643,2636,3723,2580,2634,3642,3180,2635,2769,2582,3205,3184,3202,3613,3621,3626,3237,3612,3233,3238,3265,2579,3230,2583,3229,2588,2590,2591,2585,2586,2597,7267] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [116,117,122,123,1266,715,717,718,307,173,174,118,120,121,736,743,768,771,775,776,1261,1150,1179,1180,1181,803,573,722,740,734] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [424,428,429,466,427,1284,1292,1424,153,155,399,394,397,1282,1290,1126,135,138,158,159,136,137,139,1266,1267,1268,1269,1164,322,323,174,147,151,340,149,1427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3908,2848,2860,2861,2862,2889,2617,2619,2615,3884,3892,3893,3894,3898,3901,3748,3754,2886,2887,3746,7260,7263,3578,3758,7334,7336,3886,3887,3885,3888,3769,3770,3870,2888] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [7079,7084,7078,7080,7081,7082,7446,7448,7449,6432,6433,6431,6384,6418,6462,6385,7453,7459,7462,6243,6222,6223,6224,6449,6450,6235,6232,7467,7474,7471,6237] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [7045,6495,6892,7046,7047,6492,6525,6855,6684,6685] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [1501,1503,1530,1534,1536,1540,1930,1931,1417,1418,1448,1452,1453,1438,1932,1451,1467] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [3511,4055,4056,4058,4062,3827,3510,4057,3512,4719,4724,3483,4722] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [7099,7090,7559,7544,7400,8054,8055] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2482,2746,2749,2481,2679,2677,3065,2480,2466,2447] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4285,4647,4492,4645,4095,4643,4644] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [8992,8995,9543,9544,9545,9547,9185,9184,9397,9392] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2183,2185,2041,2035,1823] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
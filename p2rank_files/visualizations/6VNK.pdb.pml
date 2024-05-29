
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
        
        load "data/6VNK.pdb", protein
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
 
        load "data/6VNK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7468,8761,8598,7659,7753,7458,7477,7478,7479,7456,7447,7448,7454,7455,7480,7445,7443,7744,7745,8621,8622,7743,7746,7713,8478,8596,8597,8582,8583,8464,8610,7785,7641,7642,7493,7473,7470,7717,7719,7714,8604,8606,2415,8440,2413,8467,8430,8753,7465,8758,2411,8722,8745,8750,8736] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [8815,8817,8848,8850,9245,9283,9317,9282,2736,9292,2421,9246,8781,8858,8856,8859,8861,2749,2734,8864,8865,8875,8876,8844,8722,8766,8767,2445,2447,2680,9221,9222,9253,9255,2678,2739,2696,2697,2698,9251,2702,2703,2458,3060,2480,2481,2482,2674,2742,2740,2441,8738,8739,8741,2437,2438,2457,2461,2444,8740] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [6444,7453,6216,6217,6227,7138,7452,7665,7668,6450,6451,6452,7114,7119,6453,5883,5906,5907,5908,5882,7137,7117,7113,7098,6457,7073,7074,7079,7081,7108,7109,6454,6445,6383,7076,7077,6380,6379,6413,6427,7406,7403,6230,6232,6237,6428,7405,7424,7650,7651,7502,6221,7451,7428,7431,7450,6218,6219,7667,7457,7416,7419,7410] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1596,1600,2252,1621,1593,1595,2596,1594,1025,1026,1051,1052,1072,1048,1049,1050,1360,1587,1588,1068,2256,2257,2260,2808,2604,2280,2281,2217,2219,2241,2644,2794,2575,1364,2595,2594,1361,2793,2809,2810,2811,2222,2223,2224,2549,2571] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [2784,2785,2636,3725,3726,2597,3749,3904,3583,3611,2585,2586,2590,2591,2634,3718,3723,3724,3717,3621,3607,3638,2620,2623,2601,2609,2615,2617,2618,2619,2598,2621,2622] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3637,3621,3232,3607,3638,3228,3224,3225,3260,2769,3179,2580,2582,2583,3200,3718,3723,3717,3175,3197,3035,2584,2585,2578,2579,2635,2634,2636,3725] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [573,1180,1181,307,722,120,121,743,768,740,1266,1261,771,775,803,1150,1164,123,124,172,173,117,118,1267,1268,718,174,135,136,126] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [7436,7437,7442,7491,7492,7493,7626,7439,7440,7641,8575,8032,8478,8582,8580,8089,8464,8473,8117,8057,8494,8054,8048,8081,8082,8036,8495,8085,7445,7443,7447,7454] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6038,4975,4973,4974,4979,4980,5624,6036,5625,5628,6123,5164,4977,5030,4978,5597,5591,5593,5600,5574,6118,6037,5031,5632,5660,6007,5579,5572] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5180,6124,6126,6123,6125,4999,5016,4992,5015,5018,4981,4982,4980,5179,5031,5000,4993,4996,5983,6011,6021,4985,4986,6147,6148,6149,5012,5013,5014,5982,6139,6317] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1571,1556,1570,2644,2575,1375,1361,1373,2218,2219,2220,1522,1523,1600,1360,1370,1587,1588,2559,2562,2549,2567,2571,2546,2548,2553] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1269,323,161,1268,158,159,160,322,174,163,123,124,135,136,126,143,139] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2860,2889,3880,3893,3865,3883,3879,2886,2617,2618,2619,3896,3888,2862,3741,3743,3745,3748,3573,3764,3765] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1633,2183,2185,2186,1497,2030,1993,1663,1472,2041,1823,1822,2035,2040] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3478,3508,4714,4717,3506,3507,4052,3505,4050,4051,4734,3470,3480,4726,4730,4719,4709,3822] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [9498,9499,9137,9344] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [6892,7043,6898,6897,6680,6679,7040,7042,6487,6490] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
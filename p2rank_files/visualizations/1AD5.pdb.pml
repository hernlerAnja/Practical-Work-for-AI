
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
        
        load "data/1AD5.pdb", protein
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
 
        load "data/1AD5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2980,3009,3092,3094,2990,3095,3098,3099,3100,3101,2067,2068,3118,3127,3126,3133,2131,2528,2532,2536,3010,2348,2472,2474,2234,2350,2171,2173,2503,2327,2328,2326,2942,1922,1921,1923,2054,2060,2064,2066,2088,2089,2457,2502,1866,1861,1863,1865,2050,2480,2048,2052,2473,2456,2499,2495,2497,2943,1895,1897,2537,2565,2962,1862,1869,1880,1882,1894,3182] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [7234,7244,7243,7352,6321,7353,7355,6320,6322,7380,6343,6385,7393,7196,7379,6786,6790,6791,7264,6782,6783,6819,7235,7216,7197,6136,6148,6149,6150,6151,6153,6753,6757,7263,7346,6727,6582,6728,7354,6710,6425,6711,6602,6756,6580,7366,7367,7348,7349,6488,7372,7387,6175,6177,6314,6318,6117,6119,6120,6749,6176,6134,6115,6116,6122,6123,6124,6304] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [4043,4044,4045,8325,8328,8329,3878,8326,3880,8362,8413,8414,8327,8365,8442,8443,8396,8106,8132,8134,8298,8299,8338,4159,4160,8059,8093,8094,8052,8056,8092,4084,4071,4072,4074,4075,4073,4079,4111,4107,4108,4142,3852,3804,3805,4102,949,957,948,723,4188,4189,956,4201,3839,3840,3841,3838,5211,8455,3798,8318,8320,5201,5203,8356,4977,4991,5202,4986,4990,4965,4966] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5020,5021,5022,5384,5387,5381,4976,4994,8343,8352,6971,8383,8384,6940,8385,8387,6939,6944,6950,6979,6980,6981,6974,6975,6951,6978,5025,5066,5068,5369,5029,8379,8382,8399,8430,8438,8398] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [4089,4098,740,2721,2724,2726,767,1115,1127,2717,2685,2686,4131,4144,4145,4125,4129,4130,2727,775,812,814,2697,2696,2694,2725,4176,4184,4218,768,1130,1133,1143,771] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [7040,7042,6541,7043,6563,6540,6542,7039,7072,8318,8319,8320,5203,7044,4961,4965,4966,5006,8356,4950,6550] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2296,711,752,2287,2286,2288,712,696,949,736,4065,4066,2786,2788,2789,2790,4102,2785] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [5858,4315,4929,4931,5851,5852,4877,4887,5881,4327,4328,4766,4769,4862,4767,4768,4858,4316,4793,4859,5048,5855,4934,4938,4913,4937,4957] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [5887,5888,5883,5889,5891,6590,6552,6553,5859,6591,6592,7278,7282,6738,6744,6759,7327,7328,7310,7279,7293,7311] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [949,947,948,723,737,711,712,4071,4074,4073,4111,4064,4066,4102] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [608,659,669,680,684,604,623,602,631,632,633,683,675,677,72,74,1604,1605,1601,1597,1598,514,61,62] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [7425,7426,7427,7428,7194,7435,7177,7179,7378,7377,7393,7567,7546,7509,7510,7516,7176,7566,7568,7513,7514,7178] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [3174,3314,3172,3312,3259,3260,3255,3256,3262,3292,3227,3173,2924,2923,3124,2925,3123] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [6551,6552,6550,6553,5046,5859,5860,7328,7310,7293,7311,5003,5004,5005,5006,4959] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1633,1637,2338,2336,2337,2298,3074,3057,3024,3025,3039,2484,3073,3056] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1691,156,480,166,339,130,152,153,154,162,1687,1690,131,1682,132,335,337] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [651,625,593,595,596,662,652,1004,1005,1377,1379,1380] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [8124,8084,966,1206,965,8083,969,972,961,992,7972,7973,7980,7957,7990,7986,7956] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [4589,4591,4593,4420,4594,4416,5945,5946,4410,4413,4734,4384,4385,5936,5941,4386,4406] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3654,3903,3905,3906,3383,3547,3546] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
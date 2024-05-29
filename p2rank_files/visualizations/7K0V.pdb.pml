
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
        
        load "data/7K0V.pdb", protein
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
 
        load "data/7K0V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1164,1167,1175,1166,1176,1178,1183,1184,1075,1158,1169,1171,1034,1046,1161,1159,674,677,679,683,672,1076,141,1162,1177,1185,1160,120,121,169,652,651,657,170,268,408,7576,7589,7590,7592,999,1153,1155,434,514,1152,1146,427,424,433,435,462,505,426,252,629,630,267,255,260,264,266,612,615,659,654,1035,1047,1048,1049,4529,4534,4537,4546,700,702,684,709,1232,4539,4524,4525,1180,1181,1197,711,678,1015,1016,1017,1018,1259,7587,993,997,998,943,980,1288,1256,1251,1254,1252,1253,1247,1255,1260,1265,4547,4551] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [6470,6518,6519,6520,7001,7002,6602,7004,7007,6473,7534,6980,6979,6984,6617,6965,6614,6467,7022,7033,7034,7395,7425,7516,7517,7029,7426,7508,7514,7518,7519,7521,6863,6759,6784,6864,7009] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5389,5393,5394,5396,4873,4727,4728,4648,4872,4481,4482,5383,4621,4622,4623,5391,4897,4898,5270,5273,5392,4893,5300,5298,4886,4888,5301,4382,4384,4383,4466,4848,4843,4844,4868,4478,4830,4334,4865,4866,4871,4337,5409,4331] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2771,2776,2780,3172,3173,3266,3268,2749,2747,2748,2754,2769,2265,2266,2267,2361,2216,2217,3263,3264,3282,3255,2781,2808,2774,2775,2727,2349,2726,2751,2756,2610,2611,2709] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [4482,5383,5384,5385,5386,5387,5402,4623,4618,4620,4640,4641,4647,4648,4649,4719,5371,4676,5377,5378,5380,4728,1588,1592,1593,1595,4614,1600,1596,5207,5213,5199,5156,5211,5194,5157,5240,1603,1631,1575,1630,5222,5226] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [7529,7530,7531,7536,7537,7526,7528,7633,3731,7368,7384,7385,7396,7397,7399,7524,7525,7406,3718,3710,3711,3712,3713,7540,3706,6693,3700,6722,3701,3705,3704,6723,6724,6721,7508,7527,7407,7510,7511,7512,6618,6757,6758,6759,3719,6690,7535,6504,6499,6496,6503,6632,6633,6616,6613,6964,6696,6697,6700,6695,7640,7641,7653,7654,7662,7646] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [6759,6784,6785,6855,7496,6783,7505,7508,7503,7509,7510,7512,7502,3697,3701,3702,3704,6750,6775,6776,6777,6812,7335,7341,7343,7330,7356,3684,7292,7293,7354,7348,7349,7347] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2503,2506,3317,3249,2611,3243,2727,2530,2532,2526,2521,2523,2559,2602,3256,3282,3252,3255,3257,3258,3259,3096,3303,2364,3090,3092,3082,3039,3094,3077,3078,3040] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [3286,2380,2378,298,2375,2382,3278,2260,2365,2359,2368,2374,3291,3290,3295,139,2444,2447,145,347,348,349,350,325,2242,284,2467,2470,2471,2474,2476,2711,2713,2360,2695,2696,3320,2469,3306,2468,2505,3310,3312,2434,2432,2433,2439,2440,2442,3324] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [3132,3143,3144,3146,6682,3145,6675,6673,6660,6670,6665,2247,3358,341,3355,3356,330,3287,3115,3274,3275,3272,3273,3294,3292,3293,3301,3276,3283,3362,3359,3360,3361,3363,3368] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [1597,1604,1608,1609,4363,4561,5415,1602,1600,4554,1591,1596,4559,4586,4587,4588,4557,1590,1592,1595,4482,5385,5386,5387,5402,5410,4622,4623,5411,5412,5400,5401,5404,4498,4367,4368,4491,4480,4495,4496,4591,4593,4360,4560,1601,1603] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [3461,3487,3112,3113,3114,3099,3100,3101,3484,3485,3486,3362,3367,3404,3405,3406,3368,3336,3345,3346,3351,3294,5453,3115] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1242,1243,4353,5464,5467,2551,2496,2484,2491,2493,2515,1218,1222,4351,5440,5443,5444,5475,2552,4355,5426] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [3438,3444,3446,3790,3765,7610,7621,3793,3763,3764,3792,7602,7605,7625,3441,3782,3755,3752,3758,3760,1357,1358,1360,3352,7561,7562,7563,7630,7634,7635,7559] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1622,5411,5412,5400,5401,5403,5405,5406,5386,5387,5399,5402,5281,1603,5481,5489,5243,5259,5260] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1628,1603,1631,5220,5488,5242,1652,1619,1624,5525,5526,5527,5552,5629,5631,5554,1653] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [276,258,562,563,89,53,75,71,72,74,48,585,590,586,574] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [4267,4788,4799,4800,4776,4777,4490,4286,4287,4288,4289,4257,4269,4282,4303,4285] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [6608,6421,6422,6424,6439,6626,6936,6940,6418,6423,6425,6912,6403,6924,6913,6405,6958] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3499,4064,3502,3504,4072,4069,4090,4091,3511,3535,3045,3044,3047] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        

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
        
        load "data/7B8W.pdb", protein
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
 
        load "data/7B8W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3004,3006,3989,2571,3007,3011,2987,2989,3988,3990,3013,1882,1883,1885,1923,1922,844,2569,2563,2577,2578,2585,846,1093,1948,821,845,853,1091,1092,820,796,2586,3191,3192,3203,461,888,892,895,897,871,890,1884,873,3987,4031,3985,2961,459,2962,467,468,3205,2969,3204,475,3184,476,854,2936,2937,453,445,446,447,448,449,452,4055,451,4053,4054,3005,1862,3967,3968,1890,3965,925,926,889,1863,3041,3008,3042,3015,2562,2559,2560,2561,1950,1949] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5371,5373,4502,5361,5367,5369,4506,5374,5375,5376,5358,5372,5349,5355,5356,4730,5386,4655,4747,4749,4833,4836,5387,5388,4744,4721,4723,4726,4727,4740,4653,4654,4652,5362,5365,5398,5399,5400,5151,5152,5191,4680,4499,4500,4359,4397,4485,4486,4498,4854,4832,4853,4497,5282,4876,4879,4872,4355,4356,4357,4361,4362,4383,4360,4907,5283] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3239,3229,3232,3234,3236,3235,3241,3246,3243,2601,3248,2366,2367,2246,2274,3245,3247,3249,3250,2243,2244,2247,2248,2249,2555,2529,2530,3262,2611,2612,2615,2618,2731,2730,2364,3065,3272,3273,3274,3275,3260,3261,2387,2400,2381,2383,2380,2379,2269,2710,2713,3156,3157,3228,2784,2777,2776,2747,2749,2756,2772,2774,2775,2592,2597,2598,3223,2753,2553,3026,3025] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [491,1040,1136,1134,614,255,257,637,640,633,125,1041,1133,668,1137,1138,1135,126,615,1123,1132,271,273,143,269,136,123,127,128,164,122,129,131,254,256,140,658,659,660,661] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [6948,6577,6971,6974,7373,6576,6589,6488,6591,7374,6998,6461,6466,6467,6949,6927,6818,6821,7449,7463,7465,7467,7464,7466,7462,7451,7452,7458,7460,6462,6464,6460] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [7477,7478,7479,7451,7452,7460,6818,6821,7440,7449,6746,6839,6931,6744,6837,6743,6835,6817,7489,7490,7491,7492,7282,6812,7243,7242,7453,7299,6745,7511,6771,6588,6589,6590,6591,6597,6927,6928,6949] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1123,1131,270,271,1148,1149,1150,269,254,256,415,416,508,594,597,290,1127,1160,1162,488,489,491,1111,1116,1117,1120,1124,614,482,487,505,615,910,441,949,909] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5878,5942,5904,5910,5914,5915,5955,5921,5877,5841,5876,5882,5887,5889,5905,6313,5954,6289,6325,6315,6328] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [7987,7950,8013,8014,7991,7998,8441,7995,7996,8051,8019,8024,8064,8402,8403,8438] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4114,939,938,1183,1186,4037,4038,4121,4145,924,929,930,942,3999,4107,4117,4062,4065,4109,931,408,1179,409,934,933,4033] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3846,4211,3801,4178,4179,3806,3768,3732,3769,3833,3795,3796,3767,3773,3778,3780] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1690,1722,1735,2112,1624,1661,1685,1665,1670,1659,2073,1695,2109,1672,1684] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2523,3293,2522,2004,2002,2009,2011,3291,3049,1960,1928,1932,1933,1957,1930,3046,3047,3055,3058] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [5794,5813,5976,5998,6352,6353,6015,6002,6007,6008,5997,5974,6351,3897,6342,3403,3399,3896,3898] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3578,3579,3580,2832,3134,3135,3324,3326,3309,3341,2798,2800,2801,2831,3534,3340,3581] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1016,682,683,684,685,714,715,716,1018,1019,1469,1468,1467,1214] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [6915,6702,6661,6664,6666,6667,6671,6673,6674,5853,5869,5871,5734,5736,5855,6877,6879] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
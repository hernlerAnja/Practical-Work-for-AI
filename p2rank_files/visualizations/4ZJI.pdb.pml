
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
        
        load "data/4ZJI.pdb", protein
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
 
        load "data/4ZJI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [444,445,654,422,637,638,639,653,517,520,469,433,434,439,442,513,529,389,410,411,412,413,409,436,437,1150,1153,1130,1133,330,347,328,346,1169,618,388,1116,1118,512,923,924,980,915,510,1120,1114,1170,963,964,1121,1122] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [2532,2534,2531,2533,2555,2510,2487,2509,2730,2506,2541,3268,2324,2325,2475,2468,3283,3284,3286,3285,3078,3287,3079,2557,3267,2564,2565,2566,2751,2749,2750,2563,2584,2585,2560,2562,3265,2454,3247,2452,2469,2470,2471,3095,3245,3233,3038,3039,3030,3031,2628,2625,3229,2632,2635,3236,2765,2766,2644,3231,2627,3228] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [7234,6839,6855,6856,6765,6769,6770,7282,7283,7242,7243,6739,6795,6796,7264,7265,7267,6762,6838,6836,6972,6973,6652,6667,6771,6958,7473,7475,6654,7443,7446,7476,7478,7479,6740,7482,7299,7426,7429,7433,7434,7435,7439,7427,6846,6843] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1854,3962,1850,3977,3958,1285,1852,1653,1292,1324,1326,1322,1869,1295,1317,1315,1316,1313,1314,1635,1640,5786,7891,3750,7877,3400,3768,3960,3755,3762,3431,3437,3441,5772,3429,3430,3432,1647,3407,3410] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4731,5138,5139,4661,5130,4657,4659,4687,4747,5178,5179,5160,5161,4654,4728,4730,5195,5378,5322,5323,5325,5329,5330,5331,5335,5339,5342,4735,4738,4865,4748,4554,4663,5383,5387,4632,4662,4866,5376,5377,5379] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [5675,5644,5228,5233,5673,5223,5672,5492,5490,5481,5478,5480,5674,5731,5761,5762,5764,5725,5728,5444,5457,5225,5479,5477,5446,5448,5449,5454,5434,5443,3327,3328,5240,5456] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [7511,7525,1017,1018,7529,7530,7531,1032,1029,197,202,179,181,189,192,170,176,1145,1146,1136,1137,1148,1138,1141,1156,1038,1039,1028,7510,7520,7523,7528,7512,7535,7545,182,196] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [7866,7583,7585,7868,7559,7749,7780,7327,7332,7548,7549,7551,7553,7554,7558,7564,7329,7598,7597,7833,7836,7778,7830,7779,7562] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [7866,7867,7583,7585,7586,7868,7582,7548,7551,7554,7539,7547,7538,7589,7584,7587,7588,1213,1212] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [3154,3253,3256,2294,2295,2298,3171,3258,3143,3144,2813,2814,2806,2807,2809,2837,2784,2786,2791,2297] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [1141,1143,174,679,672,673,674,685,686,687,1138,697,701,702,694,695,1056,2114,2112,1039,1028,1029,725,171,173,170] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [2306,2313,2305,2312,3263,3251,3252,3260,3261,3273,3133,5420,3132,5424,5425,5415,5418,5419,3253,2294,2303,2300,3144] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [4426,2336,2459,2720,2721,2722,4452,4453,4563,4469,4471,2462,2289,2290,2310,2355,4406] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4411,4413,4410,5248,5347,4414,5350,4884,4886,4914,4937,5237,4913,4909,5265,4906,4907,5238] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1373,1907,1908,1913,1914,1918,931,927,928,929,1364,1363,898] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [6500,6501,6504,7454,6503,6991,6993,7352,7451,7020,7341,7014,7016,7369,7342] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [8205,8208,8209,7250,7217,7248,8210,8214,7686,7677,7676,8219,8215] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [5581,5582,6108,6111,6113,6117,5144,5146,5113,5572,5143,5571,6112,6118,6122] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [1578,1579,7533,7537,7543,7556,7522,7496,1240,1241,1577,7502,1569,1570,1571] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3478,3487,3046,4012,4015,4026,3044,3479,4021,4022,3013,3488,4016] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [6559,6560,6949,6950,6440,6483,6558,6481,6482,6438,6439,6480,6479] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
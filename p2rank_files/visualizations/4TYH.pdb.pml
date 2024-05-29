
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
        
        load "data/4TYH.pdb", protein
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
 
        load "data/4TYH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4057,4054,4058,4059,4062,4063,4064,4065,3275,4066,3310,4055,3118,3272,3273,3274,3954,2499,3596,3597,3598,3604,3605,3607,3623,2466,3630,3583,3585,3586,2958,2959,3102,3005,3006,3007,3593,3594,3595,2468,2467,2469,3399,3562,3563,3116,3114,3549,3942,3943,3963,3964,4061,3923,3925,4077,4078,4081,4086,4088,3955,3956,2435,3977,3587,3588,3386,3387,3388,3568,2969,2970,2978,2974,2979,2983,2982,2962,2964,2968,2965,2428,2451,2961,2963,1285,2956,2960,2388,2410,2984,2986,2987,2988,2989,2389,4101,2985,3234,2408,2412,2427,4117,4116] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4121,4122,4127,1789,4128,4151,1577,1788,1575,1987,1989,2001,2008,1990,1991,1992,1972,1980,2033,4117,4416,4418,1786,2412,2433,2434,2441,2432,2443,2442,1521,2007,2388,4150,4152,4382,1465,1466,2000,4383,4408,4125,4130,4133,4162,4154,4160,4366,4368,4371,4378,4373,4166,3956,3949,2435,3620,3950,3619,4338,3622,3654,3655,3643,3648,3645,3650,1522,3652,1520,1467,1510,3941,3942,3943,3926] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2352,2353,2354,2355,3208,3210,3211,3233,3234,4095,3209,3198,3200,3185,3201,2310,2987,2989,4101,2985,4098,3136,3139,3132,2983,2379,2980,2981,2982,3242,1732,1741,4094,3232,4088,3275,3273,3274,3134] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2950,180,1276,189,2951,2404,2967,1284,2452,2963,1285,1286,1287,2971,2973,178,179,181,2828,340,1250,1254,1258,1274,430,1273,431,339,186,356,1108,1109,2403,1125,1132,1092,1093,1133,2830] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [179,181,1260,2829,165,340,1249,1256,1258,464,548,716,732,733,734,547,728,731,153,208,209,323,171,338,336,711,1120,1147,1148,1149,1247,1246,2830] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2403,1124,1125,2370,1121,2371,759,760,2346,3148,2817,2826,2828,2837,2973,2977,2377,2992,3140,3141,2380,3000,2366,2365,2367,2373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1334,1538,1540,1354,1321,1539,1532,1536,1541,1542,1545,1546,1566,1497,1504,1506,1024,1026,2057,2064,1023,2039,2045,2048,2049,2050,2005,1353] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [829,830,905,790,802,868,926,931,933,1159,921,1158,1160,1192,900,1207,1190,792,794,901,903] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4471,4472,4186,4213,4185,4189,4190,4208,4209,4210,4438,4187,4920,4916,4194,4505,4919,4605,4634,4636,4637,4604,4674,4661,4676,4547,4548,4603,4570,4439] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [201,202,216,348,119,120,118,637,634,636,67,688,331,75] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4485,4489,4510,4513,4514,4783,4745,1419,4392,4508,4509,4517,4521,4523,1446,4388] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3578,3569,3570,3571,3572,3573,3574,3589,3992,4039,4040,3362,4023,2588,3365,4024,3360,4020,4022] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [171,182,190,192,193,209,339,186,356,337,338,344,174,181,1258] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        

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
        
        load "data/5S7Z.pdb", protein
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
 
        load "data/5S7Z.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2463,2464,2465,3697,3409,3542,3543,3544,2468,3425,3426,2467,2441,2469,3696,2701,2581,2585,2587,2589,2490,3716,3711,3712,3694,3703,3695,2631,2633,2436,2439,2488,2437,3465,3029,3032,3004,3001,3014,3541,3538,3448,3536,2821,3537,3464,2963,2959,2977,2978,2489,2573,2997,2982,2995,2999,3437,3436,3439,3036,3037,3065] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [253,255,298,299,1202,125,297,128,130,131,741,99,104,247,150,151,152,239,100,102,101,664,666,251,632,628,1194,1195,1196,1199,1121,1090,1102,705,706,1091,1123,698,701,364,497,500,646,647,499,651,670,673,1093,1063,1298,1299,1318,1079,1080,1305,1313,1314] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3810,910,2305,4299,4267,4269,4271,4273,879,878,880,3809,906,926,929,457,459,908,465,475,881,468,1168,1167,1169,848,850,852,855,927,935,963,937,979,981,2277,928,442,4253,4255,4296,4297,4298,3789,4263,4295,4302,4336,4337,4306,3797,3795,3796,2331] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3807,3782,4254,3757,3705,3824,3836,3677,3692,3661,3395,3398,3399,3394,3564,3785,3751,3784,3917,3741,3755,3707,3708,3711,3714,3890,3888,3825,3658,3659,3808,3809] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1390,1363,1392,1365,1857,1393,1432,1433,1359,1444,1415,1052,1053,1294,1306,1307,1303,1309,1310,1313,1048,1057,1062,1490,1492,1528] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3424,3716,3717,3733,3734,3440,3441,3735,2465,3426,4226,4239,4155,3432,4029,3052,3054,3056,4156,4157,3437,3438,3433,3439,3746] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1356,1341,1342,1758,1759,1760,1354,1319,1086,721,723,725,1092,1093,1094,1095,1078,1080,1624,1767,1343,1821,1842,1828,1829,1827] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [949,950,951,953,1506,2276,1498,1502,2264,1508,1510,2275,2262,1500,2270,2253,2259,2263,2265,2269,1543,1474,1473,1475,1471,1512,1517,1519,2242,961,964,927] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4644,4650,4655,4656,3303,3898,3899,3900,4653,4654,4633,3869,3870,3871,3873,3896,3906,3908,3909,3932,3299,3300,3312,4661,4665,4668,3314] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2949,2951,2579,2407,2408,2409,2952,2953,2954,2860,2861,2863,2878,2390,2391,2394,2971] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [522,196,197,199,233,57,193,195,198,200,528,639,640,34] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [461,1181,463,1138,1140,453,483,502,653,654,655,656,678,661,679,676] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1144,1157,696,865,798,863,1130,753,783,829,831,1160,1158] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2795,3479,3480,3481,2785,2793,2822,2983,2984,2986,2988,2809,3009,3010] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
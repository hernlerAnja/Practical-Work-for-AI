
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
        
        load "data/4K2R.pdb", protein
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
 
        load "data/4K2R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [324,488,1148,1146,1147,1153,1154,1158,1149,929,1176,896,898,322,1843,320,321,1842,1803,1804,1805,489,504,1182,14,907,283,22,905,1150,1152,904,899,900,883,868,869,877,870,1160,4309,4310,21,538,520,536,518,511] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2932,2359,2361,3330,3331,2410,2411,2911,2412,2915,2929,2540,2935,2936,2937,2367,2369,2370,2373,2357,2358,2363,2364,2365,2943,2952,3301,3422,2557,3315,3423,2555,2374,2377] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3438,2659,2689,2690,2691,2693,3447,3450,2662,2663,2593,2594,2896,2722,2723,2895,2880,2572,2393,2569,2570,2585,3446,2695,2698,2694] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3459,3461,3488,3786,3304,3502,3503,2968,2970,3776,3779,3726,3772,3775,3302] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1125,4305,1159,3100,1135,2049,2051,2052,4302,4304,1161,3070,3071,4329,4332,3068,3072,3073,3374,4370,4366,4333,4334,4336,4271,3096,4273,3069,3057,1128,1129,1132,1123] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3992,4007,4008,611,39,41,4300,4292,4298,4320,618,619,620] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1298,1486,1491,1304,1310,1501,1506,1498,1495,1480,1555,1663,1497,1641,1478,1314,1317,1318] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1196,1238,1239,1245,1246,1253,1255,966,1832,952,1829,1866,988,989,953] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2797,3432,2896,3416,2723,3417,3422,3446,2798,2799,2908,2910] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3688,4080,4076,4078,4079,3797,3657,3929,3892,3654] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1866,1896,1245,1239,1253,1255,1992] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
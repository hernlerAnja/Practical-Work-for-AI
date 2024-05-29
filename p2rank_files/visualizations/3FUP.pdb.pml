
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
        
        load "data/3FUP.pdb", protein
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
 
        load "data/3FUP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2783,2786,2539,2542,2544,2727,2531,2535,2524,2527,2546,2547,3639,3641,2854,2711,3521,3625,3626,2710,2822,2562,3786,3787,3788,3803,2532,2533,2534,3795,3649,3648,3643,3483,3820,3821,3512,3819,2516,2517,2523,2514,3511,2777,2812,2813,2814,2815,3665,2816,2817,3769,3774,3664,3473] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3132,3536,3537,3538,3507,2516,2517,2511,2512,2514,3128,3125,2505,3160,2695,2504,2506,2508,2510,2560,2561,3097,3100,2503,2509,3616,3617,3618,3517,3518,3521,3623,3625,2710,2961,3079,3075,2562] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [123,116,117,118,1237,1235,172,173,174,120,307,686,121,1149,712,736,737,1150,1230,691,709,573,705,703,744,745,740,1138,1119,772] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2356,3407,3721,3679,3717,4619,3376,3378,4630,4634,4636,3380,3406,3405,3954,3955,3956,3950,4623,870,4581,4576,872,2360,2060,3948,4598,4609,4613,4614,4617,4618,3961,4574,866,865,883,862,2358] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [427,1397,1398,1399,1407,149,150,158,147,148,151,154,156,1406,398,400,1251,1253,1261,138,143,340,429,434,428,394,422,423,424,466,322,323] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2452,2585,2451,2465,2469,2471,2570,2720,2571,2453,2455,2424,2425,2426,3051,3049,2718] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1566,1567,1568,2226,2229,1019,2249,994,995,2250,1333] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3828,4287,4288,4289,4299,3901,3923,3897,3809,3813,3814,3812,3864] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
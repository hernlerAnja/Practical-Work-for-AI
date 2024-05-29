
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
        
        load "data/7B7R.pdb", protein
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
 
        load "data/7B7R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3584,3585,3586,3587,3720,3572,2845,3202,3723,3201,3727,3728,3737,3740,3747,2696,2693,2687,2688,2689,2690,2691,2692,2695,2844,2726,2728,3602,3603,3615,3264,3265,3616,3614,3623,3639,3640,3716,3724,3216,2684,2727,2825,2680,2681,3289,2682,2685,3718,3215,3019,3020,3021,3093,3717,3733,3735,3103,3719,3725,3017,3236,3044,3091,3256,3257,3239,3235,3801,3803,2861,3773,3802,3750,3775,3779,2699,2703,2706,2707,2708,2711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1393,1401,893,897,1316,878,768,770,891,892,502,1394,1395,1397,1405,1410,522,1400,1264,1449,538,520,521,879,698,697,782,694,780,1412,722,721,674,1424,1456,1414,1422,373,369,372,365,403,405,1291,942,404,1317,359,361,362,1293,1300,1301,1279,1280,1292,913,934,916,958,370,357,358,364,966,967,1479,1480,1447,1427,384,385,376,380,383] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [386,389,3180,2866,2868,397,2870,3167,2719,2849,2720,3178,3179,2853,2698,2702,2709,2710,2712,2713,2862,2865,3163,3177,387,539,526,854,855,530,284,285,286,857,2654,834,840,844,543,545,547,331,415,416,327,329,413,431,323,390,391,529,511,307,509,306,2715,2738,2739,2653,2714] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3178,2608,2853,3180,3177,2654,2646,2650,2653,2630,2832,2834,2754,2628,2629,2738,2739,2736,2852] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3078,3455,2449,2422,2447,2448,2439,3676,2440,3401,3403,3423,3425,4599,3076,3064,3400,3431,3691,3693,3689,3686,3678] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4639,4643,4627,3675,3676,3682,2440,3665,3674,2449,2439,3401,3402,3403,3423,3425,3405,4599,3404,3400,3693,3076] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3655,3218,3221,3226,3222,3224,3229,2809,3120,2537,2504,2507,2509,2500,2503,2473,3669,3670,2502] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
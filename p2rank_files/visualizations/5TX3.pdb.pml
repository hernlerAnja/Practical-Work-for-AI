
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
        
        load "data/5TX3.pdb", protein
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
 
        load "data/5TX3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3566,3564,3574,3565,3576,3577,4862,4863,4860,2943,4486,4479,2771,2772,2767,4884,4885,4886,4887,4895,2976,2999,3111,3112,3113,3114,3118,3614,2977,2997,3115,2932,4487,2979,4484,4485,2942,2940,2961,4834,4830,4855,4853,4859,4857,4854,2923,2924,3594] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [639,1138,1139,467,468,2409,2412,2035,2435,2379,2402,2403,2404,2406,2408,1099,1101,1102,2411,486,501,502,638,465,2034,2036,2380,2383,1082,647,636,637,640,643,280,2391,275,2443,2444,1090,1091,522,524,281] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1034,1062,1155,1153,1156,1157,1160,1150,1152,1154,1161,1163,1063,655,661,670,673,313,495,1151,496,627,629,634,201,202,311,312,167,169,170,648,650,646,212,213,216,296,171,172,2662,681,678,2665] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3509,3537,3538,3630,3521,177,181,2669,2676,3136,3130,2672,3153,3156,151,156,159,3145,2796,2797,2800,2801,2802,2803,2804,3104,3627,3629,3631,2787,3116,3121,3123,3127,2785,2786,2971,3102,3132,3109,2691,2693,2790,2673,2692] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [193,194,195,3155,210,211,330,334,337,3512,3513,3170,3514,3670,3672,3498,4,3648,3173,50,52,320,587,588,8,10,3171,3174,22,317] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [699,2555,3062,3063,700,2512,2514,2511,2510,2828,1196,698,696,2701,681,1036,1039,2684,2685,2686,1023,1187,1037,1038,1188,1192,1195,680,2664,2702,2682,2683,2812,2665,2699,2517] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [469,472,1985,1986,2028,871,862,833,835,894,481,857,858,859,1982,1989,482,1121,1122,872,873,467,468] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2957,3341,3342,3346,3347,3593,3594,3596,3597,2956,3332,3333,3369,4431,4433,3334,4479,4437,4440,4478,4477,3574,2943,2942,3370,2947,4436,3614] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [615,382,614,361,383,386,381,313,1151,416,629,1162,1164,1166,1175,1157,1150,1152,1168,311,312,329] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3631,3618,3633,3634,2890,2892,2857,2884,2858,2859,3622,2916,3405,3440,3454,3460,3442,3451,2964] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2589,2523,1425,2524,2563,735,736,734,2526] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1999,2002,1825,1826,1832,1862,1831,911,912,1828,947,2000] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
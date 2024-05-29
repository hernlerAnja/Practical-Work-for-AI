
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
        
        load "data/5TWY.pdb", protein
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
 
        load "data/5TWY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2630,2829,2896,2897,2898,2494,2495,2496,2641,2456,4507,2471,2472,2474,2476,2446,2455,2445,2452,2453,2841,4532,2651,2886,2890,2839,2840,2889,2884,2887,2885,2851,2847,2844,2845,2588,2577,2483,2629,4567,2591,2593,2566,2567,2640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [187,1036,185,186,277,640,660,662,200,658,661,293,294,635,633,636,143,144,141,1012,1035,1037,1122,1124,1125,518,1130,409,687] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [643,645,649,2284,2313,2314,2317,2348,2349,1074,1075,2347,644,544,546,642,1061,1056,1071,1072,1946,1947,2307,2340,2310,2312,479,1948,1109,487,489,1073,1092,490,1945,1940,1939,646,650,261,2296] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2733,3378,3382,3361,3363,3232,3370,3400,2718,2801,3177,3178,3212,3213,3214,3215,2800,2805,3357,2905,2752,2735,2737,2738,2717,2753] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2910,2635,2636,2807,2903,2904,2905,2906,2561,2562,2805,3368,2940,2942,2947,2948,3297,3369,2646,3366,3367,3370,3371,2718,2921,2923,2924,2925,2939,2891,2823,2824,2738,2717,2720] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3314,3316,2913,2914,3353,2916,2920,2919,2623,3326,4618,4619,3321,3336,3317,2779,2778,2915,2912,2911,2776,4620,4555,4585,4588,2619,2835,4587,4582,4212,2812,2813,2833,2834,4611,4597] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1399,1008,1187,1007,705,706,702,704,733,740,1160,1189,1353,1397,1398,1380,1382] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4339,4340,4348,4349,4350,2603,4511,4512,4537,4538,4539,4508,4509,2475,4513,4514] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3292,2955,3266,3269,3610,2990,3129,3270,3576,3036,3308,3089,3088] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2981,2982,3036,2978,2980,3328,3330,3302,3303,3304,3305,3307,3331,2937,3088,3121,3083,3057,3089] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3646,3647,3648,2963,2965,2966,3270,3271,3422,3424,2991,2999,3602,3629] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3078,3081,3082,3106,4127,4129,3110,4125,4172,4148,4149,4165,4159] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
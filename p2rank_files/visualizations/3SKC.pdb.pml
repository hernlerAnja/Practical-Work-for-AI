
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
        
        load "data/3SKC.pdb", protein
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
 
        load "data/3SKC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [642,260,637,177,658,660,178,272,276,638,620,623,158,275,153,154,156,291,387,624,131,124,125,130,126,127,128,129,1166,1167,1173,1174,1176,160,522,1163,1157,1056,1084,1085,1086,1087,1057,691,692,518,535,513,469,1184,519,1183,443,413,414,442,1178,662,666,665,679,680,659,681,667,684,1081,1088,683,682,687] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2603,3168,2341,2258,2259,2353,2355,2356,2357,3254,3163,3164,3166,3244,3247,3248,3253,3276,3269,2748,2746,2747,2741,2612,2613,2719,2718,2723,2704,2523,2705,2599,2600,2602,2594,3263,2524,3265,3266,3267,3268,2701,2550,2616,3137,3165,3167,2773,3148,3169,2764,2765,2768,2772,2760,2761,2740,2207,2209,2210,2211,2212] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3234,2586,2574,2577,2579,1104,3183,3217,3218,2962,2994,2963,1102,1105,1130,1111,672,1114,2727,2566,2728,2608,3185,2973,3207,2941,2972,2974,2940,3211,530,2565,2578,647,643,648,244,230,238,241,651,654,675,245,246,247,248,527,529,493,2611,482,485,510,645,646,1153,2563,2610,472] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3148,3107,3110,3399,3304,3356,3398,3400,3305,3396,3397,2253,2212,2214,2215,2247,2221,2222,2244,2234,2245,2259,2355,2356,2357,3254,3250,3252,3253,2238,2240,3276,3269,3273,3279,3303] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [891,882,913,893,859,2319,2322,2325,2326,1136,3186,498,892,1137,1126,497,2729,2732,2735,2327,2329,2753,2756,2328,3195,505,911,912] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3095,3395,3396,3402,3568,3569,3408,3460,3370,3406,3517,3368,3107,3108,3109,3110,3424,3422,3281,3282,3303,3096,3097,3100,3311,3567] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [80,81,83,79,570,571,616,63,61,592,593,594,284,76,78,97,56,51] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
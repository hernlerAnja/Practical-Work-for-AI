
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
        
        load "data/6TFV.pdb", protein
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
 
        load "data/6TFV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [529,532,1194,2692,1175,1177,2729,1145,676,678,679,3299,3300,3332,3307,553,675,695,556,2730,2731,1151,1152,2748,2843,2845,2846,522,518,520,2695,523,508,564,565,566,3330,561,562,3306,558,954,2679,2680,2681,2682,543,922,921,932,953,2055,2056,2024,2025,923,2021,2023,1163,2205,2204,2176,2180,2183,894,895,2048,2054,3349,2718,2721,2723,2726,2727,2842,2850,2861,2838,2686,2683,3297,2671,2664,2665,2666,2660,2167,2722,2836] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1210,1209,1208,1113,1215,1216,1217,1129,1099,349,347,198,199,200,341,345,348,180,182,178,692,669,670,1128,668,650,330,332,716,719,723,724,148,149,152,154,691,151,686,1221,1211,1237,493,653,560,569,570,575,651,1227,1228,555] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2889,2890,3254,2327,2913,3268,3365,3366,3371,3372,3376,2520,2377,2379,2333,2326,2328,2332,2524,2522,2541,3391,2837,3381,3363,3364,2885,3283,3284,2873,2882,2330,2378,2507,2516,2331,2836,2656,2740,2816,2817,2822,2818,2820,2835,2830,2855,2858,2841,2719,2720,2725,2734,2735,2834,2824] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [516,519,3109,502,503,4194,4196,517,518,25,564,5,8,3077,3076,3078,4165,4166,4164,3084,3318,3048,3087,3049,3050,4187,4188,4186,4190] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [981,2678,527,515,517,521,2696,2697,519,983,534,3129,3165,3108,3105,3106,3107,3104,3136,3138,2690] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2988,3312,3024,3025,3026,284,3313,266,41,42,43,46,49,94,95,17,30,2984,2985,2925,2961] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2215,870,869,871,820,2222,2459,2220,2221,1158,2225] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1578,1439,1658,1696,1860,1858] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
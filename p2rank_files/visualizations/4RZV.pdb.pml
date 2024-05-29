
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
        
        load "data/4RZV.pdb", protein
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
 
        load "data/4RZV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1071,1076,674,675,1072,1074,678,682,683,1045,673,649,650,651,676,677,119,120,121,510,513,1057,1075,1155,1159,129,132,1046,1049,117,1160,1162,633,653,656,657,1171,1163,267,268,133,168,169,264,170,509,628,526,614,629,611,250,251,252,260,435,1173,1174,1175,1176,1177,1182,1184,615,434,711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2335,2251,2252,2733,2734,2203,2204,2333,2732,3157,3158,3159,2739,2756,2757,2761,3155,2759,2736,2253,2350,2351,3244,2347,2698,2596,3238,3253,3246,3257,3258,2711,2592,2593,2712,3255,3256,2609,2697,2518,2517,2514,2694,2334,3128,2765,2766,2793,2795,3131,2792,2206,2207,2208,2199,2200,2212,3139,3245] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3324,3326,3318,2230,2231,2368,2382,3286,3307,3309,3267,3268,3287,2454,2462,2684,2457,2428,2456,2460,2453,2455,2426,2429,2367,2365,2364] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [930,2570,2572,2720,2558,2566,2567,2601,2603,932,474,480,482,483,488,466,3194,2556,2550,2551,2557,898,899,900,2549,2559,2584,2569,3225,2721] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2155,2136,2645,2644,2656,2359,2667,2668,2158,2341,2690,2154,2157,2172] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1185,145,148,150,299,288,347,348,408,1183,1203,1204,372,345,346,377,379,283,601,374,373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3063,3249,3258,3273,3280,2492,3064,2509,2518,3062] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [855,786,788,822,823,821,723,1083,669,722,1118] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [973,2950,1387,4219,4217,4218,2928,2929,2951,2892,2923,2927,1388] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
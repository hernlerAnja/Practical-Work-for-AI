
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
        
        load "data/4RZW.pdb", protein
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
 
        load "data/4RZW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1163,1177,1166,1175,1176,1182,1184,1185,128,125,130,131,177,1167,1183,274,178,442,443,417,1160,637,275,259,619,622,636,260,268,272,258,665,666,690,1081,1083,1179,691,659,661,658,524,530,516,517,518,525,521,512,1154,1053,1056,686,1084,679,664,685] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3186,3187,3189,2670,2138,2139,3064,2701,2702,3183,2187,2690,3092,2697,3094,3095,2675,2669,2532,3188,3190,2286,2287,2647,2271,2188,2189,2279,2283,2285,3177,3171,3174,2677,2672,2676,2652,2269,2270,2668,2272,2454,2453,2648,2427,2630,2633] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [492,497,1149,1150,1100,2503,2507,2537,2539,2656,2540,2495,528,529,645,3111,3161,3113,1133,3138,3144,3145,3160,3118] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2962,2999,2961,3004,2454,2421,2425,2452,2453,2418,2523,2444,2445,2446,2481,3016,3018,3165,3171,3174,3178,3181,3010,3012] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [433,414,434,442,443,417,1160,1161,1167,1170,1163,470,435,950,951,988,993,999,1003,1004,1006,1007,1001,512,1154,518,521] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2516,2896,3145,2865,2897,2899,1111,2888,1110,2866,2500,2515,241,245,248,2920,1101,1102,2506,2508,2507,650,672,653,674,244,651] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2252,2255,909,2256,2259,2662,875,876,877,885,854,888,3112,3113,1133,3121,2661,2683,2684,2664,2686,496,497,504,505,907] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2065,966,965,972,975,2023,2045,2246,2084,2085,2086,2235,2056,2555,2236,2031] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2626,2074,2072,2602,2603,2613,2094,2090,2091,2277,2294,2107,2108,2295] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2967,3336,2969,3331,3333,3340,3345,3925,3903,3906,3924,2966,3338,3898,3369] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [12,2985,2986,34,20,45,224,54,19,2983,2977,225] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
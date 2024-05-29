
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
        
        load "data/8F7O.pdb", protein
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
 
        load "data/8F7O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2357,2358,2359,2360,2621,2736,3277,3279,2276,2741,2761,2765,3183,2757,2758,2759,2764,3184,2779,3263,3272,3275,3276,3281,3181,2374,2375,2516,2722,3266,2362,2367,2371,3274,3153,2790,2791,3156,2224,2230,2275,2277,2227,2737,2620,2541] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1182,1170,1165,1168,1169,1171,1173,1191,1188,658,1073,1075,1077,672,1174,511,513,434,435,514,1172,268,409,1156,1159,1167,433,169,170,120,1190,654,657,650,651,652,612,615,630,252,264,629,267] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [488,489,490,2746,2750,3200,3202,3210,1126,3201,3211,3250,3249,3224,3233,3234,3227,848,847,900,902,2340,2343,2347,2772,2629,519,638,1142,1143,639,498,1089,1093,1095,880,1127,1100,1101,522,2584,2596,1103,1102,497,878,879,881] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2514,2516,3266,3267,3268,3270,2509,2512,2513,2515,3093,3099,3101,3114,3115,3253,3254,3259,3260,3261,3263,3105,3107,3257,3106,3104,3103,3303,3305,2533,2511,2532,2534,2540,2612,2618,2542,2569,3051,3088,3050,2541] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2595,2596,2597,1094,1103,1102,1104,665,233,3007,3009,240,1095,1101,643,646,668,237,236,2605,3224,3233,3234,2987,2604,2985,2986,2988] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [507,511,505,1147,434,435,1153,406,1156,1160,426,433,462,981,992,986,996,998,999,1000,944,994] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [68,71,75,72,73,89,275,276,608,55,53,562,563,586] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3781,3487,3543,3545,3547,3518,3520,3521,4060,3554,3542,3551] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [438,439,440,443,17,18,20,2124,2127,2547] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1260,1214,1223,699,701,703,1211,1050,1047,1215,702,700] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2178,2383,2196,2697,2160,2681,2693,2715,2162,2182,2179,2669,2670] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
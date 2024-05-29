
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
        
        load "data/6Z4B.pdb", protein
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
 
        load "data/6Z4B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [514,520,1152,2593,3184,1151,1134,1135,1136,1100,1101,1102,1103,1133,1110,1150,681,666,667,670,304,661,659,662,665,3182,556,3158,3159,549,552,553,574,499,509,511,557,555,523,2577,2578,2579,918,2127,1121,2627,2126,2128,534,535,886,856,893,885,896,858,2103,2098,1984,1985,859,887,2584,2569,2626,2622,2623,2625,2562,2563,2590,2609,3200,3201,2736,2739,2740,2644,2744,2762,2763,3151,3152] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [564,658,660,341,1169,1174,1166,1195,566,340,339,640,641,642,645,358,644,551,560,199,337,661,324,322,323,1168,1176,1183,1185,547,545,484,1179,1190,1210,452,430,1192,1194,1216,1217,1209,1218,480,481,482,483,567,454,453,457,1186,1182,1184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [661,675,324,665,198,199,200,337,147,149,151,152,153,154,678,660,1174,1166,1175,339,1087,709,680,702,1057,1167,1071,1086] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3140,2272,2273,2241,2242,2243,2245,2246,2247,2248,2783,3110,2779,3223,3224,2402,2404,2405,2274,3124,3216,3222,2389,2747,2752,2753,2776,2777,2730,2731,3139,2729,2388] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2904,2905,2906,2874,2867,280,266,2818,2819,2849,2850,2852,2853,260,263,3164,3165,42,43,46,49,93,94,95,41,245] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3228,2714,2715,2519,2520,2521,2522,2493,2496,2423,2422,3223,2402,2404,2405,2406,3215,3217,3235,2615,2616,2552,2636,2637,2712,2630,2517,2554,2516,2523,2524,2527,2729,2728,2710,2711,2388,2617,2730,2731] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3436,3844,3652,3849,3288,3433,3571,3687,3692,3847,3846,3848] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
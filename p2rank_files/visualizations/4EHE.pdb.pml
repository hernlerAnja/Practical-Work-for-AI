
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
        
        load "data/4EHE.pdb", protein
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
 
        load "data/4EHE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2648,3308,3288,3289,3292,2764,2386,2763,2747,2748,2749,3320,2398,2400,2401,2402,3321,3311,3312,3293,2384,2385,2644,3310,2661,2568,2569,2788,2768,2647,2792,2793,2303,2786,2250,2252,2254,2255,2256,2302,2304,2257,2817,2818,3182,3188,3189,3190,3210,3212,3193,3299,3296,2808,2811,2813,2806,3213,2785] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [178,272,274,275,176,177,537,638,621,623,624,642,260,637,666,660,1087,127,128,129,659,126,134,131,1182,519,521,522,667,1064,1148,1162,1163,1164,276,1166,1167,1170,1171,1172,1173,1195,1185,687,1081,1083,1085,691,1056,1062,1063,158,160,1067,518,535,442,1194,443,680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1102,1104,1136,1153,3228,3230,3256,647,1130,530,2772,3278,3279,2656,2773,2653,1105,3262,2621,2619,2622,2624,498,485,646,529,527,510] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [651,1105,654,668,675,245,3016,3018,3252,3262,3263,3017,1114,2623,2624,2631,1104,244] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2370,2371,2774,2777,2374,3240,2801,860,497,498,1137,505,890,891,892,1125,1126,882,859,2367,2372,911,913,2364,1136,3231,1127] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3193,3299,3297,3298,3444,3155,3348,3445,3442,3443,3350,2304,2257,2267,2290,2280,2283,2400,2401,2402,3321,3315] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [651,654,675,241,245,246,247,248,3016,3018,3263,3017,3008,2985,3007,2623,2624,2631,230,3037,238,3039,244] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2205,2206,2208,2223,2719,2410,2392,2742,2189,2190,2209,2757,2207,2696] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [570,284,592,593,63,571,594,76,79,80,82,83,97,616,266,43,51,56] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [914,2363,2339,2340,2353,913,2063,2035,2337,2338,2332,933,2359] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
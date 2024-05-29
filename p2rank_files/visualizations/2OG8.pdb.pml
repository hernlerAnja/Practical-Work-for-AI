
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
        
        load "data/2OG8.pdb", protein
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
 
        load "data/2OG8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3119,3122,3128,3132,3133,3134,3136,3135,3137,3115,3047,3048,3130,2410,2490,2611,2612,2616,2411,2488,2269,2596,2379,2382,2271,2272,2273,2667,2956,2976,2974,3112,3117,3108,3109,3114,3116,2909,2482,3123,2957,2401,2405,2409,2434,2436,2484,2403,2104,2105,2107,2108,3152,3153,2632,2660,2663,2645,2654,2637,2156,2157,2258,2265,2255,2256,2257,2630,2691,2688] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1140,1072,1073,1155,1157,1158,1159,688,689,692,696,1154,1156,129,130,132,133,1137,1141,1153,286,184,185,285,284,289,294,516,645,640,641,439,515,1144,625,411,186,301,302,1145,697,720,657,659,661,663,666,674,652] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [465,981,432,982,995,1145,1146,1148,506,507,439,515,438,1144,408,411,509,513,934,1134,999,1137,1141,997,1131] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [679,272,654,1093,1094,650,545,546,266,269,270,651,260,265,2716,2717,2718,264,263,2719,3431,3448,3450,3437,3430,3432,3433,3436,3421,252] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2013,2235,2236,2201,2202,2203,2204,2205,2206,2604,2514,2527,2516,2517,2519,2521,2515] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1086,1127,670,1092,1093,1094,1085,654,1100,1111,1112,2689,2690,525,2688,2717,2718,650,1126] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [240,242,243,257,3642,3645,3426,2764,2770,2776,2807,3407,255,2783,3640,3641,3646,3647,3408,2780] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2356,2358,2129,2131,2132,2130,2322,2323,2272,2273,2381,3149,2348,2138] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [540,2750,539,230,231,229,633,2760] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
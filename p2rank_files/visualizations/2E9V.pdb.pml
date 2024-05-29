
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
        
        load "data/2E9V.pdb", protein
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
 
        load "data/2E9V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [890,891,892,893,894,895,2135,851,2141,2142,2721,2722,2732,2733,2724,2743,2736,2739,2723,889,915,917,921,2087,2088,916,943,2744,2745,2765,2764,942,2084,2085,2145,2146,2147,2150,854,856,857,858,859,902,903,2629,2646,901,888,827,2712,2630,2621,2713,2715,2717,2602,2631,2632,897,922,925,491,499,2634,2707,2708,2701,2704,2705,2709,2726,2728,2171,2155,2657] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3350,3266,3267,3238,2287,2288,2289,2894,2891,2294,2291,2860,2862,2292,2848,2866,2869,2883,3239,3352,3349,3351,2698,3355,3358,3251,3226,2325,2345,2346,2296,2443,2841,2843,2458,2459,2323] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1074,281,282,1179,1181,146,148,521,1178,666,1172,1173,1174,1175,1061,706,707,714,1089,1090,717,1062,112,114,117,118,119,168,266,671,169,278,664,689,683,692,115,1033,1049,1050,1203] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [495,1106,1139,1158,1159,1123,493,496,2609,2640,2642,528,529,3432,531,3429,3430,3431,3433,3398,3399,3400,1122,1142,497] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2751,2815,2816,2218,2754,2775,2811,2812,2813,2835,2836,2449,2232,2236,2450,2235,2260,2261] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [249,64,66,63,43,45,574,657,246,247,248,552,553,547,548,549,550,551,546,654,656,655,260,3442] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3233,3234,3779,3820,3803,3805,3804,2939,2937,2909,2911,2913,2936,3243,3806,3819,3821] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3357,3371,3372,3373,3379,3380,3381,2556,2593,2459,2595,2555,2561,2562,2319,2320,2321,2322,2323,3358,3210] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [729,763,732,734,736,759,760,762,778,1627,1056,1602,1626,1628,1629,1642,1644,735] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2724,2736,2738,2739,2723,2830,2831,2833,2834,2832,2836,2147,2150,2220,2222,2240,2751,2752,2243,2166] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [55,58,83,84,636,659,638,573,598,634,635,639,574,577,41,54] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        

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
        
        load "data/3TV4.pdb", protein
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
 
        load "data/3TV4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [508,525,509,512,628,1074,1075,1076,1077,265,266,1156,1157,148,150,1160,1161,1163,1057,432,614,433,1176,1185,677,681,1046,682,430,649,126,127,128,167,648,650,168,166,124,125,130,264,131,134,632,250,627,613,262,610,459,1172,1175,652,656,655,670,672] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2293,2292,2294,2388,2390,2391,2754,2376,2753,2736,2739,2384,3183,3202,3203,3282,3286,2392,2638,3200,2782,2796,2775,2778,2781,2758,2774,2776,2807,3172,2808,2798,2799,2801,2803,2242,2243,2244,2247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [517,519,2645,2646,483,2643,488,636,1143,1092,2614,635,1094,637,500,1126,3218,3220,1101,1120,2762,3268,3269,2761,2763,3252,3253] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3290,3301,3302,3303,3305,3310,3311,2633,2635,3298,3300,2638,3283,2392,3279,3282,2754,2739,2391,2557,2559,2528,2558,2529,2585,2634,2647,2651] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2789,3230,2790,2791,850,2360,2759,2767,2756,872,2364,2361,2357,3220,3221,2354,487,495,901,880,882,883,881,486,488,1127] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1094,633,641,1095,234,231,235,236,238,663,665,2613,2614,220,3029,228,630,638,2621,2622,1104,3253,2976,3006,3007,3008,3009,2998,2975,2997] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3162,3434,3435,3172,3173,3175,2257,3286,3287,3145,3289,3339,3340,2392,3183,2294,2280,2390,2391,2275,2269] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2726,3312,2406,3370,3330,2503] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2195,2196,2709,2400,2213,2179,2687,2192,2197,2199,2686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1487,1485,888,890,1066,889,1523] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
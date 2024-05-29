
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
        
        load "data/4DBN.pdb", protein
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
 
        load "data/4DBN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2309,2571,3226,3228,2227,2321,2324,2325,2226,3222,3246,3211,3214,3215,3220,2707,2710,2711,2712,2704,2703,2705,2317,2177,3130,3253,3245,3248,3132,2178,2491,2492,2683,2464,2668,2466,2682,2665,2666] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [516,1171,1173,1156,1169,648,650,254,171,627,628,632,253,124,125,128,129,681,682,1050,1049,1168,269,1159,1165,268,266,170,172,1167,1186,131,411,262,610,652,655,656,657,649,1077,1073,1075,670,672,677] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1127,1143,1092,1094,2546,2576,2579,492,524,3198,2534,521,479,504,523,491,1125,1126,3156,3171,3180,3181,3155,3174,3147,3149,3150,3182,1117,1119,3175,1100,1101,1103] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2938,2935,2936,2937,2927,3171,3181,2555,2959,662,1103,1104,239,238,638,235,1094,2545,2546,2547,2539,224,1095,242,641,665] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [408,409,411,435,437,428,1160,1162,429,404,507,1147,1146,1153,1154,1155,943,944,1150,996,997,998,999,1000,981,986,992,994] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2482,2483,2998,2999,3036,3041,2492,2463,2459,2464,2562,3211,3215,3217,3047,3053,3055,3049,3202,3208,3209,3210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1126,3159,3149,2696,2720,3150,2697,2719,2294,2297,2721,872,883,491,499,500,880,882,901,881,490,484,2598,485,2293,2287,2290,1127,492] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [221,222,4088,227,229,2979,2978,4061,4062,4058,4060,231,204,4115,4116,202,213,68,70,201,230,72,75,4085] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2129,2125,2128,2146,2333,2110,2112,2638,2130,2661,2619,2620,2315,2132] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [260,606,583,277,278,83,63,565,564,588,80,79,97] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [957,959,965,968,958,2083,2103,2061,2274,2094,2273,2594] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2474,2444,2446,2448,2499,2471,2472,2501,2611,2088,2626,2449,2066,2612,2613,2065,2439,2627] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
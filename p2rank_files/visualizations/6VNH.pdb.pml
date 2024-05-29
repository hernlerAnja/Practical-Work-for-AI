
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
        
        load "data/6VNH.pdb", protein
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
 
        load "data/6VNH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2882,2914,3724,3725,3726,3733,3732,3884,3558,2872,2875,3749,3750,2611,2622,2607,2608,2609,2770,2771,2583,2584,3703,3606,3708,3709,3710,3711,3596,3568,2572,2573,2574,2576,2577,2597,2606,2587,2595,2599,2602,2846,2848,2604,3878,3881,3885,2843,2788,3868,3864,3873,3866,2593] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1351,1579,1581,2246,2580,2581,2582,2615,2796,2797,1036,1346,1347,1343,1582,1583,1586,2203,2210,2227,2208,2780,2205,1359,1555,1557,1573,1574,2204,2206,1542,2267,1580,2238,1011,1043,1034,1035,2248,2243,1012,2560,2557,2558,2559,2561,2534,2535,2545,2548,2553,2532,1361,2539] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1166,1167,173,720,118,120,121,1252,1253,1255,1254,1247,701,708,307,559,703,1151,1112,1136,761,117,141,135,136,139,158,161,123,124,125,1276,1277,142,323,322,172,174,1139,1140,754,757,726,729] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2565,3217,3592,2566,2568,3176,3178,2569,2571,3703,3708,3710,2620,2622,2769,2621,2755,3160,3209,3623,3210,3213,3185,3622,3164] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1269,1276,1270,1278,142,153,155,141,147,158,390,452,1268,386,414,415,418,420,323,336,322,1255,1294,1410,1411,1412,1413,410,413] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4711,4035,4036,4037,3807,3455,3490,3491,3492,3463,3465,4699,4702,4683,3461,4708,4715,4704,4694] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3134,3135,2483,2512,2514,2214,2645,2511,2630,2216,2220,2223,2210,2778,2486] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4265,4075,4624,4626,4627,4623,4625,4472] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
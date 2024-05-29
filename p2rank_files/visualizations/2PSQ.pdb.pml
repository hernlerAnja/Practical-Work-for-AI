
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
        
        load "data/2PSQ.pdb", protein
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
 
        load "data/2PSQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2471,2473,2474,2475,2476,2477,2478,2731,2753,2482,2483,2485,2627,3394,3552,3553,3543,3544,3546,3547,3554,3527,2729,3417,3432,3524,3528,3529,3530,3531,3523,2448,2449,2500,2501,2619,2621,2622,2623,2984,2443,2442,3026,3027,2607,3009,3446,3447,2444,2447,2446,2988,2867,2721,2724,3682,3683,3685,413,3420,3421,2480,185,189,192,193,194,2479,2481,451,452,196,410,3703,3704,426,425,190,396,191,414,3037,3030] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1276,1277,216,217,218,1275,371,372,373,504,1272,1278,730,163,357,191,206,369,374,377,503,481,169,161,190,199,200,203,1164,783,165,166,1193,773,776,1194,613,746,752,755,734,164,772,760,195,197,1166,1167,1179,1165,1290,1141,188,192,193,471,474,1291,1292,1293,1300,1299,1301] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [195,196,197,1167,1179,198,1168,1141,192,193,194,1277,1275,191,2701,2702,1299,1433,2664,1454,2660,2662,2663,2676,1300,2468,2647,2472,2477] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1418,1419,1314,1315,1132,1357,1412,1417,1416,1345,1358,1301,1434,1435,1407,1420,1426,1430,1362,444] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2694,2723,3679,3683,3684,3385,3666,3667,3675,3610,3661,3656,3665,3566,3567,3568,3598,3602,2745,3554,2744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3851,4375,4377,4378,4382,3326,3327,3328,3848,3837,3840,3300,4389,4393] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1588,1589,1602,2136,2134,2135,1593,1591,2137,2141,2148,2152,1073,1074,1075] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
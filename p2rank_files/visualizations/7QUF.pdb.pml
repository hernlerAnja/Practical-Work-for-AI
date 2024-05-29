
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
        
        load "data/7QUF.pdb", protein
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
 
        load "data/7QUF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1032,1044,737,143,144,145,146,147,137,138,194,195,730,139,162,182,150,159,2566,149,158,196,165,166,174,141,142,442,1179,320,1166,300,301,1155,1163,1164,1165,1156,1158,739,732,1067,1068,1157,721,1180,1187,1188,1189,1014,1031,1015,1052,1043,682,287,702,554,687,705,552,722,709,708,356,2554,2563] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2089,2093,2130,2861,2088,2090,2091,2480,2481,2461,2467,2129,2131,2201,2459,2190,2495,2496,2498,2833,2483,2488,2490,2954,2955,2956,2862,2446,2453,2464,2365,2203,2204] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3293,3320,3321,3298,3300,2536,2573,2576,2581,2584,2577,2580,2506,2508,2513,2516,2517,2537,2542,2535,2538,3295,3323,363,2828,2837] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2819,2829,3239,3241,3242,3243,2809,3296,3260,3261,3263,3262,3337,3345,3349,3357,3402,3352,3434,3230,3232] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1555,1478,1479,1480,1514,1448,1028,1457,1461,1567,1621,1653,1651,1574,1575,1450,1570,1652] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1425,1420,1446,1447,1448,1461,1652,1864,1903,1450,1453,1449,1451,1452,1454,1653] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3684,3687,3690,3692,2747,3192,3195,3697,3698,3702,3691,3693,2717,2719,2744,3191,3221,3190,3196] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
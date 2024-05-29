
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
        
        load "data/7JU6.pdb", protein
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
 
        load "data/7JU6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [202,204,1269,1270,150,152,203,767,764,153,758,760,1239,1248,1253,1354,503,351,352,353,1345,1346,337,742,1347,1351,155,149,794,791,798] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [171,174,175,2662,2663,188,187,189,186,432,463,464,466,434,467,436,439,435,369,357,192,473,468,1217,1242,1243,1254,1253,1354,204,1367,502,1352,1353,352,353,2907,1518,1516,1517,1515,1537,1536,1376,1375,1377,2661] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2627,2628,2621,2622,2623,2683,2625,2682,2816,2829,3197,3801,3802,3804,2830,2832,2961,3795,2999,3700,3686,3715,3716,3717,3223,3215,3219,3222,3253,3245,3246,3695,3074] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2657,2665,2666,2848,2937,2932,2668,2836,2670,2671,2833,2660,2904,2907,2930,3891,2902,2927,2925,2931,2926,175,176,177,178,3689,3690,3700,3664,3888,3909,3910,3802,3803,3804,3817,2831,2832,2960,3826,2683,2828] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3876,3877,456,1519,1520,1512,1377,1207,1391,1392,1479,1480,1481,465] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1673,1677,1138,1139,1675,1148,2253,2250,2243,2244,2246,2257,2261,2245,1690,1114] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2438,2439,2444,2446,2436,2478,2441,2528,3112,2461,2483,2971,3009,2488,2489,2490,2982,2487,2486,3113,2522,2509,2510,2511,2521] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2939,2940,2936,2938,3163,2933,2934,2944,2946,3159,2448,3182] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1866,2167,2000,2164,2165,2166,2168,2169,2005,1723,1724,1726] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
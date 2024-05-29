
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
        
        load "data/4MF1.pdb", protein
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
 
        load "data/4MF1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2951,1029,1030,2954,2957,2958,2959,2961,2969,2527,2960,2962,438,2519,2522,2524,2541,3002,3003,2398,2363,2374,2759,2984,2985,220,227,2375,2981,2986,2966,2967,2968,2980,2974,2364,1070,1071,596,601,615,616,621,624,1019,1022,1027,1028,437,448,1052,1053,1054,1051,1025,435,222,229,232,215,233,605,492,490,593,598,2418,2146,2153,2148,2141,2416,2155,2158,2159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2941,3015,3016,3023,2192,2514,2942,2569,2538,2572,2510,2190,2512,2175,2532,2038,2040,2072,2534,2071,2036,2037,2042,2039,2073,2191,2058,2913,2579,2602,2922,2927,3024,2539,2535,2508,2509,2511] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [990,995,1092,647,981,640,670,613,614,1009,609,1010,612,620,628,636,637,1084,249,112,114,146,111,113,584,262,265,266,147,116,110,132,122,608,606] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [545,81,531,532,533,540,273,75,76,77,78,79,80,156,157,548,37,59,35,38,510] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2007,2005,2471,2457,2458,2199,2488,2473,2474,1961,1964,2436,1988,1963] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1936,1935,1940,1932,1937,866,1859,865,1868,1828,1831,1832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [9,10,2797,3789,3792,3829,3791,2798,14,6,11] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
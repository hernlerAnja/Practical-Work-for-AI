
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
        
        load "data/2W96.pdb", protein
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
 
        load "data/2W96.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3109,3110,3081,3082,2688,2695,3083,2070,2071,2072,2074,3070,3068,2054,2107,2108,2053,2060,2681,2683,2057,3181,2229,2230,3182,2085,2078,2079,3093,2496,2213,2660,2662,3174] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3324,3375,3275,3276,3273,3305,3306,3311,3050,3051,3052,3053,2088,2089,2077,2078,3317,3312,3319,3320,2075,3070,3326,3043,3207,3039,3210] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [6,8,2448,2992,2995,2998,2446,1,7,105,106,107,108,109,2411,2412,2413,2381,137,2993,2994,1113,1145,1114,113,115,114] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4,5,2990,20,8,2997,2447,2445,69,70,77,78,107,2965,2963,2465,2467,2957,2958,2441,2442] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3948,3924,3595,3631,3643,3753,3754,3828,3558,3858,3916,3891,3592,3835,3836,3840,3841,3849,3762] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2208,2153,2523,2194,2185,2176,2011,2012,2653,2522,2519,2520,1066,2170] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1337,1335,1540,1542,1571,1537,1882,1561,1562,1563,1903,1902,1358,1367,1369,1878,1879,1880,1875] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2222,2224,2637,2638,2639,2236,2625,2220,2218,1999,2116,2118,2119,2028,2556] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2531,1988,2543,2544,1999,2008,2010,2220,2654,2638] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2990,20,55,56,57,2963,2956,2957,2958] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3101,2723,3574,3575,2876,2875,2911,2912,2873,2874,2914] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
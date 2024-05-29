
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
        
        load "data/4PUZ.pdb", protein
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
 
        load "data/4PUZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2830,2272,2839,2270,2271,2277,2324,2325,2449,2793,2789,2669,2788,2326,2308,2807,2810,3194,2464,3208,3311,3312,3313,2283,2307,2838,3224,3223,2274,2805] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1078,1077,684,693,664,127,129,659,1062,1048,1167,692,134,136,137,162,124,125,131,132,179,180,524,1158,1159,303,523,642,643,647,661,1165,318,1166] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3334,2536,2534,3336,3482,3456,3198,3199,3171,3172,3209,3325,3326,3197,2287,2296,2297,2305,2307,2302,2509,2533,2542,2543,2465,3208,3310,3312,2565] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [148,152,161,1051,1052,1053,1062,1026,1167,1025,390,1179,1180,1188,1190,388,389,387,159,319,419,1166,397,1163,1164,1165,361,156,360,1189] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1793,1800,1577,1797,1653,1667,1652,1664,1668,1803,1807,1741,1779,2413,1740,1685,2404,2405,2406] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1955,1956,1419,1421,1428,1429,1430,1431,1432,1454,1953,1959,1963,1964,1965,1756,1758,1392,1395,1391,1949,2826,2827,2828,3251,3254,3236,3241,3244,3246,3247] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1885,1840,1842,1843,1834,1835,1829,2204,2205,2196,2203,2209,2223,1876,2379,2380,1808,1809,1874,2421,2377,1871] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
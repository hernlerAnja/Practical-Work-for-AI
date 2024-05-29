
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
        
        load "data/5VZ5.pdb", protein
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
 
        load "data/5VZ5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [211,213,215,216,248,252,2785,2787,2711,214,66,68,67,212,1720,1963,1965,236,1966,1902,228,26,238,239,807,40,43,2724,2784,2786,2497,2727,2728,2715,2725,2726,2496,1898,1893,1895,1899,2733,2729,2730,2318,2319,2498,1894,255,2688,2689,2783,2791,2797,1918,1919,1920,2480,2801,2482,2804,1938,1952,1926,1927,1928,1929,2693,251,376,1939,1942,1943,1945,1946,377,378,2769,2495,2685,2825,2827] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1680,1681,1665,1667,1533,2388,1660,1661,1662,1975,2365,1666,3092,1664,1548,1549,1663,2359,2384,2361,3073,2387,3087] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [2795,168,2682,2683,303,2698,2702,2705,2691,2796,99,100,187,189,188,2532] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1020,1021,1050,1075,1266,1179,1191,1233,1230,1232,1056,1078,1257,1259,1262,1254,1255,1256] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
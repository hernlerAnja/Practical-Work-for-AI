
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
        
        load "data/7L1C.pdb", protein
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
 
        load "data/7L1C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1955,2442,2444,2743,2744,2745,2746,2690,213,214,215,2672,2677,2747,2748,2749,2655,67,68,2695,2691,796,2686,2687,2688,2692,2696,2697,1897,1898,1892,1899,2766,2763,254,2647,2650,2651,2652,1918,1916,1917,1925,1718,233,235,236,1957,238,239,251,234,241,247,227,1716,1717,1719,41,42,43,911,910,1720,1937,1926,1936,2457,1927,2787,2789] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1547,1664,1665,3059,1678,1679,1531,1532,1965,1966,1909,2310,2302,3057,3035,2321,2307,2318,2323,3018,3027,2327,2345,2349,2351,2346] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [921,1191,1189,3127,1228,1231,3109,3106,3110,1229,576,577,599,3096,804,806,3091,3093,3098,3100,1261,3081] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [167,314,2505,2508,2757,2777,2645,2666,2494,2667,2496,2498,164,99,2503,303,2649,2758,2653,2644,2660,188,2664] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        

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
        
        load "data/7L1B.pdb", protein
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
 
        load "data/7L1B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2749,210,211,212,213,214,215,67,68,1718,1897,1916,1917,1956,1957,2650,251,254,2659,1918,2766,1924,1925,1926,1927,2787,2789,384,385,233,238,227,235,1936,1937,1938,1939,234,247,2696,2697,796,2699,41,42,43,909,2744,2745,2457,2458,2442,2443,2444,2746,2747,2748,2672,2655,1889,2763,2651,2652,2647,2689,2695,2686,2687,2688,2691,2692,2677,1892,2690,1891] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2321,2323,2338,1966,2327,1532,2337,2345,2346,1547,1678,2349,2350,2351,2352,1965,1663,1665,1679,1531,1661,1662,1664,3035,3044,3046,3049,3054,1546,2310,2318,2356] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2649,2653,2643,2644,2645,2777,167,2664,2666,2660,2758,2757,166,188,2667,2494,2508,2505] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [921,3083,1261,3095,3108,3093,1228,1229,1230,1191,3111,3129,577,599] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [293,582,583,174,151,155,308,614,341,307,589,560,561,295] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
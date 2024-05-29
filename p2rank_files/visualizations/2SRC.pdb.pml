
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
        
        load "data/2SRC.pdb", protein
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
 
        load "data/2SRC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1697,2452,2460,2552,2553,2554,2555,1696,1584,1689,1693,1567,2453,1535,1544,1545,1568,2066,2476,2477,2087,1583,1680,2057,1529,1525,1526,1527,1531,1532,1533,1582,2090,2094,2095,2119,1917,1919,2041,2040,1936,2026,2025,1918,2564,2565,2566,2547,2548,2549,1548,2424,1554,1558,1561,1563,1565,1711,2423,2441,1552,1839,1840,2551,2575,2576,2577,2578,1783,1785,2579,2580,2608,2610,1747,2583,2655,2701,2654,2719,2720] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1331,1339,1358,1333,1335,61,101,74,81,98,100,78,82,1351,1948,1352,1357,431,67,72,1947,1663,1657,1661,1658,1662,2043,2051] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1885,1886,1887,2304,3443,3444,2275,2358,1888,1892,1893,1904,604,607,575,593,3477,576,2282,2278] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1319,543,545,547,1320,548,1304,546,539,540,541,483,529,506,497,54,56,416,44,45,1324] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3472,3520,3521,3537,620,621,924,622,596,2255,2256,2257,2258,2223,631,657,594,595,623,624,627,619,2222,2228,2232] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2050,2069,2535,2064,2054,1330,1337,1351,1348,1326,2520,2486,2489,2492,2493,1894,1895,1896,2519,2534,2070,2518,2076] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2238,2239,2240,2244,2219,2250,2939,2970,3246,2962,2960,2271,2245] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/4K11.pdb", protein
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
 
        load "data/4K11.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2486,2469,2562,2564,1697,2563,1582,1583,1584,1693,1695,1689,1531,1532,1537,1538,1544,1545,1568,2089,2090,2461,2061,1525,1526,1527,1529,2069,2054,2081,2082,2085,2114,1915,1917,1922,1934,2024,2021,1921,1928,1929,1932,2571,2573,2574,2575,2556,2557,2558,2559,2565,2568,1839,2586,2587,2033,2034,1680,2040,2058,1679,2062,2485] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2469,2561,2562,2564,1697,1584,1696,1537,1538,1544,1545,1568,1548,1565,1567,2450,1553,1554,1555,1558,1560,1562,1556,2710,2663,2664,2733,2433,2589,2592,2617,2619,1712,2588,2584,2585,2587,2560] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1333,101,1657,81,100,1335,82,98,1663,1661,1658,1662,1344,1348,1945,1946,2038,2041,2046,1352,430,431,1358,72,78,67,1339] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [529,539,540,541,543,545,547,548,1320,177,506,508,1304,546,504,484,483,497,54,41,56,416,1340,1341,44,1319,1324] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1326,1330,2506,2045,2064,2543,2544,2059,2065,2049,2041,2495,2498,2529,1889,1890,1893,2528] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1885,2305,2359,3456,3457,575,604,607,3490,576,2279,1894,1902] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2105,2106,3003,2448,2462,2762,2967,3021,2450,2763,1553,2710] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
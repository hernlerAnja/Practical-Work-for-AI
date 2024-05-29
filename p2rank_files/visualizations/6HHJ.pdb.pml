
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
        
        load "data/6HHJ.pdb", protein
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
 
        load "data/6HHJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2136,2159,2145,2146,2147,2144,2148,2000,2001,2002,2044,132,133,2318,1975,1981,1464,1465,1914,1915,1973,1979,1988,644,1469,1471,1411,1417,1418,1462,2166,2160,2161,2162,2183,2184,2185,2280,2278,2281,2282,2285,631,634,675,677,1990,120,121,1991,1992,630,636,640,641,642,643,429,1962,1964,1968,1963,1944,1945,1946,1947,421,645,647,646,648,1948,1949,661,662,663,2176,118,117,2042,2138,2043,2128,1466,2032,2019] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2392,2398,2399,2400,2409,2410,2413,2396,392,391,393,2923,2921,410,2421,411,412,2419,365,360,397,400,406,366,390,292,295,308,309,310,2395,232,248,249,2424,2428,2913,2912,2910,2911,2417,2959,2963] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1627,1628,1034,3325,3327,1016,1017,1656,1659,1676,1678,2060,1684,1686,1651,3364,3360,3361,3362,3311,3310,3320,3322,3323,3363,3365,3366] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2172,2175,2176,115,118,117,679,683,682,684,150,151,2180,2177,686,119,120,121,2280,2166,132,133] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1903,1905,1938,1931,1940,1892,1893,1895,1890,1891,1896,1897,1900,3150,3152,3146,3147,3148,3149,3151,3105,1872,1870,1873,1874,3024,3112,3104,3106] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [97,98,120,121,122,1992,694,2375,2376,634,675,677,425,678,696,2406,2407,2384,2404,426,429,437,439,296,299,294,682] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1030,1658,1659,1626,1628,2154,1031,1033,1034,2138,2043,2031,2139,2059,2151,2152] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2015,2020,2035,2312,2027,2529,2493,2303,2574,2575,2306,2036,2530] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [180,181,157,2256,2369,2709,2671,2685,142,2648,2673] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
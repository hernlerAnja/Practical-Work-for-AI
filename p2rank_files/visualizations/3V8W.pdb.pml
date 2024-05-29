
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
        
        load "data/3V8W.pdb", protein
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
 
        load "data/3V8W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2860,2859,2808,2841,2842,2811,2814,2815,2816,2413,1031,2396,2074,2075,1015,2399,2279,2394,2388,2391,425,426,1029,1030,437,803,2069,804,2062,436,2296,2067,2298,2071,2843,1004,585,606,233,215,580,577,2243,2244,2254,478,480,229,232,2255,227,220,222,225,999,1002,1003,599,996,601,1047,1048] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [568,570,146,249,262,263,264,265,145,147,451,566,567,1061,576,986,1060,969,967,968,1067,1068,572,384,1063,1069,593,596,597,598,621,985,987,114,109,110,111,112,116,624,958,628,650,590,592] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2770,2879,2880,2881,2438,2442,1964,1951,1952,1958,2105,2382,1989,2106,2384,1988,2091,1956,2402,2404,1953,1954,2269,2797,2798,2799,2407,2412,2873,2410,2435,2380,2383,2381,2390,2386] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2036,1771,2035,1848,1851,1852,2291,1849,1850,881,1853,843,821,1865,1856,1780,1743] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [193,3620,3580,3583,14,2633,2655,473,6,9,10,11,2693,23,2239] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1095,1401,1443,1262,1643,1644,1645,1646,1647,1399,1403,1489,1442,1463] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1921,2360,1880,2332,2333,2334,2337,2338,2316,1919,2113,2343,2346,1923] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
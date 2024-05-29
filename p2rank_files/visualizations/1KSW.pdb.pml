
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
        
        load "data/1KSW.pdb", protein
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
 
        load "data/1KSW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2472,2474,2091,2449,2084,2087,2063,2071,1919,1917,2473,2544,2060,2556,2561,2562,2563,2545,2546,2550,2551,2552,2553,2457,1583,1680,1693,2023,1582,1584,1696,1529,2056,1533,1534,1571,1544,1568,1527,1526,1532,1530,1924,2035,2036,1936,1679,2042,1697,1545,1567,1839,2026,2027,2574,2573] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2457,2421,1552,2438,2548,2549,2550,2551,2552,2576,2577,2580,2652,2651,2717,1563,2698,2450,1697,1711,1545,1548,1554,1565,1561,1558,1566,2574,2572,2605,1747,2607,1544,1696] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1357,1339,101,1352,1358,74,100,1333,1335,81,98,78,82,1946,1948,72,431,67,1351,1350,2043,1947,2040,2048,1661,1662,1663,1657,1658,1656,1646,1647,1651,1652,1648,1649,2051] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2047,2066,2531,2532,2051,2068,2073,2493,2489,2490,2515,2516,2517,2483,2486,1348,1351,1326,1895,1889,1891,1894] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [594,595,596,620,621,622,3534,657,3517,3518,3538,3526,3527,3541,2221,3502,2252,2253,2254,2220] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3472,3473,3474,2300,2301,3440,3441,607,575,604,593,574,576,1893,1896,1904,1885,1887,2299,2354,2355,2318] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1324,1320,41,54,56,1340,1341,416,44,481,484,485,42,45,483,496,504,506,543,497,529,540,541,545,547,548,1319] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1895,639,641,606,567,569,545,566,640,1319,1891,1894,1896,602,603,2516,2517,629,2531,2532] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2436,2438,2746,2747,3004,2108,3005,2450] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
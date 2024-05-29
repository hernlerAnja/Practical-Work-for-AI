
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
        
        load "data/2FO0.pdb", protein
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
 
        load "data/2FO0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1625,2181,2189,2205,1624,2206,2209,1628,2240,1622,1785,2173,2175,2177,1623,1697,1617,1620,2178,2182,2161,1650,1651,1652,1653,1649,2216,1676,1800,1801,1675,1793,1797,1644,1626,2026,2028,2609,2610,2684,2700,2687,2693,2027,1952,1953,2691,1928,2157,2697,2694,2156,2138,2141] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2342,2339,2340,2343,2362,2364,3709,3707,3708,2298,3743,3119,3121,3122,2299,2301,3098,3103,3068,3101,3104,3388,3349,3350,3351,3342,3364,3679,3363,3389,2361,2398,2367,2372] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1998,2013,2411,2012,2407,2433,2434,865,3580,3581,698,699,3615,715,864,2402,2406,2403,2404,2405,2377,2003,2004,2384,723,2380,2382,1381,757,755,722,1384,1385,1383,683,693,688,694,756,2412,2413,2655,2375,2456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1419,1422,1423,1424,553,1425,220,1441,1447,239,240,1400,1402,218,223,1404,226,552,1765,1745,1746,1766,1747,2053,2162,2164,2166] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [385,393,394,395,400,403,1458,1465,1478,1483,1476,1482,1987,415,1988,1429,1957,1510,1506,1507,1508,1509,1493,1490,1439,1442,1452,1453,2049,1970,1971] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [632,633,105,106,1182,1183,1197,1184,94,70,78,587,591,622,623,1179,1203,1185,605] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2170,2184,2185,2619,2656,2672,2622,2626,2627,2053,2162,2164,2166,1408,1413,1418,1419,1422,1395,1399,1417] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [611,667,669,677,686,614,538,539,1410,190,200,202,1375,657,1376,1374,1391,1384,1385,1382,1377] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [848,855,858,895,896,859,695,3610,700,704,1035,1036,706,3645,3646,3649,917,1018,1028,708,1010,690,842] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [73,129,99,178,621,622,623,128,591,71,70,95,42,46,41,44,630,632,327,176] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1448,238,1453,1454,242,1751,1740,1526,1720,2049,1564,1717,1749,1494,1493,1502,1516] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [9,1345,37,48,46,1368,1373,1352,1359,1362,637,638,639,302,303,36,38,304,305,618] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
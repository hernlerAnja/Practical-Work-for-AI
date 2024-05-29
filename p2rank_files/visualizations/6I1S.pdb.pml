
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
        
        load "data/6I1S.pdb", protein
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
 
        load "data/6I1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1325,1326,1327,1328,1329,1330,307,1314,1315,1337,321,322,1298,1610,1611,931,918,927,932,957,960,917,1604,1606,1597,1627,1628,1640,1642,1629,947,949,951,1321,2039,2040,2109,2110,2123,2107,2115,1916,1621,1612,1617,1618,352,301,304,294,296,1353,1354,353,354,890,896,297,299,460,899,909,923,924,298,892,476,314,317,319,323,327,330,332,333,472,474,745,873,1425,858,1430,1433,1590,1591,543] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [766,878,879,881,883,99,444,882,904,905,711,709,1370,1366,1368,1379,1376,1375,1371,682,728,688,698,701,746,747,749,750,753,129,691,692,693,694,97,72,73,76,68,70,439] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2992,2997,3002,3003,214,2994,2999,3000,3001,3006,3007,244,246,3008,3017,3063,3021,3062,3024,187,2987,51,56,2977,42,2982,2978,47,48,49,50,426,44,407,422,424,245,55,186,91,92,221,88,2786,2787,149,2961,2962] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1283,1284,1285,1287,1288,1602,1601,1586,1595,1598,1599,1732,1734,1783,1785,1733,1679,1812,1678,1676,1651,1635,1608,1645,1649,1718,1571,1552,1553] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1142,1164,1165,1180,2529,2532,2525,1166,1794,1795,1793,1168,1791,1767,1804,2519,2520,2508,2517,2518,1827,1801,1803] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1506,1754,1757,1761,1765,1165,1795,1759,1767,1195,1192,1256,1503,1491,1488,1490] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1360,970,971,1389,1391,1388,1383,1070,1080,1019,1046,1047,1374] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
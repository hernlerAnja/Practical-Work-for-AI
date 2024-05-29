
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
        
        load "data/3LFF.pdb", protein
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
 
        load "data/3LFF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1436,1460,1485,1478,1480,1498,1506,1479,1481,1482,1484,1429,1767,1463,1464,1766,1764,1742,1440,1524,2236,1522,1523,2244,1430,2221,2220,2222,1843,1870,1904,2243,1869,1892,1894,1798,1799,1800,1903,1983,1939,1981,1938,1973,2006,1971,1936,2231,2229,2218,1791] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1158,523,563,565,1163,1169,1171,1341,1342,1344,1331,1337,1340,599,600,651,643,1122,1175,1327,574,559,572,527,531,533,1357] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [817,834,373,1346,1351,369,573,574,572,267,224,1353,1355,225,226,227,377,533,1348,375,833,361,848,838,650,851,850,1333,1336,1252,870,874,875,876,651,1337,1340,1229,1354,1335,863,864,866,867,868] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2284,2274,2277,2278,2279,2280,2285,2289,1535,1541,1530,1533,1133,1134,1137,1097,1099,2439,1127,1129,1101] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [843,844,2703,337,338,841,653,654,655,656,672,660,2704,597,614,622,603,1320] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1686,2086,1780,1805,1819,1818,1697,1816,2046,2085,1683,1695] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [637,1051,1041,1043,1077,1079,2416,1078,1015,1017,1052,1053,629,2372,2368] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
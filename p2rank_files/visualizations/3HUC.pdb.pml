
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
        
        load "data/3HUC.pdb", protein
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
 
        load "data/3HUC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1483,1487,1488,1932,1466,1484,1485,1467,1762,1734,1737,1738,1481,1482,1502,1440,1442,1443,2213,1436,1439,1435,1517,2226,2230,2231,1498,1506,1524,2237,2239,1432,1787,1760,1763,1764,1900,1839,1971,1888,1887,1866,2215,2217,1865,2224,1890,2238,1796,2216,1794,1795,1969,1994,1993,1765,1929,1931,1956,1959,1961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [660,1341,1347,1356,1357,1348,1349,1350,1351,1352,1353,581,1342,866,860,859,261,388,279,280,281,382,386,372,374,263,232,233,547,819,821,389,390,818,823,834,825,826,373,836,671,853,259,1333] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1181,1183,1322,1325,1335,1339,1329,1330,1129,574,651,573,607,608,1179,1128,1170,1165,1176,1178,659,572,1340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [661,664,844,845,846,605,662,663,665,611,614,615,680,2705,2704,2710,668,621,622,630,619,1318,634] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1048,644,1050,1084,1085,1086,2412,2415,1058,1022,1059,1060,1024,1298,633,634,635,636,2371,2367] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1529,1540,2269,2275,2279,2272,2273,2274,1523,2280,2284,1136,1132,1134,1140,1141,1532,1144,1104,1102,1106] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [697,707,713,686,688,692,155,687,700,14,22,23,41,710,172,174,2682,2698,2699] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2204,2209,2210,1819,2198,2208,2246,2032,2248,1841,1842,1866,2214,2218,2217,1863,2222,2225,1859,1830] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [842,843,845,841,850,862,1316,1317,1318,1254,1296,1297,1266,1269,1301] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [914,993,995,996,997,1288,1291,994,1273,1287,1265,916] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
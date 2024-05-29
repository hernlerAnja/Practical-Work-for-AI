
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
        
        load "data/3PG3.pdb", protein
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
 
        load "data/3PG3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1358,265,865,869,868,878,877,283,237,234,236,864,669,1336,668,670,1339,872,828,846,376,377,845,1356,261,264,1355,1357,263,266,1340,1343,549,584,585,259,260,284,831,389,391,393,385,886,888,879,882,913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1463,1486,1488,1464,1466,1467,1481,1482,1483,1484,1485,1487,1904,1915,1935,1910,1914,1909,1765,1974,1932,1934,1972,1903,1902,1901,1890,1891,1962,1964,1959,1435,2216,2218,1436,1439,1432,1433,2219,1440,2227,2229,2234,2240,2242,1501,2241,1790,1763,1766,1869,2220,1842,1843,1868,1893,1797,1799,1798,1509,1520] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1340,1343,547,549,576,585,575,577,618,669,539,2514,1334,1344,1187,1327,1134,661,1132,1133,1169,1170,1345,1346,1183,1175,1181,2491] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1322,1323,854,856,855,690,2704,2705,671,672,673,674,632,615,621,629,670,678,631,644] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1537,1543,2277,2272,2275,2276,2278,2283,2287,1526,1536,1109,1137,1145,1146,1149,1111,2441,1139,1141,2282,1107,1113,1532] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1063,1064,1027,2374,1053,1055,2368,2370,2393,2416,1089,1090,1029,1065,1303,644,1091,2418,643,654] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [707,696,698,702,2682,2659,2678,2657,2668,697,710,22,23,11,41,720,175,177,2698,2699,335,2697] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1322,851,852,854,856,860,1271,1274,853,855,670,1320,1321,1259,870,1257,1258,1301,1262,1267,1306] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1396,1398,1408,904,1410,1632,1677,903,905,1633,1363,1366] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
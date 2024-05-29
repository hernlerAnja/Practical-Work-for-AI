
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
        
        load "data/2LGC.pdb", protein
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
 
        load "data/2LGC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [517,691,514,515,1574,1575,1576,1630,1631,366,336,392,393,499,367,368,370,372,337,369,371,1090,339,340,688,689,995,994,687,1607,1604,677,728,816,822,817,1477,1566,1567,1056,1060,1036,1045,1046,1033,1012,1014,1008,1019,1052,1053,1047,1048,1050,730,831,1582,1569,1570,1578,1581,720,1585,676,729,1602] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [553,618,655,558,547,548,552,620,642,1605,1606,1607,1608,1623,1624,1625,1633,1634,1637,1638,1610,1622,517,691,1575,1628,1630,376,380,522,551,385,530,533,538,557,545,549,550,540,542,536,690,644,646,619] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1452,1453,1063,357,359,360,1081,1629,1715,1716,1709,1710,1617,1613,1438,1439,1636,1642,1643,1644,1646,1647,1648,1462,1461,1451] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1013,1016,1020,1022,1021,1024,1549,472,1023,1025,1529,1548,1494,772,774,775,805,786,784,788,819,820,821,822,3214,3215,827,840,824,756,763,766,767] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1347,1898,1343,1902,1345,2733,2734,2735,2737,1904,1905,1910,1890,1891,1342,1351,1310,1312,2741,2743,2747,1350,1354] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [103,854,871,122,90,102,874,86,3162,3164,3168,877,252,849,860,863,848,3186,3190,3207,3208,3209,3170,451,72,270,272,3187] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1530,791,1220,1249,2841,2866,2890,2894,800,1258,1260,1287,1288,790,1289,1218,2844,2839] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1189,1190,1134,1132,1133,1484,1516,1490,1515,1519,1520,1499,1099,1098,1153] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1593,1418,1419,1420,1773,1774,1721,1722,1723,1616,1618,1648,1404,1417] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1508,1509,1519,1217,1219,1507,1499,1179,1188,1190,1214,2846,2848] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [208,209,884,885,236,968,233,211,967,961,965,966,883,956,959] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1117,1712,1750,1716,2012,2062,1080] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2068,2176,2071,2216,2517,2218,2473,2080,2082,2204] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2273,2275,2315,2395,2247,1849] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
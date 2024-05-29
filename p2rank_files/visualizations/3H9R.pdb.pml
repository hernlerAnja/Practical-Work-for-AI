
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
        
        load "data/3H9R.pdb", protein
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
 
        load "data/3H9R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1393,1397,1400,1392,1321,1292,1304,908,901,904,909,937,721,849,850,458,854,1320,366,867,869,876,886,311,873,593,1394,835,474,346,345,313,316,319,466,470,472,473,365,367,308,309,310,1294,1296,1281,1282,1293,1295] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [226,2829,2831,2834,2837,2838,2899,2854,258,2628,199,2824,2839,2840,2841,83,2812,2813,2819,2811,257,414,422,423,424,425,1,4,22,2861,35,38,42,45,33,39,41,40,2827,2796,2795,2810,2858,3303,198,233,172,82] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [442,742,744,90,856,857,859,59,63,64,67,437,61,729,91,673,709,722,723,724,725,855,858,860,881,882,1335,681,682,690,692,693,1336,1337,1333,1352,1354,1338,1342,1347,1351,1344,879,669,679] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1478,1477,334,335,1280,1282,1295,1296,1297,926,928,1972,1971,1484,1973,1978,1986,1479,1489,1493,1509,1496,1902,1903,1474,1480,1288,1289,1510,336,343,345,326,329,333] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1476,1513,1517,1468,1546,1470,1469,1264,1473,1716,1503,1502,1547,1680,1681,1504,1587,1602,1586,1254,1255,1649,1651,1653,1249,1250] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1659,1669,1695,2373,2385,2379,2382,2384,2390,1671,1634,1636,1136,1137,1662,1663,1144,1139,2389,2394,1113,2362,1147,1148] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1265,1478,1477,335,1281,1282,1293,1456,1465,1479,1474,1458,1459,340,336,343,345,329,333,1400,1304] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [686,1121,1123,1115,1116,1149,687,688,1095,1097,697,1150,1167,1112,1114,2425,2396] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3176,2746,3167,3174,3117,178,176,177,3147,3118,191] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1356,1358,946,948,1023,996,1024,947,1057] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
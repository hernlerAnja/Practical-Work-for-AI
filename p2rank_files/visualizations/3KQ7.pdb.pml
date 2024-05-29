
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
        
        load "data/3KQ7.pdb", protein
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
 
        load "data/3KQ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [372,870,1362,866,869,864,846,847,371,829,841,1376,1355,1357,1360,387,388,545,384,277,232,231,279,278,233,1375,1338,662,871,1342,1346,1349,585] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1206,1353,1351,1352,576,541,572,532,1189,1336,1346,1350,1349,542,583,585,612,662,1328,1401,1402,1399,533,534,1366,1367,1368,1380,504,260,499,501,502,503,388,543,545,1176,1197,1198,1135,1171,574,1199,1184,1182,1185,1187,1331,654,1134,611] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1206,1209,1353,1351,1352,1246,1400,1402,1432,1433,1434,1366,1367,1369,1377,1380,1381,504,1356,1357,1358,1365,1530,1225,1226,1484,1239] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2385,2386,2387,2382,2388,2393,2397,1653,1643,1142,2392,1140,1138,1146,1646,1147,1108,1112,1110,1150] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1506,1508,1787,905,1743,937,938,1782,1226,1477,1234,1238,1239,906,1519,1520,1233] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [857,2817,2818,683,664,665,666,667,855,1324,608,614,652,625] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [647,1090,1091,1092,1064,1056,2529,2480,648,1066,1304,1307,639,1028,2483,2485,1030] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [689,691,2795,2812,690,695,2770,2791,172,2811,700,703,710,153,17,18,170,152] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1785,1790,1792,1795,1764,1765,1766,1775,1774,2193,2194,2191,1927,2203] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1260,872,853,854,856,873,1321,1323,1324,852,1275,861,1316,1303,1306,1268,1272,1263,1258,1259,1261,874,1302,1301] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
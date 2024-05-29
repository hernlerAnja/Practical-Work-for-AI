
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
        
        load "data/P51957.pdb", protein
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
 
        load "data/P51957.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [93,94,97,98,713,151,279,280,262,96,683,95,679,681,263,150,275,703,682,687,1128,1211,1213,1110,1212,1126,1098,711,529,530,671,1124,1127,667,686] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1707,1431,1434,1728,1730,1731,6582,1432,6097,6065,6066,6067,1422,1312,1424,1452,1396,1397,1429,1337,1339,6566,6567,6569,1338,6564,1313,6580,6581,6536,6540,6541,6542,1710,1702,1310,1311,1770] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1349,1362,1249,1329,1330,1331,1323,1348,1322,1304,1324,1302,1301,1303,1305,1300,1306,1307,1309,1311,1350,1354,1356,1360,1387,1068,129,131,1063,1245,1246,1084,1086,1102,1391,1426,1393,1396,1397,1427,1312,1424,1361,1363,1378,1380,1381,1382,1385,1390,1064,1070,1074,1548,1055,1480,1054,1056,1474,1476,1478,1057,1058,1061,1472,119] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [5505,5504,5506,5503,5471,5472,1193,676,1161,1147,5452,5474,5479,1192,536,537,669,228,230,232,233,234,236,239,240,241,1151,1154,5451,5454,5455,5456,243,696] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1237,1207,1218,1212,667,457,458,666,1214,423,428,296,297,123,277,278,279,280,652] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [5716,2030,2029,2027,1508,2037,2040,2043,1023,959,991,990,994,1494,1496,1022,1498,1500,1492,1491,1493,2033,962,1002,963,5696,5694] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1033,1231,1019,1026,1058,1061,450,5743,5745,5746,5747,5748,1031,1030,425,446,1232,413,415,420,414,1256,5730] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [667,1206,457,458,666,1214,528,1207,1218,1212,522,1220,480,477] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
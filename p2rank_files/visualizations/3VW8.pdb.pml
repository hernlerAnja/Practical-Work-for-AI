
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
        
        load "data/3VW8.pdb", protein
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
 
        load "data/3VW8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [405,407,1437,1438,1439,1469,1472,1473,345,351,352,353,354,355,358,1475,1474,1487,1488,350,406,531,1340,908,924,1430,1433,1434,1455,1456,1468,1435,1436,543,545,547,888,903,904,1424,901,783,1339,1423,1325,1429,962,1311,1312,1314,1502,1503,977,1520,1529,1531,951,952,349,920,922,927,935,988,346,918,955,961,979,989,1016] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1212,1268,701,1252,1253,1425,1270,1267,1269,1428,1264,1421,1412,1417,1418,1419,707,733,774,735,676,677,678,1424,708] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1286,1426,1427,1428,1287,1289,1274,1542,1580,1264,1275,1277,1560,1544,678,646,681,1441,1561,1462,1464,1440,1442,1443,1465] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2228,1722,2223,2226,1719,1721,2239,2243,1218,1711,1713,1216,1217,1219,1220,1190,1188] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [552,553,317,557,568,416,315,363,418] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [949,1384,1380,1381,1382,1383,1385,1000,1054,1051,1379,1057,1097,1099,1098,1056,1062,1129,1130] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2150,1591,1891,1892,1614,1752,1755,1994,2149,2151] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
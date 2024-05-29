
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
        
        load "data/8AE7.pdb", protein
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
 
        load "data/8AE7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1450,1451,1454,1455,1456,1457,561,562,661,1473,1474,1476,1475,409,413,414,415,416,404,417,418,419,400,560,426,603,606,768,901,902,903,905,906,442,396,397,375,382,383,1449,441,377,379,1446,1448,544,545,546,1348,1349,770,923,929,910,1292,1607,1608,1620,1291,1293,1481,1482,1483,1320,1333,973,1309,620,605,619,621,947,948,380,925,376] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1305,1311,1314,1315,1316,1852,1654,1642,1322,1324,1307,1309,1323,1325,1326,1338,1339,1340,1357,1106,1618,1626,1874,1876,1655,1935,1938,1640,1848,1882,1883,1126,1078,1157,1075,1005,1007,1884,1002,1932,1929,1035,1073,966,967,1001,968,997,999,1854] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [216,215,187,194,199,196,1496,1497,1528,1530,1550,1549] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1763,1777,1778,1781,1227,1769,2681,1195,75,1804,2675,2678,52,2658,2680,2627,48,2669] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
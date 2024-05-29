
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
        
        load "data/5NKG.pdb", protein
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
 
        load "data/5NKG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [312,313,314,170,171,310,451,475,675,677,678,450,692,711,297,693,1268,1303,1297,1298,1299,1302,1119,1133,1223,1224,1227,1228,1229,1230,1221,1222,1150,1148,1149,715,718,719,559,1274,114,120,116,115,118,744,748,741] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1267,1299,1300,1301,1302,148,150,141,143,152,144,145,328,390,389,421,424,416,420,388,386,1266,313,314,171,154,318,153,426,393,419,128,129,155] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [948,950,952,959,979,887,909,910,911,912,922,1187,1189,1183,1194,1193,530,532,1175,540,539] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1548,2117,1546,1554,1555,1558,2118,2119,2120,2124,2127,1032,2131,2112,2115,2072,1025,1024,1552,1048,1550,1542,1540,1539,1541] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [730,731,1171,706,1162,701,1209,1179,1163,1165,529,531] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1706,1707,1746,1649,1747,1749,1911,1902,1917,2313,2314,1922,1923,1894,2338] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1439,1591,1449,1452,1453,1837,1807,1836,1810,1835,1813,1812,1482,1845,1588,1414,1406,1473,1476,1475,1814] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1727,1750,1766,1767,1768,1830,1732,1734,1895,1863,1873,1865,1861,1862] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
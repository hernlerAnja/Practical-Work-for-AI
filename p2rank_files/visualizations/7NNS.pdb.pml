
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
        
        load "data/7NNS.pdb", protein
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
 
        load "data/7NNS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [116,238,136,137,117,236,84,85,89,86,87,483,621,639,224,644,657,659,661,1348,239,240,286,1188,1191,1192,1193,1194,355,1187,354,625,112,113,115,285,106,107,108,111,284,1087,1088,1089,1091,698,727,694,692,1115,1116,1117,666,676,691,663,1098,1061,1367,1077,1078,1368,1186,1347,1354,1346] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1358,1359,1436,1408,1365,1401,1402,1406,1435,1046,1047,1048,1050,1569,1352,1355,1328,1343,1356,1213,1051,1214,1491,1540,1542,1309,1310,1475,1476,1433,1538,1391,1392] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1090,1091,1093,718,1367,1076,1078,1368,1382,1861,1862,1867,1875,1859,113,115,106,1084,1397,1399,1665,1791,714,716,1384,1385,1386,1792] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1546,1547,1553,1558,2262,2268,1548,1551,2271,2273,2272,2283,944,1552,2279,1584,932,933] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1173,671,672,1131,1133,444,452,471,454,647,646,649,484,485] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1149,1150,1137,736,737,738,853,817,819,775,786] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
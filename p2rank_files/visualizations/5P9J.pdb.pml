
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
        
        load "data/5P9J.pdb", protein
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
 
        load "data/5P9J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [183,296,300,1188,1212,298,617,181,182,676,679,131,133,141,142,144,145,148,153,137,138,139,129,130,283,514,631,632,636,1108,1181,1109,512,1211,389,446,531,616,1198,1200,529,654,658,657,1072,1092,1189,683,1086,1182,1183] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [836,840,771,808,1145,871,717,719,1143,873,835,774,776,1128,1142,1135,1136,672,674,673] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1186,1213,156,1214,1217,1047,1050,1284,1286,1075,1092,1094,1189,1076,1077,1281,1328,1309,1185,1212,166,1209] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1599,1562,1598,1827,1833,1838,1618,1619,1644,1650,1802,1645,1559,1560,1656,1661,1662,1664,1796,1787,1803,1806,1809,1812,1840,1842,1811,1813,1830] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1358,1572,1635,700,737,1076,1077,1359,1314,1695,1309,1073,1075,1342,1343,1694,1629,1623] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [277,537,540,542,37,538,539,541,543,221,222,223,224,225,226,35,267,256,257,258,259,260,262] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1035,1449,1281,1319,1327,1328,1321,1293,1450,1351,1044,1218,1217,1216,1036,1447,1350,1362,1366,1373,1476,1475] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
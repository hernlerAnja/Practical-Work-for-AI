
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
        
        load "data/4IM3.pdb", protein
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
 
        load "data/4IM3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [161,464,434,435,436,438,1220,1206,1222,1224,1207,1214,1217,506,461,660,661,306,644,528,411,320,322,324,318,319,321,323,413,414,626,383,338,340,511,521,525] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [128,134,179,180,661,181,306,131,132,129,705,702,709,1095,1096,1094,1204,686,687,685,682,665,289,1072,1213,1205,1211,1210,1212,710,736] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1740,2755,2760,1736,1723,2187,836,1757,1742,1748,1753,1754,1743,3051,3021,3023,3024,3050,3052,3034,2188,1759,3076,3086,2096,2619,2620,2623,2167,2168,2169,3087,2162,2164,2185,2173] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1700,1719,1692,1717,1691,1593,1594,1605,1622,1623,1668,1331,1368,1369,1404,1357,1732,1718,2784,1356,1330,1358] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1374,1377,1300,1301,1384,1376,1340,1067,1068,1066,1342,1302,1385,1272,1388,1501,1538,1048,1281,1308,1279,1057,1282,1270] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1832,1834,1833,2015,892,1317,1319,1812] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [282,284,226,228,537,531,532,533,535,63,544,652,54,561] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [938,941,1252,1010,1016,1255,974,1004,1015,937,939,1233,1951,1953] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4799,4784,3452,3417,3546,3427,3428,3450,3451,3453,3455,3456,3461,4794,4800,4803,3547,3523,3525] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
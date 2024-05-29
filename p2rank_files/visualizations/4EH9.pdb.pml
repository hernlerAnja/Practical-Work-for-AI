
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
        
        load "data/4EH9.pdb", protein
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
 
        load "data/4EH9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1415,1416,1417,1413,1414,1389,1430,1431,1432,1433,1436,1426,1427,1434,1435,1437,1882,1856,1861,1691,1710,1713,1685,2177,1438,1382,1737,1789,1790,1712,1746,1745,1850,1836,1837,1838,1848,1920,1849,1910,1943,2159,1816,2172,2170,2184,1815,2162] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1279,1281,1282,1278,522,556,558,549,545,547,551,552,550,546,510,635,583,1126,1119,1121,1123,1124,1113,1108,1072,627,584,1071,1273] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [831,845,846,834,842,1277,1276,816,835,836,1197,1298,1299,1289,1303,1300,1304,1284,372,229,230,828,829,356,263,262,231,228,371,1174,852,848] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2313,2358,2361,993,1027,1028,994,991,1001,2317,965,967,621,609,612,620,1029,1003,2311,2314] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1203,1235,974,935,936,937,939,906,938,940,975,885,886] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2221,2225,2226,2230,2218,2220,2219,1487,1476,1493,1077,1079,1047,1049,1083,1486,1482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [152,36,170,16,17,153,18,676,663,664,668,2628,2603] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [817,818,1261,821,837,1212,1244,826,1221,820,822] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1762,1764,2027,1987,1755,1988,2026,2024,1632,1636,1646] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        

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
        
        load "data/2FSM.pdb", protein
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
 
        load "data/2FSM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1393,1394,1412,1415,1414,1409,1411,1862,1664,1667,1668,1692,1359,1360,1362,1363,1693,1369,1367,1368,1370,2143,2156,1366,1447,1451,2161,1428,1429,2168,1688,1694,1690,1796,1795,2154,2169,1818,1820,1726,2145,2146,2147,1769,1770,1699,1725,1899,1901,1859,1861,1889,1817,1891,1892,1923,1924] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1267,638,640,820,1270,840,1190,1269,839,849,850,835,838,1285,1287,1289,1278,561,562,1277,369,260,261,362,366,368,353,354,815,798,816,799,801,370,526,240,833,259,237,856] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1274,1265,1271,1272,562,1275,1277,551,553,554,639,587,1112,1101,1106,1114,1120,1266,1258,1065,1118,588,1064,631] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [878,879,1196,1197,866,1201,1209,1224,1228,863,1568,899,900,932,933,967,968] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [668,179,15,27,26,9,181,680,45,677,690,2584,2593,43,2607,2603,2582,666,667,672,2622,2623,2624] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [958,960,994,2300,2302,984,986,2297,1020,1021,2346,2320,996,625,616,1022,2288,2295] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2199,2202,1463,2204,2203,2205,2210,2214,1070,1068,1076,1077,1069,1040,1072,2209,1038,1042] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
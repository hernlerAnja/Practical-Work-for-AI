
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
        
        load "data/5TCO.pdb", protein
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
 
        load "data/5TCO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [773,1263,1262,1183,203,606,608,774,530,1282,607,778,793,801,803,804,805,806,1271,213,208,209,1264,1265,1270,494,492,528,529,1294,321,322,228,207,202,204,205,206,334,336,229,791,1160,1281,807,808,810,814,817,1272,1275] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1391,1393,1413,1415,1394,1409,1410,1411,1412,1414,1685,1687,1360,1357,1362,1359,1688,1712,1370,1366,1431,1442,1367,2118,2113,1449,2125,1428,2100,2101,2103,2104,1787,1721,2111,2126,1786,1809,1811,1821,1684,1719,1720,1764,1892,1853,1890,1820,1880,1882] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1968,1971,1966,1967,1978,2052,1739,1740,2088,2054,1543,1546,1607,1577,1578,2031,1996,1567,1568,1570] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [559,567,597,782,784,1247,609,610,611,553,613,628,616,2591,2592,570,578] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [977,979,1013,1014,1015,2303,987,951,953,584,989,593,2254,2257] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2166,2156,2159,2162,2167,2171,2161,2160,1452,1459,1465,1061,1063,1065,1033,1035,1037,1069,1454,1457] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [781,799,800,1198,788,783,784,1246,1247,1195,299,1229] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
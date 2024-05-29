
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
        
        load "data/5V24.pdb", protein
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
 
        load "data/5V24.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1653,1624,3405,1670,1651,3696,3397,3673,3698,3725,3726,3727,3728,1557,1558,1561,1674,1688,3678,3733,3734,1695,1538,1631,1536,1593,1595,1596,1556,1534,1618,1620,1622,1623,1625] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3114,3125,3140,3223,3224,2136,2137,2141,2142,2560,2297,2691,2698,2562,2139,2140,2732,3141,2717,2713,2716,2739,2195,2693,2694,2193,2194,3225,2147,2148,2155,3232,3229] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [194,136,137,141,139,1076,195,142,147,1185,1186,1187,524,660,297,1102,1103,679,675,678,140,1188,1191,1194,155,148,1087,655,656,314,693,694] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1380,1387,1410,1901,979,1381,1895,1907,1908,1909,977,1384,1386,989,1382,1892,1897,1896,1878] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1630,1664,1539,1326,1327,1424,1425,1628,1656,1657,1322,1323,1353,1312,1671,1666] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2809,2813,2834,2805,2806,2807,2808,2810,2811,2859,2883,2884,3159,3160,3161,2917,2918,3162,3164] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [846,845,796,821,769,770,771,772,773,775,1121,1123,866,868,869,879,880,1146,1145] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/3QUD.pdb", protein
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
 
        load "data/3QUD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1339,1351,1360,1361,1370,1338,1346,663,1368,1369,865,869,873,874,875,876,877,661,838,1321,844,236,233,234,235,821,822,820,839,283,375,376,377,391,389,284,863,833,1259,886,912,879,880,888] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1482,1485,1516,1517,1489,1486,1538,1531,1532,1534,1535,1537,1556,1989,1986,1820,1817,1819,1483,1490,1493,2270,2283,1580,2288,2296,1791,2028,1921,1922,1923,1957,1945,1944,1896,1897,2027,1853,1852,2026,2016,2018,2050,2051,2276,2281,2295,1947,2271,2273,2274,1549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1185,1187,1341,1181,1183,576,1133,1170,1175,1197,2545,2570,1343,654,1132,1134,611,1344,577,534,574,610,1357,1358,536,537,539] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2332,2329,2330,2331,2337,2341,1581,1109,1139,1107,1111,1113,1145,1146,1149,1590,1141] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1372,248,1375,263,265,1354,251,255,1352,1359,1361,1362,1238,1224,1423,1208,1225] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [665,666,608,614,619,849,1322,1323,652,668,671,2761,2762,2763,621,853,683,2767,855,632,633,637,624,625,622,635] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1053,1055,1056,2424,1089,1090,2470,2469,2428,1027,2430,648,639,1091,2472,1063,1065,1029] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [716,2714,2716,695,158,710,713,700,703,175,690,691,22,23] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2099,2137,2138,1869,1833,2135,1729,1734,1736,1739,1750,1748,1719,1709,1710,2148] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
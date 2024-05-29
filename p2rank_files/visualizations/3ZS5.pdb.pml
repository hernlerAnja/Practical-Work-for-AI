
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
        
        load "data/3ZS5.pdb", protein
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
 
        load "data/3ZS5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1548,1547,2030,2033,1524,1526,1527,1542,1544,1545,1988,1858,2314,1491,1492,1494,2316,1482,1484,2317,1595,2325,2327,2332,2339,2340,1859,1856,2001,2032,2072,2070,2060,2062,2094,1935,1962,2318,1961,1991,1992,1989,1892,1890,1891,1569,1570,1588,1577] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [703,877,879,1390,1392,1393,1394,1406,898,901,625,623,624,861,419,424,410,411,862,866,868,869,860,714,307,306,260,305,255,256,257,259,896,590,432,1391,287,289,587,583,585,428,288,261,1376,702,1389,650,1398,1402,1400,1381,1382,1383,1388,615,617] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [615,617,1380,1381,1382,1383,1214,1216,1218,1220,1203,1208,1366,1370,1371,1376,1363,702,1166,650,651,694,1165,1167,625,623] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [658,889,2816,705,706,707,708,886,887,888,723,711,2817,692,1358,1359,648,665,673,677,654,662] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1174,2380,1172,1603,1178,1179,1182,1140,2381,2385,1144,1146,1600,1605,1611,2375,2376,2373,2374] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [46,45,181,740,743,753,180,198,44,2809,2810,2811,2769,2794,730,735,729,200,731,2771] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1086,1088,2477,2474,1123,1096,1060,1062,687,1098,1097,1124,679,2523] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2315,1962,1915,1916,2323,2326,2346,1955,1959,1937,1926,2311,2319,2309,2310,2133,2131] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2774,2780,46,2779,30,33,34,740,743,750,753,756,767,2769,2776,735,2771] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
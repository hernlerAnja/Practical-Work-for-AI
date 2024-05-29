
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
        
        load "data/3LFA.pdb", protein
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
 
        load "data/3LFA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1393,1442,1420,1437,1455,1435,1436,1438,1439,1441,1839,1421,1712,1715,1690,1818,1852,1791,1923,1817,1843,1840,1748,1747,1921,1911,1913,1394,1395,1397,2165,1386,1387,2178,2182,2183,2190,2191,2167,2169,2171,2176,1458] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1150,1313,1316,1152,1144,1139,2439,1156,1102,1103,590,634,591,1299,1303,1304,1309,554,555,557,564,642,559,565,517] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1479,1486,1492,2226,2227,2221,2224,2225,2232,2236,1476,1106,1078,1080,1082,1115,1118,1110,2231,1108,1076,1481,1485] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [564,1312,563,565,529,373,262,263,264,801,802,804,371,365,369,641,1308,823,843,838,842,841,819,356,818,357,232,836,1228,1307] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [826,829,828,2662,1291,647,827,644,645,646,588,594,651,663,2656,2657,1292,604,605,613,617,602,632] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1032,1022,1034,2323,627,1024,1058,2319,1060,2367,1059,996,998,616,617,2317] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [680,690,693,675,683,41,2609,11,2611,2620,707,696,154,670,671,22,23,2634,2630,2651] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [826,829,828,334,1291,824,825,844,845,833,1292,1275,1271,1243,1240] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1364,1582,900,876,877,878,1317,1320,1350,1352,1362,1626] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
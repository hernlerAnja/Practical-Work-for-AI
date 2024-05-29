
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
        
        load "data/6VNB.pdb", protein
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
 
        load "data/6VNB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1362,1363,1593,1594,1595,2809,2810,2811,1596,2794,2241,2222,1597,1600,2217,1365,1052,2594,2595,2596,1050,1072,1361,1322,1068,1587,1588,2260,2808,2256,2257,2280,2281,1025,2271,1026,1057,2252,1049,2593,2574,2572,2573,2575] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2579,2585,2586,2588,2591,2580,2582,2583,2634,2636,2635,3180,3728,3205,3230,3202,3233,3237,3612,3643,3238,3264,3642,3179,3723,3035,2769,3184,3722,3724] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [123,124,125,172,173,174,117,118,120,121,1266,1261,1268,307,718,771,775,1180,1181,768,1150,1260,722,744,743,740,734] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1164,1266,1267,1269,1282,322,323,466,1261,1268,135,160,161,162,123,124,125,126,128,172,174,163,136,139,129,142,151,154,400,432,340,156,158,150,159,1284,1286,1308,1290,1292,1425,1426,1427,1423,1431,427,398,424,425,428,429,394] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1600,2214,2220,2219,2222,1593,1596,1370,1587,1588,1522,1523,1373,1570,1571,1361,1360,1555,2549,2559,2567,2571,2572,2573,2575,2546,2548,1375,2553] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2862,2889,3893,3898,2860,2861,2848,2852,3901,2928,2616,2617,2618,2619,3746,3754,3904,3578,2891,2886,3889,3770,2890] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2590,2597,2598,2601,3731,3626,3729,3730,2608,3616,3587,3588,3627,2625,2634,2622,2623,2636,2784,2617,2618,2619,3904,3753,2585,2586,2588,2591,2605] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1724,1698,1780,1783,1745,792,1744,1739,1696,1491,1791,1798,791,1492,1797,1762,1153,1155] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1536,1467,1931,1932,1406,1452,1453,1582,1503,1530,1501,1580,1534,1540,1411,1419,1415,1417,1418,1422,1438,1447,1562] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2644,2500,2775,2526,2228,2659,2525,2235,2227,3156,2237] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2030,1993,1497,1633,2183,2185,2041,1472,2040,1823,1822] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
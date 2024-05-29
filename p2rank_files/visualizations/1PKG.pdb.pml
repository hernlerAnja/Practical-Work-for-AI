
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
        
        load "data/1PKG.pdb", protein
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
 
        load "data/1PKG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1254,1252,1266,1282,1283,1361,311,312,313,438,263,260,266,267,269,271,272,265,259,261,1253,859,860,697,698,1360,1362,802,803,804,850,851,841,834,835,264,826,829,287,274,275,283,294,297,2357,454,1368,586,452] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2602,2645,2647,3584,2593,2594,2599,2600,2601,3192,3570,3601,3679,2597,2646,3600,3678,2598,3185,3163,2628,2619,2631,2788,3686,2786,2787,3680,2784,2921,3031,2772,2952,3137,3138,3155,3160,2606,3194,2612,2617,2605,2608,2609,3573,3571,2595] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2803,2872,2873,2874,3096,3102,3106,3107,3099,1972,1973,3075,3076,1589,1590,2173,2174,2175,2197,2188,2189,2190,1596,1645,1646,1592,1593,1633,1621,1630,1631,3093,3094,3095,3100,1462,1463,2904,2905,2906,2869] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1474,1472,1489,1490,1499,1500,547,548,550,522,1514,1515,1501,1502,1506,1512,577,578,519,553,556,1384,1404,1405,1406,1392,1519,291,85,86] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3088,1639,3090,2401,2427,2402,2403,1610,2388,2382,2386,2389,2385,1486,1488,1503,1504,1511,1493] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1681,1683,1684,1668,1669,1670,1677,1678,1685,2232,2231,2248,2249,2251,2252,2230,2233,2244,1671,1672,1162,1164,1673,1675,2237,1139,1163] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4446,4452,4449,4451,4463,4468,3901,3904,3887,3888,3896,3897,3889,3890,3892,3482,3480,3481,3483,3894] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2462,2463,2464,2465,2481,2958,2959,2906,2935,2929] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1255,876,877,913,1791,1833,1837,1569,2330] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
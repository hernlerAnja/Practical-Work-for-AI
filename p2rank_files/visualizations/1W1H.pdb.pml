
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
        
        load "data/1W1H.pdb", protein
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
 
        load "data/1W1H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2762,2769,2772,2788,2789,2790,2791,2794,2619,2620,2797,2618,2615,2617,2921,2585,2596,2597,2604,2737,2887,2738,2764,2765,2554,2555,2766,2767,2572,2795,2775,2741,2636,2637,2553,2892] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1550,1551,1552,1553,1557,1559,1556,1375,1377,1376,1378,1312,1313,1528,1529,1654,1537,1394,1395,1500,1503,1649,1525,1526,1527,1499,1534,1530,1531,1683,1351,1330,1331,1566] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [481,482,483,4807,4806,4246,711,4816,4818,4820,4397,4398,4253,463,461,541,460,516,542,517,644,712,645,715,716] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [59,77,78,112,90,60,272,273,274,248,125,127,244,279,304,394,123,126,399,143,144,282,109,122,124,428,296,301,302,98,275,276,268,269,271] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4048,3797,3776,3777,3778,3779,3780,3949,3947,3920,3921,3924,3940,3941,3943,3946,3913,3914,3718,3736,3719,3917,3919,3916,3767,4077,3757,3927,4043,3889,3893] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2609,3498,3499,2581,2913,3544,3485,3486,2608,2589,2586,2931,2929,2932] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1338,1675,2252,2276,2279,1367,1366,1679,1336,1691,2312,2251,1685,1347,2264,2265] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3768,4073,3744,3769,3742,4667,4642,4700,4701,4079,4088,4069,3753,4641,4655] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1111,1106,1110,157,159,1143,1145,156,173,589,586,410,411,220,221,590,219,178,194,180,581,594,599,602,1108,1146,1150] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3082,2904,3079,2903,2712,2713,2714,3083,2688,3610,3609,2652,3640,3643,3087,3091,3092,3095,2647,2648,2649,2650,2663,2666,2653,2669,2671,2673] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3034,2974,2975,2976,2956,3204,3205,3137,3035,3208,3209] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4610,4510,4618,4628,4607,4629,4630,4480,2780,2783,4511,4119,4121] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1002,989,1011,988,114,1047,85,420] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1796,1966,1737,1738,1716,1718,1899,1971,1967,1970,918,919,1773,1771,1734,1735,1713,917,912] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [151,136,1031,1033,1077,1063,1066,1067,1078,1103] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
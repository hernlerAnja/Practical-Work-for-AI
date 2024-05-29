
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
        
        load "data/6VNF.pdb", protein
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
 
        load "data/6VNF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2800,2801,2944,3762,2912,3764,3766,3770,3772,3746,3747,3748,3749,3196,3195,3604,3605,3606,3644,3596,3787,3788,2602,2603,2606,2607,2652,2651,3630,3634,3281,2594,2595,2600,2601,2596,2599,2598,2785,2613,2614,2638,2639,2625,2636,2637,2617,2624,2627,2629,2818,3927,2632,2634,3925,3926,3924,2902,2905,2873,2874,2876,3907,3919,3922,3904,3905,3911,2867,3888,3903,3661,3660,3740,3741,3247,3249,3245,3246,3253,3200,3051,3222,3214,3218,3221] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1610,1064,1065,1066,1609,1067,1068,1041,1042,2296,2297,1338,1611,1088,1637,2287,1603,1604,1613,1616,2257,2276,2267,2268,2272,2273,2233,2609,2611,2612,2827,2589,1378,1381,1376,1377,1091,2616,2823,2824,2825,2826,2238,2239,2240,2591,2661,2809,2810,2235,2587,2565] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1284,1197,1196,1277,1282,1283,1285,187,186,188,174,175,176,177,178,138,140,337,336,782,783,785,134,135,757,130,131,132,137,736,321,732,743,754,750,160,1166,1180,817,153,142,149,150,789] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2235,2564,1386,1389,1391,1585,1586,1587,2591,1572,2230,2234,2236,1376,1377,2589,1378,2565,2575,2583,2569,2562,2587,1603,1604,1616,1538,1539] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [168,441,438,439,404,412,408,403,1302,1300,480,156,157,165,354,436,437,442,443,1323,1324,1439,1442,170,1449,1450,1308,1425] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2841,2842,2843,2885,2334,2335,2266,2269,2305,2307,3154,3141,3144,3145,2184,2337,2328,2886,3149,3156,2814,3172,3153,3148,3138] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1550,1517,1519,1556,1432,1433,1947,1469,1948,1483,1468,1546,1552,1578] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1649,2009,2200,2201,1838,2056,2057,1839,2046] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        

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
        
        load "data/2V9J.pdb", protein
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
 
        load "data/2V9J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2482,2483,2485,3224,3226,3673,3671,3084,3089,3090,3092,3093,3669,2492,2480,1962,2481,2463,3073,3074,3082,1810,1949,1946,1947,1948,2494,1811,1812,1953,1954,1813,1814,2495,3222,3217,3227,3231,1815,2636,2637,2638,2617,2619,2626,1963,3075] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [31,25,26,1084,1083,1290,1299,1196,1197,1199,1288,1066,1068,1201,1065,1067,1128,1154,1155,1127,1124,1633,1635,1636,1637,1291,1294,1384,1385,1386,1400,1298,1300,1622,6,1401] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2490,1961,1962,1923,1918,2319,1931,2309,2300,2301,2476,2321,2326,2474,1926,1929,1930,1970,1947,1948,2261,2262,2303,2224,2221,1940,2214,1971,1998,1963,2250] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3232,3244,3216,3217,3231,3198,3469,3471,3197,3234,3236,3430,3432,3681,3683,3199,3493,3647,3652,3454,3664,3500,3678,3494,3665] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3796,3797,3783,3781,2486,3810,3811,2888,2889,3819,3818,3784,2890,2922,2923,3074,3083,3087,3088,2927,3089,3094,3095,3098,2485,2924,2911] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1786,1,2,7,1787,1757,1759,1258,1274,1212,1214,1219,1234,1236,1728,1765,1761,1762,1417,1419,1420,1729] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [842,57,60,62,63,64,67,802,803,1229,1266,1267,1282,1211,1227,1222,1207,55] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [787,372,373,724,726,725,398,399,218,371,240,241,756,759,392,1895,1897,1896] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3579,2769,2740,2753,2755,2726,2728,1477,1490,2725,1488,2779,2695,2697,2700,2702,2730,2731,2689,2724,3599,2807,3607] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [629,630,631,637,639,632,636,1305,1314,1328,2535,1326,1308,700,701,702,2568,2556,703,704] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [324,325,326,466,482,1181,605,606,607,1182,502,603,465,479,587] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [79,80,95,94,131,135,136,830,833,824,828,165,133,63,66,75,576,579,59,572] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
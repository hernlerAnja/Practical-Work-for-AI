
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
        
        load "data/2V8Q.pdb", protein
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
 
        load "data/2V8Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3092,3682,3223,3083,2482,2476,2480,2481,2483,2491,1961,2484,2469,1945,1946,1947,1952,1953,2493,1810,1812,3216,3226,3227,3230,3215,3221,1813,1814,3668,2635,2636,2637,2633,2494,2616,2618,2617,3664,3669,3670,3672,3233,3225,3072,3073,3081] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1293,1298,1151,1153,1154,1198,1065,1066,1082,1123,1127,1286,1287,28,29,31,1083,1385,1400,25,26,6,1080,1100,1289,1194,1196,1632,1634,1636,1399,1383,1384,1297,1299,1621] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1922,2318,1925,1930,2490,2491,2325,2326,2462,2473,2475,2313,2320,2308,1928,1929,1946,1947,2323,2489,2486,2299,2300,2302,2259,2261,2301,2223,1939,2213,2220,2260,1960,1962,1969,1970,1997,2249,2251] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2484,2887,2888,2889,2922,3780,3781,3783,2485,3782,3082,3087,2460,2461,2462,2463,2464,2468,2471,2435,3088,3093,3094,3679,3681,3097,3673,3678,3796,3809,3795,3817,3818,3808,2427,2628,3810,2433,2438,3073,3086,2926,2923,2910,2916] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3677,3646,3663,3499,3664,3662,3493,2637,3651,3216,3230,3196,3197,3215,3471,3682,3243,3233,3235,3428,3429,3469] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [802,803,1265,804,60,62,63,67,1206,1210,1226,1228,1221,1260,1263,1264,1281,833,805,1189,838,839,842,1443,808] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1257,1258,1756,1758,1232,1233,1235,1242,1245,1727,1725,1728,1729,1753,1273,1416,1418,1419,1213,1,1784,1785,1786,1218,1211,1764,1761,1760] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2567,2556,636,637,639,1325,2583,1304,1313,1307,628,629,630,625,632,701,702,704,703] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [241,240,372,373,399,218,756,758,759,1869,787,398,1867,1894,1895,1896,220] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [830,833,834,824,828,95,63,79,80,131,135,136,576,579,838] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2044,2045,3330,2078,2115,2116,2118,2120,2043,3329] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2725,2727,1488,2732,1487,1489,3578,2737,2741,2806,2739,2778,1477,3598,2694,2696,2699,2701,3606,2724,2740,2688] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3234,3235,3236,3437,3267,1802,3259,1797,1799,1774,1776,1778,1796,1768,3438,3260,3261,3264] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
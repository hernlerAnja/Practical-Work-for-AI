
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
        
        load "data/7F3G.pdb", protein
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
 
        load "data/7F3G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [457,3546,3444,3526,3528,3531,3532,3828,3826,3825,3830,3824,484,485,517,627,644,642,3795,3827,3829,458,454,682,436,437,373,447,452] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [216,337,338,717,1134,1113,1252,1245,1249,1250,339,1242,1243,1135,584,585,508,1259,181,182,202,170,171,173,176,1106,1118,164,166,168,215,738,733,322,735] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3224,3225,2828,2412,2258,3332,2253,2254,2260,2856,2847,2853,2846,2256,3208,3196,3335,3339,2429,2807,2305,3333,3334,2261,2262,2263,2306,2675,2811,2676,2266] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [185,1094,1107,1108,1118,2517,182,202,176,192,2484,2515,2514,188,1252,1251,339,338,461,462,1265,2535,1274,1078,1095,1077,1273,1275,1360,1362,2534] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3342,3340,2292,2306,3335,3339,3341,2428,2429,2568,445,3168,3355,3358,3363,3364,3184,3185,3208,3196,2278,3356,3357,3365,2272,2275,2279,2265,2266,385,386,426,425,427] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1438,1456,1442,1737,1739,1441,1734,2581,2574,2575,2607,2731,2734,1707,1710,1711,2717,1355,1436,2537,2542,2544,2547,2461,2462,2733,2732,1704,1705,1740,2548,2769,2772,2549,1354] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1385,1386,1396,1593,1592,1621,1637,1619,1372,2503,1636,1397,782,784,785,813,805,802,2507,2508,806,1101,1111] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3357,3365,1348,3359,3361,2535,1274,1273,1275,1357,1360,1362,2478,2539,1346,1347,3158,3442,3436,3437,3438,3419,1329,1269,1068,3450,467,1267] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3475,3476,3726,3727,3709,2873,2875,3201,2871,2903,3191,3486,3487,2893,2895,2896,3682,3683] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1497,1498,1499,2008,1480,1489,1490,1006,1007,1009,1488,2053,1301,1481,1492,1484] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1377,1378,1729,1705,1698,1701,1702,1667,1668,2745,2746,1674,2523,2525,2527,2524,2526,1385] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3475,432,433,434,436,3794,655,3758,3764,3791,3788,3819,413,379,656] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3587,3589,4140,4143,4145,4156,3097,3099,4149,3578,3580] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
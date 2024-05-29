
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
        
        load "data/6GL9.pdb", protein
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
 
        load "data/6GL9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3620,3544,3621,2712,2572,3093,3094,2573,3120,2519,2698,3098,3110,3112,3116,3484,3625,3628,3650,3629,3641,3643,3649,3622,3626,3627,2714,2852,3670,2813,2814,2713,2851,2809,3523,3528,3514,3545,3143,3146,3150,3151,2538,2526,2527,2528,2534,2535,2525,2516,2515,2517,2520,2521,2522,2523,2524,2546,2560,2557,2558,2559,2731,3800,3651,2550,2553,2555,2779,2812,2777,2780,2781,2784,3178,2957,2885] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1270,1273,1274,1275,1276,1269,1277,1268,166,169,156,158,159,165,153,154,155,147,146,152,148,1192,596,738,150,151,750,756,745,1297,1298,1289,1299,193,194,198,202,203,204,734,524,733,329,177,179,188,189,190,191,344,345,343,490,491,362,443,439,440,1291,410,444,445,181,184,412,411,1162,1171,1176,786,790,1193,760,772,783,826,791,1454,1132] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1487,1807,1484,1655,2048,2186,2188,1867,2049,2033,2042,2047,2189,2191,1965,1658,1998,1999,1868,1988,1990,1835,1832] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [174,175,176,1448,1449,1451,1456,173,185,187,3386,3388,4615,4597,4598,1443,1458,3416,3417,3418,3419,3950,3952,3953,3966,3968,3970,3954,3415,4606,4587,4593,4594,4599,4603,4578,3964,4554,4560,4561,4559] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3833,4181,4311,4213,4214,4334,4153,4395,4393,4394,4526,4528,4529,4379,4388,4001,3830,4345,4004,4344] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [809,811,813,1153,1503,1724,1165,1166,1167,1164,1467,1470,1502,1504,1499,1501,1802,1803,1810,1778,1721,1764,1765,1766,1767,1811,3698,3699,1816,1782,1815,3707] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1618,1606,1604,1607,1608,1620,1624,2257,1646,2254,2259,2263,2266,2258,2274,2275,1028,1034,1036,1063,1064,1065,1066] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3849,3850,4156,4162,4148,4149,3518,3167,3168,4111,4112,4128,4124,4067,4070,4110,4113] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1465,1479,1574,1546,1548,1552,1513,1542,1593,1460,1464,1458,3419,3422,1941,3421,3423,1450,1445,1446,1436] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1899,1897,1900,1901,1849,1918,1876,3683,3678,3695,3676,1840,1933,3700,3702] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3894,3898,4287,3810,3811,3825,3806,3791,3796,3792,3939,3888] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1589,1591,1544,1511,1512] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
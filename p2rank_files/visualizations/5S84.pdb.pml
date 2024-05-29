
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
        
        load "data/5S84.pdb", protein
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
 
        load "data/5S84.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2484,2485,2486,2487,2489,2488,2490,2462,2610,2511,2606,3474,3473,2460,2509,2510,3055,3024,2457,2458,2459,3446,3448,3445,3059,3060,3088,2598,3022,3546,3547,3434,3457,2726,2727,3542,3543,2990,2849,3004,3005,3541,2986,3725,3730,3418,3549,3709,3710,3711,3717,2658,3548,3435,2614,2612,3726,3031,3052,2848,3009,3028,3708,2656] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [263,264,265,1228,134,137,131,132,133,135,764,110,307,309,261,156,157,158,249,257,105,106,108,107,681,643,647,679,1221,1222,1225,1227,1220,1128,1116,721,724,1149,728,729,1117,377,685,688,662,514,513,661,666,1293,1294,1106,1089,1295,1301,1105,1314] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4276,4277,4278,4279,4300,4301,4302,4274,4342,4307,4311,4312,4341,4267,4269,2331,3803,2303,904,905,4304,906,2357,869,3822,3823,3824,473,934,936,489,908,874,876,878,907,961,963,989,1007,1005,471,474,479,480,482,1194,1193,1195,456,953,954,952,868,867] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3931,3408,3407,3403,3721,3404,3765,3769,3798,3799,3755,3722,3672,3673,3902,3904,3581,3838,3839,3796,3821,3823,3850,3691,4268,3719,3706] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1104,1106,744,746,748,1119,1120,1337,1338,1766,1767,1768,1315,1112,1632,1775,1352,1350,1121,1339,1850,1829,1835,1836,1832,1837,1118] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1078,1490,1079,1492,1299,1302,1088,1305,1306,1309,1528,1083,1074,1303,1386,1428,1411,1444,1389,1355,1359,1388,1865,1429] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3748,4253,3749,3449,3450,3075,3077,3079,3441,3447,3448,3442,4043,4169,4170,3732,3741,3747,4252,3731,3435,3760,3433,4250,4239,4240,4245] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2290,2285,2288,2289,2268,990,2302,2301,2296,979,1502,1506,1508,1498,2291,1543,1510,1473,1474,987,953,977,2295,1471,1517,1519,1512,1472,2279] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3310,3312,4648,4652,4657,3321,3309,3914,3946,4625,4636,4642,4645,4646,4647,3910,3912,3913,3920,3922] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [542,536,654,655,63,243,199,200,201,202,203,204] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [855,857,775,776,809,889,1186,1156,891,1184,824,718] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [669,671,693,676,497,691,467,475,477,1166,1162,1164,1165,1167] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2977,2978,2979,2980,2981,2430,2428,2998,2412,2413,2415,2411,2888,2889,2891] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [503,510,662,511,514,1211,1221,1217,378,1234] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
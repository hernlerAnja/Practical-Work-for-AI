
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
        
        load "data/5S80.pdb", protein
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
 
        load "data/5S80.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3376,3393,3415,3508,3509,3511,3661,2431,3403,3404,2433,3406,3675,3680,2557,3505,3510,3504,2683,2684,2945,2430,2553,2555,2432,2454,2403,2405,2452,2453,2400,2401,2402,2549,2941,3431,2986,2996,3018,3432,3047,3011,3014,3503,2541,2964,2977,2979,2981,2983,2803,2960,2959,3019,2597,2424,2427,2428,2429,2610,2612,2614,3659,3667,3658,3660,3676] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1073,737,1086,129,131,255,1195,1252,1253,1254,125,126,128,297,298,299,130,127,1072,1083,1084,1095,701,702,1189,1192,1056,151,1114,1116,99,697,100,102,694,150,104,101,660,662,669,666,254,251,253,628,152,239,247,1188,496,1187,495,642,647,1269,1273,1268] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3366,3656,3665,3668,3669,3530,3671,3672,3771,3746,3748,4215,3719,3721,3641,3788,3800,3799,3625,3626,3365,3361,3749,3715,3881,3678,3375,3675,3789,3852,3543,3854,3773] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3774,927,2230,2268,2269,4224,4225,4226,4223,909,925,926,453,455,934,438,907,471,1161,464,962,936,980,4249,4251,4216,3759,3753,3760,3761] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1274,1786,1787,1309,1296,1297,1726,1298,1717,1718,1719,1801,1073,1086,1088,1071,1085,717,719,721,1079,1583] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3406,3400,3034,3036,3038,3408,3681,3710,3391,3393,3404,3405,3699,3697,3698,4119,4120,3399,3993,4190,4200] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1314,1041,1264,1265,1268,1318,1320,1347,1271,1262,1258,1261,1343,1345,1816,1045,1046,1370,1403,1388,1447,1449,1387,1451,1348,1487,1055,1042] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [948,949,950,1465,1467,1469,1461,2229,2228,2216,2218,2223,2212,2215,2217,2222,952,963,960,926,1476,2206,1502,2195,1478,1431,1432,1434,1430] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [877,878,879,909,841,2268,2269,4225,880,907,1161,464,1160,1162,847,849,854,851,4251,4288,4289,2295] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4593,4596,4598,3860,3863,3270,3862,3864,4587,4576,3266,3267,3268,4608,3279,3833,3870,3872] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [524,518,635,233,636,34,57,193,195,196,197,198,199,200,194,32] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [449,479,675,1131,1173,1174,674,652,650,672,498,649,657,459,457,1133] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2775,3448,2767,2777,3447,3446,2804,2805,2967,2791,2969,2991,2992] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [797,786,822,828,830,1151,1153,748,782,692,749,1123] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2842,2843,2845,2335,2356,2354,2355,2931,2934,2358,2953,2936,2371,2372,2932,2933] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
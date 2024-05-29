
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
        
        load "data/5S7O.pdb", protein
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
 
        load "data/5S7O.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2444,2445,2446,2447,2448,2449,2468,2470,2469,2416,2417,2421,2419,2418,2561,3442,3444,3546,3547,2701,3542,3543,2565,2567,2569,2963,2959,3726,3730,3414,3549,3430,3431,3453,3441,3710,3711,3548,2702,3725,2440,2443,2615,3708,3709,2630,2632,3717,3470,2821,2977,2982,3469,3541,3004,3029,3032,2553,2995,3001,2978,3036,3037,3065,2997] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [133,135,137,132,134,136,105,110,1214,255,257,298,300,131,253,156,157,158,241,249,106,108,107,670,672,634,638,128,1135,1206,1116,704,707,1137,711,712,1104,747,741,368,1207,1208,1211,1212,1213,505,652,657,676,679,653,1094,1293,1292,1299,1291,1312,1077,1093,1105] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [944,946,972,990,988,464,917,919,887,462,470,473,447,936,935,937,3809,3810,2288,4275,4276,3803,4297,4298,4299,4300,888,4301,4339,889,4338,3822,3823,3824,4264,4266,4273,4274,4271,4304,2260] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3796,3798,3821,3823,3771,4265,3719,3715,3706,3691,3721,3838,3849,3850,3399,3400,3403,3928,3722,3725,3413,3799,3765,3769,3404,3569,3848,3899,3901,3673,3672] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3052,3054,3056,4166,4167,3443,3444,3445,3446,3747,3748,3760,3749,3730,3731,3429,3431,4250,3437,4040] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1094,731,1107,1108,1109,1313,1350,1756,1335,1336,1348,1747,1748,1092,1100,1621,727,729,1106,1337,1817,1831,1818] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1063,1066,1067,1488,1490,1517,1303,1304,1307,1310,1062,1071,1076,1297,1300,1301,1426,1384,1409,1442,1387,1353,1357,1386,1846,1427] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [962,1496,1498,1499,1500,2242,1471,1532,2236,2248,959,960,967,973,2252,1469,1506,1508,1470,2259,2258,2245,2253,2246,2247,2225] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3917,3919,4626,3907,3882,3883,3291,3909,3910,3911,3943,4637,3292,3294,4643,4646,4647,4648,4649,4653,4654,4658,3303,3920,3881] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [533,527,645,646,63,235,198,199,200,201,202,203,544] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [838,840,758,759,792,1172,1144,874,1170,807,702] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [888,4301,4339,889,4338,2314,857,860,861,859,887,890,1179,1181] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [458,466,468,1154,1152,1153,660,662,684,488] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2371,2374,2370,2951,2949,2952,2954,2387,2860,2861,2863,2971,2950] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        

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
        
        load "data/5S7D.pdb", protein
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
 
        load "data/5S7D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2477,2479,2480,2501,2499,2500,2447,2450,2452,2448,3750,3751,3585,2604,2730,2731,3579,3582,3583,3584,2602,2596,2600,2997,3001,3765,3770,3450,3466,3467,3489,3478,3480,3766,3771,3074,3506,3075,3103,3067,3070,3052,3577,3477,2588,3015,3020,3505,3042,3033,3039,3035,3037,3578,2859,3016,3050,2469,2644,3748,3749,2657,2659,2661,2474,3777,3780,3757,3764,3772,4285] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [1109,755,1122,130,131,255,1230,1231,1301,1302,1303,299,297,125,126,128,1119,1120,719,720,1121,1225,1228,1092,1229,1108,1131,150,151,99,100,101,102,678,680,104,1152,715,712,687,684,251,253,632,636,152,239,247,367,1224,504,1223,651,650,658,1317,1309,1318,1322] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [949,2288,2316,4317,4318,4319,931,929,4316,472,4315,899,900,901,869,873,947,948,461,463,927,956,446,1196,1197,1198,871,990,3863,3864,958,1008,1010,4343,4344,4347,4381,4382,4351,3843,4307,4309,4340,4341,4342,4314,3849,3850,2342] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3811,3838,3755,3758,3759,3761,3861,3836,4306,4308,3878,3890,3746,3731,3712,3439,3440,3435,3436,3762,3765,3839,3805,3809,3971,3795,3879,3942,3944,3713,3862,3863] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3800,3771,3789,3787,3788,4209,4210,3092,3094,4211,3465,3467,3479,3480,3481,3482,3090,3473,4083,4285,4290,4280,4292,4293] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1323,1845,1345,1346,1347,1761,1762,1763,1830,1831,1832,1770,1360,1358,1107,735,737,739,1121,1109,1122,1123,1124,1115,1627] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1082,1298,1311,1313,1307,1310,1314,1317,1367,1369,1320,1081,1494,1436,1437,1496,1397,1523,1396,1363,1448,1419,1394,1860,1077,1078,1086,1091] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1506,2287,2286,2274,2276,2280,2281,2270,2273,2275,972,1504,1505,1502,974,1538,980,986,992,948,1514,2253,2264,1512,1475] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3339,3341,4697,4701,4704,4686,4689,4690,4691,4692,3960,3962,3963,3924,3925,3952,3953,3954,4669,3327,3986,3330,3950,3326,4680] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [457,487,693,1210,664,668,692,1167,1168,1165,690,1170,506,662,675,467,465,1169] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [526,532,233,643,644,34,57,195,197,198,199,200,194,196,193] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3024,3022,2820,2847,2830,3522,3520,3047,3048,2860,2861] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2898,2899,2901,2405,2401,2402,2987,2989,2990,3009,2992,2418,2988] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4732,2835,3307,3312,2824,2825,2826,3305,3287] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [884,886,812,850,852,1189,1186,1187,766,797,710,767,1173,1159] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3206,3208,3540,3541,3526,3065,3113,3114,3512,3242,3175,3164,3159] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [368,1221,1224,1237,501,504,1220,500,651,493,1214] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        

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
        
        load "data/5S7I.pdb", protein
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
 
        load "data/5S7I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3476,3478,2619,2509,2522,2523,2524,2475,2476,2477,2470,2615,2993,3448,3742,3743,2690,2735,2736,3577,3580,3581,3582,3487,3583,2621,2622,2623,2997,3757,3758,3465,3762,3763,3764,3773,2505,2484,2485,2507,2508,2495,2497,2500,2502,4277,3740,3749,3769,3772,3741,2665,2666,2691,2667,3475,3070,3071,3066,2771,3576,2770,3504,2855,3011,3503,3575,3016,2607,3035,3012,3099,3063,2473,3038,3029,3031,2471,3048,3033] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [159,1137,745,780,737,108,113,376,377,651,1243,1246,1248,260,262,263,264,308,1249,306,161,1149,665,160,248,676,109,111,709,712,110,703,705,666,647,256,144,146,121,145,114,116,132,133,142,1241,1242,744,740,1170,510,513,512,1127,1139,1140,1110,1314,1315,1316,1322,1335,134,137,122,1138,1126] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [470,472,4307,4308,4309,4310,4311,488,481,1215,891,894,1214,1216,965,2311,947,2339,4335,4336,917,918,919,921,949,887,889,966,1008,3855,3856,3854,974,976,1028,1026,4299,967,455,3835,4334,4374,4343,4373,4301,3841,2365,3842,3843] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3828,3853,3870,3882,3881,3707,3738,3747,3750,3751,4300,3803,3723,3438,3434,3437,3433,3603,3753,3754,3830,3831,3797,3801,3963,3871,3934,3936,3704,3705,3855] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3780,3088,3090,4201,3781,4202,3476,3477,3478,3479,3480,3463,3465,3763,3764,3773,3779,3792,3794,4272,4285,4284,3086,3471,4075,3472] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [1323,1324,1382,1409,1380,1410,1376,1449,1450,1461,1407,1432,1873,1096,1099,1100,1507,1509,1095,1104,1326,1327,1109,1330,1536,1311,1320] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1127,764,1139,1140,1141,1142,1371,1373,1133,1640,1783,760,762,1774,1776,1125,1336,1359,1360,1775,1837,1843,1844,1840,1358,1858,1845] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2298,2310,990,992,1515,1517,1518,1519,2297,2309,2296,1490,1491,2299,1551,2287,2293,2303,2304,1488,1525,1527,2276,1489,966,1004,1010] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4672,4661,4678,4681,4682,4683,4684,4689,3309,3310,3311,3322,3952,3954,3942,3916,3917,3918,3919,3313,3945,3946,3944,3978,4693,4696,3324] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [515,685,691,682,688,717,700,496,514,1228,718,715,466,474,476,1187,1185,1186,1183,1188] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1207,1191,1204,1205,735,837,791,792,904,902,1177,868,870] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [66,535,203,204,205,206,207,208,209,242,202,658,659,541,43] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2829,3518,3520,2843,2819,3041,3043,3044,3562,2856,3026,2857,3017,3018,3019,3021] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2823,2825,4695,3324,3270,4722,4724,3295,3297] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [2983,3005,2986,2988,2441,2424,2894,2895,2897,2428,2425] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [510,513,509,1232,666,377,651] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1992,1630,1662,1803,1805,1983,2006,1813,1814,2012,2004,2027] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
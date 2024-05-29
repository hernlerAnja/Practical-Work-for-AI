
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
        
        load "data/5S87.pdb", protein
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
 
        load "data/5S87.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2443,2444,2445,2447,2448,2467,2469,2420,2564,3398,3424,3032,3061,3025,3028,2415,2978,2468,2556,2991,2993,2416,2418,2995,3396,3033,3643,3368,3644,3645,3659,3503,3501,3502,2442,3384,3385,3664,2572,2692,2568,2570,3496,3497,3500,3395,3407,3495,3423,2693,2959,2817,2973,2974,2955,3660,3651,3000,3008,3010,2997,2439,2621,2623,3642] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [260,262,264,159,160,161,750,108,109,111,641,248,110,673,675,655,637,135,139,140,113,256,137,1089,1102,1211,1276,1277,1278,134,306,307,308,1284,1194,1200,1203,1204,1205,1208,1099,1111,714,1100,1101,715,710,1218,1217,372,1132,707,682,506,373,509,505,656,508,679,660,1072,1292,1297,1088,1293] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [938,466,468,917,474,484,887,890,919,477,1177,1176,1178,857,859,861,864,944,946,972,990,988,451,937,935,886,936,2284,4233,4234,4235,3737,3743,4207,4208,4209,4210,889,4272,4273,4243,3757,3758,3756,4198,4200,2310,2256,3744] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4101,4165,3398,3399,3400,2445,2447,3048,3050,3052,3397,4100,3681,3682,3694,3391,3974,3683,4183,3665,3384,3385,3664,3673,4176,4181,4184] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3757,3705,3730,3755,4199,3653,3649,3652,3625,3640,3783,3784,3732,3862,3354,3357,3358,3353,3655,3656,3703,3728,3699,3733,3659,3772,3773,3833,3835,3609,3610] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1061,1469,1372,1412,1062,1507,1471,1342,1288,1295,1057,1289,1292,1369,1371,1411,1423,1273,1282,1287] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1802,1821,1089,1102,1103,1104,1333,1087,1298,1095,1603,730,732,1320,1321,1322,1737,1101] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4571,4577,4580,4581,4582,4583,3281,3279,3290,3292,4592,4595,3277,3278,3814,3815,3816,3844,3845,3841,3843,3851,3853,3854,3877] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [970,936,959,960,962,967,973,1485,1487,1489,1477,1481,974,2232,2238,2244,1522,2248,1496,1498,1450,1491,2221,1451,2255,2254,2249,2243,2241] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [511,662,663,664,665,666,661,687,685,670,492,510,1190,688,470,472,1147,1149,462] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2805,2819,2818,2979,2980,2981,2982,2983,3006,2984,3005,2789,2791,3438,3440,3482,2781] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [202,204,205,206,207,208,209,648,242,531,537,649,66,203] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2945,2947,2388,2948,2949,2950,2386,2370,2373,2369,2856,2946,2857,2859,2874,2967] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3459,3444,3458,3157,3159,3115,3126,3071,3072,3193,3023] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
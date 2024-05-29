
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
        
        load "data/2HIW.pdb", protein
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
 
        load "data/2HIW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [224,1273,191,193,1179,1181,1180,194,746,748,739,749,752,1256,1259,1260,1261,1265,1111,1252,1253,1271,1247,592,598,599,593,195,776,777,780,760,767,226,786,199,200,196,808,809,811,851,372,496,499,523,522,712,370,246,247,364,368,709,354,355,356,727,726,728,732,520,550,609,596,546,1105,1263,1097,1102,1103,1109,1047,515,516,1090,1087] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2959,2943,2957,2958,2585,2586,3502,3504,2587,3411,3505,3011,3017,3039,3042,3008,2829,2830,3412,2963,2979,2991,2997,2998,3007,2980,2977,2601,2477,2433,2455,2457,2453,2595,2599,2424,2412,2419,2425,2426,2427,2428,2430,2431,2495,2498,2730,2603,3496,3487,3490,2753,2754] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3340,3491,3492,3494,3483,3484,3487,3490,3338,2747,2725,2745,2746,2753,2754,2781,3276,3277,3278,2823,2727,2829,3478,3336,3318,3319,3324,3325,3327,3328,3334] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3576,3570,3571,3574,3575,3556,3544,3585,3551,3892,3385,3386,3388,3680,3681,3384,3939,3943,3950,3542,2435,2437,3018,3034,3041,3071] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1959,1675,1924,1935,933,935,1921,1922,911,913,1672,1674,1913,1960,1934,912,914,969,1639,943,932,938,941,1669] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3164,3142,3143,3144,3145,3166,3900,4153,3174,3175,4190,4191,4165,4166,3200,3866,3870,3903,3906] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1319,1344,1449,803,787,810,811,1354,1283,1285,1153,1155,1152,202,225,785,786,1313,1326,204,1311] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1116,1115,1127,1130,1263,1397,1291,1292,1420,436,459,1299,1298,461,1276,1259,1261,1262,1279,497,498] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1004,1005,973,2151,2152,2186,583,584,978,982,568,569,574,575,576,2211,976,953,1026] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1117,1118,1119,1534,1536,1537,1538,1518,1390,1393,1411,1413,1453,1457,1485,1409,1408,1410,1116,1115,1397,1420,1441] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [3433,3441,3423,3432,3053,3448,3434,3449,3450,3123,3125,3124,3001,3003,3005,3004,3051] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3348,3349,3346,3347,3766,3768,3769,3628,3641,3643,3650,3651,3671,3672,3673,3684,3690,3688,3796,3797,3798,3832,3362,3355,3358,3359,3360,3361] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2729,3507,3530,2602,2603,3498,3506,2688,2667,2668,3531,3532,2644,2450,2463,2607,2467,2468] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [3628,3507,3522,3523,3510,3493,3358,3359,3361] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [820,822,893,894,1210,1217,1219,772,773,774,1201,1202] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2764,2289,2291,2290,2323,2878,2879,2267,2288,2708,2709,2710,2712,2737,2740] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3720,3721,3723,3724,4024,3605,3608,4020,4039,3999,4000,4001,3606,3993,3659,3599,3640] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
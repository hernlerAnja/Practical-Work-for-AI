
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
        
        load "data/5S89.pdb", protein
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
 
        load "data/5S89.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2468,2470,2437,2442,2489,2491,2440,2490,2438,2439,3539,3542,3543,3544,3545,2590,2592,2594,2720,2721,3538,3537,2756,2586,2978,2982,2997,2578,3427,3438,3449,3437,3440,3056,3084,3410,3713,2465,2466,2467,2469,2634,2461,2464,2649,2651,3691,3700,3692,3693,3694,3708,3709,3466,3023,3048,3051,3020,3031,3033,2840,3465,3001,3014,3016,3018,2996,3055] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [127,126,128,129,130,131,752,99,104,253,255,1216,122,125,297,299,150,151,152,239,100,102,101,675,677,633,251,647,648,247,629,1199,1205,1222,1208,1209,1210,1213,1104,1116,716,717,712,709,1137,684,497,364,500,496,499,655,681,489,1094,1107,1077,1281,1282,1283,1289,1302,298,1093,1105,1295,1297,1298] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3805,3807,2278,2306,4259,4260,4261,4262,924,892,893,894,3806,949,951,442,457,459,475,468,1182,1181,1183,866,995,993,941,922,942,940,943,895,862,864,977,4250,4252,4285,4286,4287,3786,4324,4325,4295,3792,2332] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3777,3779,3781,3752,4251,3701,3704,3705,3754,3698,3702,3708,3400,3689,3674,3804,3821,3833,3832,3655,3656,3782,3748,3914,3396,3399,3395,3738,3822,3885,3887,3577,3806] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3714,3730,3731,3743,3433,4026,3071,3073,3075,4152,3732,4153,3427,3439,3440,3441,3442,3713,4228,4233,4235,4236,4217,3722,3723,3709,3715,3719,2467,2469] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1094,1826,736,1106,1107,1108,1109,1815,1302,1304,1340,1092,1100,1616,732,734,1338,1759,1325,1326,1327,1750,1751,1298,1303,1309,1315,1834] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1377,1417,1474,1512,1347,1293,1294,1297,1300,1063,1066,1067,1062,1476,1287,1292,1278,1374,1376,1416,1428] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2265,2277,2271,2276,2254,2260,2263,2264,2266,964,965,967,1486,1490,1455,1482,1496,1492,1494,2270,1527,1457,1459,1501,1503,978] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4643,4648,3302,3304,3870,3893,4652,3896,3313,3315,3895,3897,3929,4631,4637,4641,4642,4640,3300,3301,4655,3866,3867,3868,3903,3905,3906] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [453,483,665,463,1154,689,1152,1153,1150,1155,659,661,663,690,687,672,461] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3002,3003,3004,3005,3006,3007,2841,2842,2828,3028,3029,3524,2814,3480,3482,2804,2812] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [522,57,194,195,196,197,199,200,233,193,198,640,641,528] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4683,3261,2816,3284,2808,2810,3281,3286,3332,3279] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2968,2392,2395,2971,2973,2391,2408,2410,2879,2880,2882,2990,2969,2970] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1174,845,1171,1172,879,812,877,843,1144,764,1158,707,797] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        

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
        
        load "data/2OZA.pdb", protein
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
 
        load "data/2OZA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3929,4024,4026,4027,4028,4029,4030,4023,4020,3928,4022,3919,3920,3921,3588,3572,3595,2972,3079,3083,3351,3352,3353,3067,3527,3529,2970,2971,3533,3942,3560,3562,3563,2922,2923,2924,3548,3553,3552,3556,3557,2500,2531,2498,2528,2529,2517,3558,3559,3546,3238,3239,4031,4033,4042,4043,4044,4045,3240,3273,3274,3080,3081,3099,3100,3514,3275,3194,3908,3906,3907,3890,4051,4052,3349,3357,3356,2943,2939,2926,2927,2929,2934,1286,2483,2925,2928,2944,2945,2948,2412,2946,2947,2956,2959,3105,2949,2950,2951,2952,2953,2954,2411,2442,2440,2460,2458,2461,2462,2459,3198,3199,3173,3174,3175,3176,3097,3101,3104,3207,2386,2421,4066,1733,4060,4063,3197,2384,2385,2387,2420,2467,2465,3165,3166,1732,4059,1742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4117,1523,4396,4386,4391,4395,1467,1512,1466,1468,3908,3906,3907,4125,4127,4090,4095,4096,4105,4119,4115,4129,3891,3914,4351,4379,4381,4384,4385,3915,3921,2466,3587,3620,3584,3613,3615,3617,3619,1521,3582,3913,3576,3608,3609,3611,4421,4427,4116,1576,1578,2000,2019,4113,2015,2035,2017,2020,2036,2061,2008,2029,4082,4086,4092,4087,4093,1814,1816,1817,4085,4081,4429,4434,2464,2469,2473,2474,1520,1522,1547,2444,1581,2420,2447,2467,2465,2421,2440,2442] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [711,732,733,731,716,728,164,165,178,181,171,174,1261,2794,339,340,1262,162,153,338,191,208,336,337,207,209,154,156,323,709,190,1120,2795,1147,1149,1255,1252,1253,1254,734] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1124,1108,1109,1125,1287,1093,1260,2780,2792,2793,179,181,174,1261,2794,1262,2781,2782,2938,2932,2785] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [1028,1537,1539,1332,1348,1026,2085,2093,1507,1334,1335,1342,1542,1543,1546,1538,1322,1540,1541,1022,1023,1024,1030,1031,1498,2056,2078,1343,2079,2073,2076,2077,1354,1355,2033,2040] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [956,921,927,931,933,828,829,830,853,817,788,789,798,802,790,793,794,1160,1158,1227,1223,1213,1196,1187,1198,792,901,902,904,868] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4647,4653,4678,4651,4654,4691,4693,4517,4561,4183,4184,4185,4186,4203,4484,4485,4204,4206,4207,4937,4518,4451,4460,4680,1755] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4403,4531,4399,4401,4405,4536,4762,4522,1447,1445,1441,1442,1420,4498,4530,4534,4526,4527,4383,4384,4373,4374,4375,4386,4394,4800] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [339,340,431,1262,430,1277,178,180,181,174,1261,187,188,356,396,397,389,390,400,392,393,391,2914,2915,2916,2917,189,1286,1288,2928] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [185,187,357,358,656,673,652,633,635,347,191,194,345,2762,2900,189,654,653,361,362,2758,2761] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2374,2397,2399,2404,2405,2378,2402,2398,1124,2434,2435,1109,1125,2801,2782,2790,2791,2792,2793,2942,2412,2965,3105,2940,2938,2436,2932,2785,2409,3106] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1284,1286,1288,2925,2928,2519,2522,392,393,2914,1277,180,181,2500,2499,2501,2518] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [217,348,634,636,622,688,617,67,117,118,119,75] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2352,1779,1724,4059,4061,4062,1778,4071,4072,4073,4060,2387,2347,2351,2350,2327] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
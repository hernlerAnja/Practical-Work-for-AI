
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
        
        load "data/1B4F.pdb", protein
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
 
        load "data/1B4F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [249,250,251,1755,1756,2383,2386,1753,2352,2354,2362,1720,216,67,74,64,248,66,80,79,81,1685,2420,1684,215,1560,1710,2406,2407,2411,2385,2408,2379,2375,2377,2412,2413,1681,1711,1706,1707,1708,1712,1752,1746,1749,1778,1779,1541,2442,1676,1686,2417,1679,1682,1683] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [2931,2897,2898,3596,3599,2957,2959,2960,3565,3561,3563,3595,2956,2773,2922,3625,3621,3598,3626,3629,3630,2920,2896,2923,2895,3655,3656,2753,3588,3624,3591,2919,2952,2953,2950,2982,1463,1482,1483,1447] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4146,4147,4149,4158,4150,4186,4847,4819,4822,4821,4122,4124,4125,4853,4811,4813,4814,4815,4180,4183,4184,4177,4187,4788,4209,2695,2694,2659,2675,3991] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1758,1784,1786,1787,1807,1808,1813,1809,1763,1753,2351,2352,2354,2355,2348,2319,2320,2321,2323,2324,1755,1756,2298,87,2296,2331,2332,2299,2292,2295,78,81,121,185,1778,1783,1776,1779,1752,1749,1812,2345,2377,2165] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [2631,2634,2635,2637,2656,2657,2660,2524,2525,2695,2693,4791,4790,4757,4759,4766,4767,4768,4755,4756,2518,2508,2509,2510,2511,4733,2515,2681,2692,2629,2625,2627,2522,2523,4184,4787,4788,4209,4207,4215,4218,4783,4784,4781,4813,4194,4217,4243,4590,4186] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [4165,4192,4193,4223,4195,4196,4198,4199,4200,3723,3724,4226,3704,4233,4227,3688,3798,3806,3705,3707,4134,4167,4169,2638,3772,3937,3939,3722,3770,3940,4202,4235,3936,3938,3799] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1411,1419,1313,1448,3567,3575,3545,3542,3543,3544,1306,1311,1312,1303,1304,1299,1480,1296,1297,1298,3511,1478,1481,1483,1418,1422,2966,2991,2959,3568] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1331,1266,1282,1283,1795,1796,1357,1365,1329,1495,1497,1499,1281,1734,1768,1764,1769,1765,1802,1804,1771,1762,193,194] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [2543,2494,2495,2570,2475,2476,2478,2942,2572,2577,2907,2568,2569,2706,2707,2708,2998,3000,2493,2709,2710,2938,2940,2968,2975,2972,2969,2973,3006,3008,2999,1425,2967,1426,2459] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [329,467,1189,1192,1187,521,1164,1166,1167,1198,1156,1133,1158,1160,442,464,465,503,477,481,469,471,505,507,513,515,517,519,544,438,439,440] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2955,2991,2988,2990,3568,3564,3532,3533,3558,3398,3013,3016,3534,3536,2980,2982,3378,3544] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [266,47,49,50,51,99,491,534,528,530,570,531,535,568,560,561,562,55,262,263,264,265,267,44,31,32,33,124,125,126,133,493,495] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [544,550,553,511,542,1136,552,573,579,575,578,1069,1096,958,1126,1132,1093,1100,1108,1110,546,1158,1092,1094,1065,587,584,580] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1184,1149,891,892,894,896,897,1142,726,1182,724,1174,1175,1176,688,685] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3119,3155,3157,3159,3335,3580,3581,3583,3116,3337,3572,3577,3549,3607,3604,3605,3606,3608,3579,3614,3615,3616,3331,3332,3334,3336,3574,3551,3152] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [4546,4303,4311,4545,4547,4548,4549,4543,4799,4800,4803,4804,4806,4837,4839,4829,4864,4831,4797,4328,4330,4830,4367,4363,4364,4369,4774,4407] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [1914,2370,2367,1951,1953,2122,2124,2392,2393,2394,2121,2118,2119,2120,2123,2366,2401,2368] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
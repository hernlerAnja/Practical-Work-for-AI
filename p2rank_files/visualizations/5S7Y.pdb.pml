
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
        
        load "data/5S7Y.pdb", protein
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
 
        load "data/5S7Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2451,2452,2453,2454,2455,2456,2475,2477,2476,2428,2426,2423,2424,3528,3531,3684,2580,2692,2693,3525,3529,3530,2578,3683,2954,2576,2572,2950,3413,3698,3699,3703,3396,3435,3426,3424,3524,3523,3023,3423,3024,3052,3016,3019,3451,3452,3005,2564,2968,2988,2995,2973,2986,2992,2425,2990,2728,2812,2727,2969,2446,2450,3681,3682,2623,3690,2622,2624] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1071,1207,1210,1098,1110,1111,1087,1088,705,706,1099,1101,130,131,125,126,128,129,741,1204,1208,1209,1275,1276,1277,255,297,299,151,152,239,99,100,102,664,666,150,104,101,251,253,632,247,497,499,500,646,1202,1131,651,701,698,673,670,363,364,1203,1291,1292,1296,1283] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [928,2280,2308,4246,4247,4248,4249,908,910,879,468,878,880,848,852,926,927,457,459,930,935,442,881,465,475,1175,1176,1177,850,965,3795,3796,3797,937,987,989,988,3782,3776,4270,4271,4272,4273,4274,4277,4244,4311,4312,4281,4235,4236,4238,4240,4237,4239,4234,2334,3783,3784] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3679,3688,3691,3692,3694,3664,3822,3794,3744,3769,3771,4236,4238,3811,3823,3385,3386,3381,3551,3695,3382,3698,3772,3738,3904,3742,3728,3701,3812,3875,3877,3645,3646,3647,3821,3796] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3413,3703,3426,3427,3428,3425,3733,3704,3720,3721,3722,4143,4142,3041,3043,2452,3419,4016,3039,4213,4222,4223] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1060,1371,1510,1341,1370,1411,1061,1472,1426,1474,1285,1287,1288,1281,1284,1291,1294,1393,1368,1847,1410,1065,1056,1070,1057] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1320,1321,1817,1818,1819,1832,1297,1757,1748,1749,1750,1319,1332,1334,1086,1088,1100,1101,1102,1103,721,723,725,1614,1094] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [971,1490,1492,1484,2279,2266,2268,2273,2262,2265,2267,2272,953,1525,1499,1501,1453,1454,2256,1494,1480,1482,1455] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4616,4619,4620,4621,4622,4631,4634,3299,3301,3856,3893,3895,3896,4610,3857,3858,3883,4599,3288,3885,3886,3887,3287,3919,3290] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2976,2978,2979,2974,2975,2977,2800,3510,2776,2786,3468,3466,2983,2998,3000,3001,2813,2814] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [522,528,639,34,57,193,195,197,198,199,200,640,523] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [453,483,1189,654,656,1146,678,679,653,502,463,461,1148] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [823,1168,865,863,1166,798,829,831,853,696,753,783,1138] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [496,1217,364,647,1203,1216,497,500,1199,632,489,1193] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4662,4660,3265,4633,3263,3266,3267,3247,2780,2782,3272] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
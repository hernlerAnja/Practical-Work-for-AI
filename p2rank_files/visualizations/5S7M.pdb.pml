
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
        
        load "data/5S7M.pdb", protein
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
 
        load "data/5S7M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2423,2400,2425,2427,2428,2426,2548,2418,2422,2598,3674,3675,3676,3677,3523,2596,2597,2544,2546,2449,2540,2447,2666,3691,3388,3405,3692,3696,3404,3418,3683,2588,3443,3004,3444,2448,2788,2398,2972,2970,2395,2396,2974,2667,2702,3516,3517,3520,3515,2976,2979,2989,2934,2938,2952,2953,2532,2957,2701,3415,3427,3416,3007,3011,3012,3040] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [240,242,243,244,1191,1194,114,115,116,118,139,141,1094,117,119,120,93,720,88,349,1193,288,1298,1302,1071,1072,1083,1085,1281,1055,1282,1283,1289,1297,286,287,91,140,228,645,630,643,89,90,611,607,625,626,236,1186,1187,1188,1115,1082,1113,680,684,685,677,486,485,649,652] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2288,4265,4267,4239,4240,4241,4242,861,862,860,2260,3777,3789,3790,4232,4230,4237,890,892,910,461,443,445,451,454,1159,1160,1161,908,909,945,917,919,963,961,4263,4264,4270,4305,3776,3769,3775,428] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3865,3894,3377,3378,3374,3867,3815,3816,3685,3687,3688,3373,3691,3387,3762,3764,3804,3805,3765,4231,3735,3721,3731,3694,3657,3641,3639,3672,3787,3789] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1477,1506,1376,1377,1417,1347,1343,1372,1374,1416,1399,1479,1427,1428,1044,1045,1040,1049,1054,1843,1349,1291,1287,1290,1293,1294,1297] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1302,1071,1072,1084,1085,1303,704,1086,1087,1828,1814,1815,117,119,1338,1340,1070,1078,1610,700,702,1325,1326,1753,1327,1744,1745] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3711,3714,3713,3715,4133,4215,4216,3707,3698,3405,3697,3403,3419,3420,3418,3726,3027,4132,3411,3029,3031,3417,3412] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2242,2245,2246,2247,2253,2225,2258,2259,946,932,933,1487,1488,935,1483,1484,1485,2236,2248,1521,1458,1490,1495,1497,1489,1460,1462,1459] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3873,3274,3276,3278,3875,3876,3275,3877,3848,3849,4603,4592,4614,3883,3885,3847,3909,4615,4619,3287,4624,4627,4609,4612] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [862,860,2308,825,827,4267,861,832,1159,1161,823,824,830,834,837,833,892,2314,2316,2332,4304,4305] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [439,447,469,449,1131,1130,1132,632,633,657,635] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1200,1177,1183,1187,384,385,483,482,486,475,350] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [780,769,847,731,732,1122,1150,811,813,1152] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
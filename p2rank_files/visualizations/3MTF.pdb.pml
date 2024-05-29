
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
        
        load "data/3MTF.pdb", protein
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
 
        load "data/3MTF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1104,1197,1200,1092,1093,1094,1095,721,725,706,1121,698,701,705,734,673,1192,490,1120,1065,1081,1096,723,1080,1082,1097,1373,1404,1797,1798,1352,1353,1354,1368,1366,1367,1369,1374,1390,1375,1388,1391,1392,1865,1867,1360,1881,87,90,118,119,120,139,141,81,82,246,247,248,244,232,140,83,85,666,668,632,240,646,293,110,114,115,117,103,1873,1405] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2489,3456,2488,2490,2491,2510,2511,2453,2456,3064,3065,2454,3033,3035,3040,3050,3101,2452,2457,2458,2455,2617,2999,2512,2611,2615,3013,2601,2602,2603,3018,3561,2485,2486,2487,2618,2619,2482,3714,3715,3712,3713,3721,2664,2662,2481,3453,3454,3455,3073,3482,3068,3072,3059,3442,3443,3465,3558,2857,3553,3481,3426,3734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3915,3913,3887,3914,3877,3879,3318,3384,1265,1263,1264,3302,3303,3315,3888,3886,3870,3874,3869,3625,3623,1529,1531,3624,3626,3609,3610,3611,3647,3322,3325,4630,4632,4638,3304,3306,3911,4627,4633,4621,3923,3924,3921,1508,1512,1513,1517,1530,1248,1250,1502,1023,1247,1262,1558,936,1249,955,951,1282,1283,1284,1285,1286,4599,1259,1260,1261,4610] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1055,1361,1349,1364,1365,1412,1050,1054,1219,1220,1362,1467,1414,1442,1481,1482,1441,1439,1464,1497,1544,1575,1546,1548] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3416,3415,3725,3723,3773,3726,3932,3843,3803,3802,3759,3769,3842,3800,3411,3412,3679,3676,3677,3853,3854,3901,3905,3903,3710,3695] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3456,3457,3458,2488,2490,2491,4222,4224,4225,4230,3442,3443,3735,3765,3766,4154,3749,3752,3753,4028,3449,3454,3455,3088,3090,3736,4238,4155,3734,3730] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2845,2858,3539,3540,3497,2859,3021,3023,3045,3046,2826,2828,2830,3498,2818,2815] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3621,3646,2274,2277,2279,2280,2268,2285,950,2289,3343,3345,3344,1556,1558,936,1557,937,939,948,1554,1564,1590] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [654,656,1136,678,679,492,478,1179,461,463,1137,451,459] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [967,949,914,915,916,919,921,923,455,457,2291,2320,950] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3219,3221,3160,3186,3111,3517,3519,3187,3188,3112,3110,3488,3149,3145,3144,3184] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
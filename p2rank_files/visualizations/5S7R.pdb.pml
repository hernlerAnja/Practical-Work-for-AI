
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
        
        load "data/5S7R.pdb", protein
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
 
        load "data/5S7R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2556,2417,2419,2459,2460,2461,2544,2414,2415,3497,3496,3494,3495,2672,2673,2940,3490,3491,3489,3418,2981,3006,2972,2974,2978,2991,2976,2792,2954,3417,2959,2552,2936,2955,3390,3401,3389,3392,3013,3014,3042,3009,3402,2442,2558,2559,2560,2423,2424,2428,2429,2444,2445,2420,2422,2437,2438,2439,2441,3649,3650,3651,2604,2627,2628,3665,3362,3657,3670,3379,3666] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [98,99,101,135,142,146,148,103,147,93,94,96,131,132,133,134,247,249,250,251,120,1278,1277,295,121,124,108,109,119,363,632,1212,500,1205,1206,1207,1210,1211,1134,1101,709,713,714,743,749,706,1114,1295,1299,1090,1091,1102,1104,1113,1279,1280,1286,1074,1213,1294,499,646,647,235,651,664,673,683,666,668,95,243,628] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [946,457,948,4216,4217,4219,459,4218,468,1178,1179,1180,863,866,937,938,939,2244,2283,919,921,889,890,892,891,859,861,974,990,992,442,3762,3763,3743,3749,3764,4209,4241,4242,4243,4244,4240,4281,4282,3750,2309,4207,4214,4247] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3351,3352,3646,3659,3347,3517,3734,3738,3739,3761,3762,3763,4208,3736,3778,3779,3789,3790,3842,3844,3791,3612,3613,3615,3529,3631,3665,3655,3661,3662,3668,3871,3348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [729,731,733,1105,1731,1733,1089,1091,1103,1104,1300,1322,1815,1323,1732,1324,1106,1800,1801,1802,1335,1337,1605,1740,1097] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1287,1288,1346,1830,1297,1344,1396,1064,1275,1284,1290,1291,1073,1294,1413,1414,1374,1373,1340,1371,1425,1063,1471,1059,1060,1509,1473,1068] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3671,4193,3688,3689,3687,4180,3672,3681,3379,3394,3700,3702,3385,3983,3029,3031,4109,4110,3033,3391,3392,3393,3377,3386] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [961,1487,1491,1454,1483,1489,2226,2229,2230,2231,2232,2237,2220,2236,962,964,1481,1524,1479,1452,1453,1456,1500,1493,1498,2209,938,2242,2243,972,960,969,975] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3254,3850,3852,3853,3854,3252,3253,3825,3860,3862,3863,4580,4586,4569,3823,3824,3886,3256,4589,4590,4591,4592,4597,4601,4604,3265] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2964,2986,2987,2756,2764,2766,3475,3434,3432,2793,3476,2780,2960,2961,2962,2794] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [463,676,679,1149,1150,678,1151,453,461,483,501,502,653,654,655,656,661] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [522,229,194,196,51,639,528,195,189,190,191,192,193] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [876,760,809,761,1141,1168,703,1155,1169,1171,840,842,874] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2930,2931,2386,2831,2832,2928,2929,2369,2368,2834,2372,2948,2387,2385] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [489,398,399,1219,1220,497,1196,496,364,500] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
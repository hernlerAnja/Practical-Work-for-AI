
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
        
        load "data/5S7W.pdb", protein
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
 
        load "data/5S7W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2460,2461,2462,2463,2464,2465,2484,2485,2486,2435,2437,2432,2433,3539,2585,2710,2711,3533,3536,3537,3538,2583,3687,3688,2577,2581,2968,2972,3420,3421,3707,3404,3443,3432,3434,3532,3531,3431,3045,3460,3459,3046,3074,3038,3041,3023,2569,2991,3013,3004,3006,3010,3008,2830,2987,2986,2829,3021,2624,2456,2459,3694,3685,3686,2639,2641] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [148,1134,694,99,666,691,147,96,97,98,101,657,659,248,250,251,621,625,149,236,244,356,1206,493,1205,640,492,639,644,734,128,125,127,252,1213,122,123,1090,1101,1102,1113,698,699,1103,1207,1210,1211,1212] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4251,4252,4253,4250,450,451,452,939,468,435,1179,930,931,932,2262,2301,882,883,884,914,912,967,3799,3800,3801,941,983,985,3786,3780,4276,4277,4278,4316,4315,4285,4241,4243,2327,3787,3788] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3649,3668,3683,3692,3826,3798,3773,3775,4242,3695,3696,3698,3815,3827,3908,3393,3394,3389,3390,3699,3702,3776,3742,3746,3650,3651,3879,3881,3825,3816] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1275,1288,1290,1291,1344,1346,1373,1284,1287,1340,1294,1371,1842,1063,1064,1396,1429,1414,1475,1413,1477,1374,1513,1059,1068,1073,1060] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3419,3421,3708,3433,3434,3435,3436,3737,3726,3724,3725,4146,4147,3063,3065,3061,3427,4020,4217,4227] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1827,1813,1814,1806,1337,1752,1300,1335,1322,1323,1324,1743,1744,1745,1812,1091,1104,1105,1106,125,127,1089,1090,1102,1103,714,716,718,1097,1609] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2261,2260,2248,2250,2255,2244,2247,2249,955,1493,1495,1487,2254,957,1528,1459,965,968,931,1502,1504,1457,1458,1460,2238,2227,1456,1497,1483] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3860,3897,3899,3900,4623,3861,3862,3863,3864,3887,4612,3889,3890,3891,3294,3295,3923,3298,4629,4632,4633,4634,4635,4640,4644,3307] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [446,476,672,1192,647,649,671,1151,494,495,454,456,461] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [672,647,649,671,1151,1147,669,1152,654,645,646,461] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [252,1213,1278,1279,1280,122,294,296,123,1091,125,127,1090,1113,1074,1294,1295,1299,1292,1286] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [515,521,230,632,633,54,193,194,196,197,29,191,190,192,195] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2869,2870,2872,2390,2386,2387,2958,2960,2961,2980,2963,2403,2404,2405,2959] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1171,1169,802,791,833,835,867,869,745,787,689,746,1141] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
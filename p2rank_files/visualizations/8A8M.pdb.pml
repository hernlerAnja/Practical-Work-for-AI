
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
        
        load "data/8A8M.pdb", protein
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
 
        load "data/8A8M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1684,1709,1711,1029,1031,1032,1740,1685,2288,1713,1748,1657,1658,1063,1064,1069,1093,2431,2432,997,971,1067,2444,2393,2429,2365,2370,2371,2374,2366,2256,2257,2262,2263,2153,2149,2175,2181,2286,2287,2251,2250,2358,2231,2252,2232,2204,2239,2255,2361] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [504,1333,1334,1335,1350,1358,385,277,278,279,386,387,388,1225,1226,231,656,658,670,580,669,832,834,833,838,853,852,864,1332,1328,1329,1336,1339,1324,1230,1326,1327,870,877,866,867,868,856,817,820,283,372,850,851,846,544,570,541,542,569,266,253,254,259,405,1213,1224,1233] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3119,3728,4085,3132,3135,4186,4187,4188,3729,3155,3156,3100,3101,3274,3271,3272,3273,3416,3414,3415,3643,3644,3120,3143,3157,3703,3704,4083,4108,3694,3699,4107,4179,3525,3683,4198,4196,3446,3656,3658,3662,3258,3669,3673,3679,3693,3697,3102,3687] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2561,2563,595,596,597,598,599,2544,527,530,532,2565,556,558,557,559,561,562,2600,2567,2599,2551,571,572,1111,529,1159,1143,1157,1344,2556,2543] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [709,710,711,511,512,513,553,2753,2754,727,2726,2719,2755,799,820,798,800,693,428,776,777,440,748,427] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [1426,1427,1428,1432,1433,1816,1820,1812,1813,1814,4296,1824,4612,4611,1822,1431,1821,4650,4302,4306,4651,1436,4055,4265,4266,4267,4268,4242,4248,4381,4298,4380,4295] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [3552,3553,3547,3650,3045,3204,3237,3554,3014,3015,3044,3046,3203,2946,2994,2996,3202,3020,3053,2959,2960] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2083,2086,2088,2090,2079,4660,2094,2095,4690,4691,4692,2081,4315,2055,4624,4658,4656,4625,1833,4683,1829,1864,1832,1858,1855,1856,1890] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [4195,4172,4216,4217,3470,3471,3439,4005,4006,3973,4019] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1319,1204,1242,1172,1169,1168,1121,1122,1323,1331,1337,1175,1092,1090,1203,1061] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2296,2262,2153,2289,1778,1662,1687,1688,1713] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [2507,2510,2511,2851,643,2849,2850,2824,1049,1075,1076,1047,1050,1051,1078,1077,2526,2527,626,625,641,640,1041] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [1404,1405,1407,1824,1825,4614,4605,4607,4619,1547,1509,1510,1551,1545] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [4027,4415,4413,4419,4394,4424,3980,4414,4420,3943,3945,3978,3942,3923,4954,4956,4426] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [4505,3891,3888,4156,3738,3740,3711,4506,3747,3736,3712] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1397,1398,1399,1412,1413,1463,1193,1357,1182,1194,1195,1196,1211,1212,1472,1468,1512,1181] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [861,862,1259,1262,1263,854,635,843,1311,348,349,848,346] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [2919,2902,956,1285,937,940,957,2903,2898,2904,2905,2917,986,988,987,989] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [4257,4258,4259,4543,4545,4539,4256,3718,3717,3720,3719,4078,3748,3750,3714,4497] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1176,1181,1519,1639,1642,1677,1665,1497,1498,1504,1505,1496,1515,1516,1179,1180] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
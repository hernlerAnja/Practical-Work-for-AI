
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
        
        load "data/5S7E.pdb", protein
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
 
        load "data/5S7E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2439,2440,2441,2442,2443,2444,2465,2463,2464,2411,2414,2416,2412,3541,3700,3701,2578,2705,2706,3534,3535,3538,3539,3540,2576,2570,2574,2963,2967,3423,3715,3716,3720,3406,3445,3434,3436,2825,3533,3461,3462,2981,2986,2562,3008,3033,2999,3001,3005,2413,2982,3433,3040,3041,3069,3036,3698,2618,3699,3707,2627,2628,2434,2435,2438,2626] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1083,744,1096,126,127,128,252,1204,1205,1270,1271,1272,296,125,294,124,119,122,123,1082,1093,1105,708,709,1094,1199,1202,1066,1203,147,148,149,236,96,97,98,99,101,667,669,248,250,631,635,244,1122,1124,1126,677,654,673,704,676,701,360,1198,496,497,1197,650,649,1278,1287,1291,1286] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [931,2280,4270,4271,4272,881,882,883,913,3813,3814,2252,4273,929,930,454,456,938,439,911,465,472,1171,966,940,982,984,3799,3793,4294,4295,4296,4297,4298,4335,4336,4301,4268,4261,4263,3800,3801] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3681,3696,3705,3708,3709,3711,3811,3784,3761,3786,3788,4262,3828,3845,3395,3396,3391,3712,3392,3715,3789,3755,3759,3925,3745,3663,3896,3898,3573,3662,3829,3813] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3731,3750,3721,3739,3737,3738,4163,4164,3056,3058,3060,4165,3421,3423,3435,3436,3437,3438,3429,3430,4037,3722,4234,4246,4247] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1332,1282,1283,1286,1336,1338,1365,1289,1280,1267,1276,1279,1363,1830,1055,1056,1388,1417,1406,1463,1405,1465,1366,1501,1051,1052,1060,1065] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1802,1815,1292,1327,1329,1740,1314,1315,1316,1731,1732,1801,1081,1095,724,726,728,1083,1096,1097,1098,1605,1089] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2251,2240,2245,2250,2234,2237,2238,2239,954,1481,1475,2244,956,1483,1447,964,967,930,1490,2228,1516,2217,1492,1446,1448,1444,1485,1471,1473] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3916,3917,3878,3879,3880,3881,3907,3908,3940,3294,3296,3904,3906,3292,3293,3914,4634,4623,4640,4643,4644,4645,4646,4651,4655,3305,3307,4658] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [519,525,230,642,34,643,54,190,192,194,195,196,197,191,193,32,33] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [450,480,498,1184,1141,682,681,679,664,499,657,659,660,656,658,460,1143,458] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [881,882,883,884,1170,1171,1172,853,851,855,4298,4335,4336,2306] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2813,2789,2799,3013,3014,2989,2991,2987,2988,2990,2992,2797,3478,2826,2827] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2864,2865,2867,2369,2365,2366,2568,2955,2956,2975,2382,2383,2958,2957] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [832,834,801,1163,866,868,1161,699,755,1133,756,786] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        

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
        
        load "data/8C7X.pdb", protein
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
 
        load "data/8C7X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2762,3421,3422,3424,3427,3428,3433,3435,3414,3415,3256,3257,3258,3418,3196,3254,3255,2385,2512,2650,2651,2652,2653,2682,2683,2510,2511,2649,2672,3197,3234,3240,3252,2674,2640,2646,3339,3438,3440,3464,3466,3458,3459,3461,2920,3340,2927,3431,3463,2413,2496,2504,2508,2899,2900,2414,2364,2906,2882,2902,2877,2753,2878,2710,2905,2898] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1168,1169,1171,1174,1175,1180,1181,1183,1184,1185,1182,150,168,169,170,122,123,1178,152,518,633,638,658,663,1187,250,251,252,253,654,656,947,1000,1002,1003,1004,509,1162,268,405,406,409,425,1201,427,402,260,264,266,1200,433,435,634,434,616,462,948,426,985,990,998,399,683,1053,1054,120,661,662,676,1078,1080,1081,655,1050,687,688] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1158,526,2736,2737,2738,523,642,643,647,644,233,236,237,648,485,489,491,493,477,2770,2769,668,1097,1098,1099,1109,1111,1113,650,669,240,1132,1134,1141,1142,3394,3395,3132,3133,3134,3380,3131,3099,3101,3155,3100,3123,3356,3410,3411,2725,2733,2745,3153,2885,2886,2887,2767] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [483,904,2477,906,851,874,850,2178,2447,2448,884,1127,882,883,885,852,489,491,493,482,501,2480,2481,2435,2484,2916,3358,3367,3357,2891] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1499,1012,1013,1480,1497,1479,1262,1265,1445,1488,1471,1288,1287,1289,1222,1233,1206,1226,1325,1285,1298,1387,1389,1415,1008,1498,1324,1326,1023,1487] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1023,1191,1193,1039,1040,149,151,1181,1190,1061,1183,1062,1182,1313,1054,1334,1333] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2444,2446,2448,2176,2179,2442,2148,928,2116,2118,2119,2145,2146,2149,2150,2443,2306,2120,2307,2308,2309,2473,2463,2464,2450,2469,2471,2445] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2299,2297,2834,2333,2315,2319,2316,2810,2811,2502,2287,2856,2520,2838,2833] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [276,612,567,89,53,72,71,55,75,598,590,566,48] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3177,4259,4287,4229,4260,4261,4264,4230,219,229,225,227,4286,198,200,202,205,206,63,62,211,4227,4231] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [8,17,20,2264,2243,2244,2261,439,2718,2687,2689,2691] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1382,1789,1791,1792,1829,1557,1558,1684,1846,2042,2041,1838,2021,2023,1401,2039,2020,1359] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3498,3813,3814,3967,3686,3687,3535,4131,4150,3959,3920] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1023,1178,1193,1195,1326,1313,1020,1021,1200,1202,1206,1205] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1020,1021,1022,1008,1498,1027,1325,1385,1389,1341,1023,1326,1499] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
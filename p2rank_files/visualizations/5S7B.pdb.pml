
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
        
        load "data/5S7B.pdb", protein
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
 
        load "data/5S7B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1189,247,249,1190,1101,1193,1196,146,1089,697,701,702,737,1215,1062,1078,1079,1090,1092,1261,1214,317,1286,1287,1291,1278,98,125,124,93,119,120,122,291,292,293,498,642,1118,1117,233,647,666,669,694,662,660,628,643,241,245,624,144,145,94,95,96,1188] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3498,3495,3379,3380,3391,3402,3390,3490,2441,3419,2443,2444,2416,3014,3015,3043,3007,3010,2411,3363,3497,3491,3492,3496,3661,3393,2440,2560,2564,2566,2568,2442,2463,2464,2465,2686,2687,2945,2941,2803,2959,2960,3418,2964,2414,2552,2977,2979,2412,2981,2721,2722,2986,2983,2996,2618,2438,2439,2608,2617,3644,3517,2641,2642,3648] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [934,455,936,457,473,463,466,464,925,927,907,909,962,980,458,440,3734,3755,4200,2280,4228,4229,4231,877,879,4269,2252,3741,3742,3740,4206,4205,4227,4234,4198] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3769,3727,3729,3752,3781,3646,3650,3652,3653,4199,3609,3628,3612,3610,3643,3730,3862,3833,3835,3349,3352,3353,3348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1091,1092,717,719,721,1093,1094,1077,1078,1079,1314,1794,1315,1724,1316,1792,1793,1292,1807,124,122,1085,1597,1327,1329,1723,1725,1732] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3672,3378,3662,3691,3034,3392,3393,3395,3678,3679,3680,4100,4101,3386,3387,3974,3030,3032,3380,4184,3663] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1366,1501,1332,1336,1463,1465,1406,1405,1363,1365,1417,1047,1051,1267,1280,1282,1283,1052,1247,1388] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [949,1483,1446,1447,1475,1481,950,952,2234,2240,2244,1516,1444,1445,1492,1493,2228,1490,963,964,1473,1471,1485,2237,2238,2239,2245,2217,2250,2251] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4567,4573,4576,4577,4578,4556,3255,3257,3266,3254,4588,3841,3814,3815,3816,3818,3843,3844,3845,3851,3853,3854] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [193,187,188,189,190,191,192,194,28,636,51,520,635,227,526] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [675,672,674,481,499,500,648,649,650,651,653,451,459,461,1134,1132,657] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4231,877,879,4268,4269,2306,1161,1162,1163,851,847,909] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2804,2805,2965,2966,2967,2991,2992,3477,3476,2767,2791,2777,3433,3435] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2931,2384,2934,2936,2382,2383,2365,2842,2843,2845,2929,2953,2366,2367,2369,2930,2932,2933] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [748,797,749,862,864,1154,1124,1152,692,828,830] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
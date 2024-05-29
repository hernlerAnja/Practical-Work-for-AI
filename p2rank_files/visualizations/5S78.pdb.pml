
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
        
        load "data/5S78.pdb", protein
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
 
        load "data/5S78.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3352,3487,3486,3480,3481,3484,3485,2404,2405,2529,3391,2426,2377,2424,2375,2372,2373,2521,2525,2527,2425,2905,2647,2909,2395,2399,2400,2401,2402,2569,2403,2578,2577,3634,3635,3636,3637,2579,3369,3382,3380,3651,3656,3368,3652,3643,2978,2979,3007,2971,2974,3408,3379,2767,3479,3407,2943,2950,2947,2374,2960,2945,2513,2923,2924,2928,2941] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1090,1182,1109,1111,1078,689,693,694,729,686,350,1184,1188,1189,246,1183,1187,1190,486,639,658,230,661,654,620,487,634,635,652,124,126,128,96,127,95,290,114,245,242,244,143,142,238,90,91,92,93,616,1091,1067,1079,1068,1081,1260,1261,1262,1259,1051,112,116,119,121,288,1281,1268,1276,1277] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [916,2237,3750,444,446,914,915,917,923,925,2265,896,898,865,866,867,868,462,836,838,839,840,4204,4205,4202,4203,452,455,1155,1156,1157,951,967,969,3748,3749,429,4267,4268,4193,4195,4230,4228,2291,3729] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3764,3724,3747,3722,3645,3641,3647,3648,3697,3695,4194,4196,3774,3775,3776,3725,3857,3337,3691,3654,3681,3351,3651,3828,3830,3617,3342,3632,3507,3519,3338,3341,3749] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1036,1355,1356,1486,1322,1326,1396,1457,1459,1040,1041,1411,1257,1266,1269,1270,1272,1273,1328,1276,1378,1353,1823,1395,1050,1037,1045] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1282,1795,1808,1304,1305,1306,1725,1787,1790,1793,1794,1317,1319,1733,1724,1726,1066,1068,709,711,713,1080,1081,1082,1083,1074,1590] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3369,3382,3383,3384,2996,2998,3381,3673,3674,4095,3675,4096,3656,3367,3657,3686,4178,4179,3658,3667,2401,2403,3375,3969,2994,3376] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1465,1467,1468,1469,2225,2230,2235,2236,2219,2222,2223,2224,2229,939,941,949,952,915,2213,1463,1470,1501,1475,2202,1438,1477] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3810,3811,3813,3848,3849,4583,3846,4578,4584,3872,4572,4561,3836,3229,3230,3232,3838,3812,3839,3840,4581,4582,4589,4593,3241,3243] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [470,664,666,642,644,641,1126,1127,1128,1124,1129,448,440,450,649] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3802,3812,3840,3534,3536,3537,3248,3251,3548,3804,3229,3310,3811,3813] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1145,1146,1148,1132,684,1118,851,853,786,741,771,817,819] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [509,515,191,627,224,186,189,48,28,628,23,26,188,187,184] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [487,635,351,1180,1183,476,483,484,1196,1173,1179] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3542,3543,3252,3256,3290,3305,3287,3288,3289,2698,3303,3304,3292,3526,3527,3594,2659,3522,3524,3523,3591,3573] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3260,3207,3205,3208,3209,4621,2735,3214,2737,2743,3189] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
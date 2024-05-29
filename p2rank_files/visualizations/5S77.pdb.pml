
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
        
        load "data/5S77.pdb", protein
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
 
        load "data/5S77.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3410,3411,3696,3701,3394,3681,3424,3712,3697,3702,3703,2435,2436,2437,2438,2439,2440,2461,2459,2407,2412,3529,3682,2564,2691,3526,3527,3528,2434,2562,3680,2646,2647,2556,2560,2955,3032,3450,3033,3061,3000,3010,3025,3028,3433,3522,3523,3521,3421,3449,2548,2973,2978,2408,2410,2460,2991,2993,2995,2997,2409,2692,2817,2959,2974,3422,2604,3679,2431,2612,2613,2614,3708,3688] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1202,1205,1069,1208,1085,1086,1096,1097,1108,127,129,131,255,125,126,708,709,1098,744,1099,1207,1266,1267,297,299,1129,704,676,701,99,100,101,102,104,673,667,669,253,631,635,650,1201,151,502,251,152,247,150,239,649,654,365,501,1200,1273,1286] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [934,2248,2276,4240,4241,4242,883,884,885,886,916,914,4239,470,854,858,861,932,933,459,461,941,444,477,1173,1174,1175,856,969,943,985,987,3774,4265,4267,4304,4305,4274,4275,3793,3794,3795,4229,4231,2302] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3383,3384,3692,3693,3379,3380,3696,3765,3769,3770,3736,3902,3726,3699,3809,3810,3873,3644,3875,3643,3792,3794,3742,3767,4232,4233,3690,3821,3662,3677] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1058,1059,1262,1275,1360,1271,1274,1277,1278,1281,1331,1333,1401,1461,1463,1361,1499,1411,1412,1383,1400,1358,1828,1068,1054,1055,1063] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [1287,1322,1813,1309,1310,1311,1799,1800,1729,1730,1731,1798,1324,1738,724,726,728,1098,1099,1100,1101,1084,1086,1092,1603] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3712,3731,3702,3703,3720,3718,3719,4132,4133,3409,3411,3424,3425,3426,3423,4006,3417,3418,3048,3052,3050,4134,4216] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1481,2247,2246,2234,2236,2241,2230,2233,2235,2240,957,1477,1473,959,1514,956,1479,967,970,971,933,1488,1490,2224,2213,1442,1483,1469] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4603,4609,4612,4614,4615,3288,3885,4592,3891,3893,3894,3881,3883,3855,3856,3884,3284,3285,3286,4613,4620,4624,4627,3297] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2781,2789,3466,2983,3003,3005,2791,3464,2979,3006,2988,2805,2818,2819,2981,2980,2982] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [682,1144,1187,657,679,681,656,485,659,465,1145,463,1146,455] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [869,871,804,793,829,835,837,1163,1166,1164,1150,859,755,789,699,756,1136] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [193,195,197,198,199,200,524,525,642,643,57,530] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3263,3265,3270,3245,2785,2787,3299,3272,4626,4655] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2947,2948,2378,2379,2950,2856,2859,2857,2943,2946,2365,2362,2361,2967] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
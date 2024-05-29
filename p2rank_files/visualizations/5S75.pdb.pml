
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
        
        load "data/5S75.pdb", protein
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
 
        load "data/5S75.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2432,2433,2434,2435,2436,2437,2409,3375,3668,3669,3670,2557,3508,3509,3510,2431,2427,2428,3667,2597,3676,2610,2612,2614,2683,2458,2553,2555,3391,3392,3684,3685,3689,3024,3431,2404,3025,3053,3017,3020,3002,3414,3503,3504,3507,3502,3402,3430,3403,3405,2549,2541,2456,2457,2407,2405,2684,2951,2966,2947,2965,2970,2992,2983,2985,2987,2989,2809,3000] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1093,1105,1202,1066,1082,1283,705,1094,1095,1205,1083,1096,129,131,255,125,126,128,130,127,706,741,1199,1203,1204,1262,1263,1264,297,299,701,673,1126,100,102,151,152,239,150,99,101,104,670,666,651,664,698,363,364,628,632,647,500,253,251,247,646,1198,497,1197,499,1278,1279,1270] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2274,880,881,882,883,911,913,468,851,855,858,966,3781,3782,3783,930,931,2246,4235,4236,4237,4238,982,984,983,457,459,938,940,442,475,1170,1171,1172,884,853,929,932,4261,4263,2300,4300,4301,4225,4227,4229,3762,4226,4228,4224,4223] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3755,3780,4227,3730,3753,3757,3678,3724,3728,3758,3890,3680,3360,3714,3681,3684,3687,3364,3365,3361,3650,3665,3797,3798,3809,3861,3863,3631,3632,3634,3781,3782] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1055,1056,1459,1398,1497,1358,1328,1357,1324,1461,1413,1259,1274,1275,1330,1268,1271,1272,1278,1380,1355,1826,1397,1065,1051,1052,1060] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3392,3708,3407,3706,3707,3700,3685,3689,3690,3691,4209,4198,4199,4204,4211,4212,3696,3699,3683,3404,3405,3406,4002,3398,3040,3042,3044,3719,3390,4128,4129] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1284,1306,1307,1811,1797,1798,1728,1308,1796,1736,1319,1321,1727,1729,1081,1283,1095,1083,1096,1097,1098,721,723,725,1089,1593] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [953,954,1475,1477,1479,1471,2244,2245,2228,2231,2233,2234,2239,2232,956,1512,2238,967,1486,1488,2211,2222,1467,1481,1441,1442,1440,1444] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3869,3871,3872,3873,3264,3263,3879,4605,3843,3881,3882,3844,4594,3905,3267,3276,3278,4626,4629,3272,4611,4614,4615,4617,4616] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1141,1139,679,676,678,661,483,501,654,656,502,653,1144,461,463,1142,1143,453] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1161,1163,866,868,790,801,832,834,696,752,753,786,1133] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [199,197,200,196,193,195,198,194,522,233,639,57,528] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2973,2974,2975,2972,2980,2995,2997,2998,3445,2797,2773,2781,2783,3447,2810,2811] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3244,3247,3249,3224,2777,2779,4655,4657,3278,4628] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2937,2938,2939,2940,2375,2376,2942,2848,2849,2851,2935,2936,2362,2959,2358,2359,2377] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1198,1188,497,1194,1195,496,489,1211,364,632,647,500] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        

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
        
        load "data/3JUH.pdb", protein
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
 
        load "data/3JUH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3611,4068,4070,4072,4103,1419,1409,1168,1169,1193,1194,1191,1192,2720,1187,2717,1420,1410,1411,1413,1402,1415,3609,3610,4038,4039,3606,3612,3618,4040,4013,4014,4015,2695,2696,3964,3966,5670,1215,5672,5649,5669,3573,3571,3576,1404,3962,771,774,780,1457,1458,772,773,761,762,1224,1226,751,735,1428,1432,1434,1220,1222,1249,1189,1260,1248,80,82,3598,3599,3600,3589,941,1438,1440,942,1412,1414,4257,4266,4269,4270,4247,4272,4248,1264,4258,5684,5687,5706,139,4290,4035,4063,4102,2938,2940,4094,4095,2830,2833,2997,3033,3035,2850,2852,3006,2994,3028,3031,4060,4061,1158,2799,2801,5541,5543,1157,1159,2802,2722,2716,2815,1124,1126,2792,2816,1128,2818,2794,1423,4036,4037,5567,4002,4004,4005,5563,5564,3999,5653,2726,2728,5645,5655,5575,5569,5573,3959,5639] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3279,3280,3281,3266,3267,3276,3251,3252,3240,3241,3242,3243,3821,3828,4308,4305,4309,3527,3415,3414,3413,3430,3428,3435,3633,3635,4207,3765,3766,3768,3770,3297,3775,3399,3791,3231,3237,3238,3239,3295,3296,3794,3809,3813,3788,3790,3767,3771,3255,3264,3268,3262,3263,3270,3272,4179,4315,4185,4313,4184,4183,4192,4314,4316,4152,4168,4474,4332,4333,4334,4340,4341,4342,3489,3490,3454] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3376,3377,3378,3338,824,3352,3361,301,3662,3182,3171,3337,3351,3353,305,3646,3652,3654,3655,3660,3639,539,540,500,555,343,344,499,514,523,333,3593,3594,3640,3642,3776,754,755,756,804,808,814,815,816,817,934,935,3382,3393,3773] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1473,1475,1476,458,575,577,459,443,1370,797,959,1369,971,393,969,990,392,402,405,404,413,795,928,930,933,932,1482,1347,1484,414,432,1483,1341,1344,1346,1477,394,956,396,972,561,953,927,937] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3642,3641,3779,753,3780,3597,3598,3600,802,803,941,938,940,804,942,3591,761,762,759,760,751,766,1457,1458,785,4289,4290,3604] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1482,1330,1347,1484,414,417,421,430,432,423,434,436,1314,1481,1329,1343,1344,1345,1346,425,1480,689,1499,1500,652,1508,1509,429,597,577,615,590,593] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1661,1663,1949,1953,1955,1328,1641,1642,1675,1676,1891,1892,1336,1337,1944,1945,1948,1950,1007,1008,1010,1342,1343,1344,1330] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3846,3847,4791,3848,4795,4796,4799,4493,4495,4735,4166,4168,4474,4473,4507,4185,4182,4184,4180,4181,4183,4174,4506,4508,4737] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2929,2912,2923,2928,2911,4657,4617,4622,4630,4631,4634,2916,5482,5507,5534,4087,2940,2939,5539,5529,2828,2804,2806,5535,5527,5528,5551,5524,5530,4060,2805,2815] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1264,738,4250,4251,4252,4253,4269,4247,4272,4248,4249,139,186,188,147,148,184,4273,735,726,733,751] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3719,3687,3535,3132,3738,3739,3740,3105,3111,3129,3499,3495,3465,3468,3469,3470,3496,3504,3091,3506] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [70,71,2682,54,58,1825,2677,2683,1798,1785,1802,2635,81,82,1214,1240,2692] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [202,204,1555,1557,1577,234,207,212,195,222,224,1576] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [5267,4947,4812,4784,4785,4805,4912,4913,4936,4824,4811,4911] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
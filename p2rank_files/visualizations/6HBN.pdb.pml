
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
        
        load "data/6HBN.pdb", protein
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
 
        load "data/6HBN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1183,1185,4063,5546,3620,3621,4070,4072,4074,4037,1149,1150,2676,2700,2697,2696,2708,2675,2709,2702,2703,2704,1115,1117,1119,1158,1160,2799,2781,4104,4105,2813,4096,4097,1392,2832,2978,1406,759,762,763,764,1213,1180,1206,1178,3607,3608,3609,3610,3614,3615,3616,3619,3598,755,757,753,750,752,754,795,751,3652,744,747,3601,3604,1182,765,1159,766,771,1419,1415,1417,1402,1411,1414,776,794,1432,1433,3599,1416,1418,1393,942,943,932,4062,5518,2795,2796,2919,2921,5522,5543,5519,5553,5554,5555,2782,2772,2777,2779,3969,4015,4016,4017,4038,4039,4040,4042,4001,4035,1215,4249,4259,4260,4268,4272,3628,4271,1217,4273,4250,1247,1248,4251,4253,726,3622,4279,3633,4274,4289,4290,3651,742,3799,3800,4275,3789,4276,5642,3974,1239,1240,5645,5656,5659,83,5641,140,81,5618,5623,4004,4006,4007,5627,5625,5628,3967,3972,3976,5678,5587,5542,5550,5559,5588,5597,5603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4208,3821,3823,3296,3408,3794,3409,3643,3645,3778,3780,3781,3422,3423,3297,3421,4291,3822,4307,4311,4325,4310,3537,3424,3425,4319,4194,4315,4316,4318,3281,3240,3230,3231,3232,3237,3234,3831,3835,4209,4210,3819,3820,3243,3252,4186,3838,4181,4187,4184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3673,816,3360,314,3602,3603,3604,3662,3664,3671,3672,3171,746,747,807,815,933,3790,528,529,512,503,489,325,931,932,808,929,930,544,928,501,509,502,504,3786,3665,3401,3346,3358,3359,3369,3384,3385,3366,3182,3361,3386] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [374,440,380,385,386,395,974,978,1352,1353,375,377,439,963,1324,1327,1329,1330,788,921,923,1450,918,1453,568,566,567,424,1454,1458,1459,1461,1337,1460,1434,964,965,1351,966,550,551,937,552] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1311,1313,1619,1000,1001,1618,1652,405,406,1320,1653,1029,1319,1933,1325,1326,1327,1329,403,1620,1638,1640,1641] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3858,4170,3262,3263,4495,4477,4481,4497,4779,4783,4789,4509,4782,4187,3857,4182,4183,4184,4185,4186,3260,4166,4167,4168,4475] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2663,2667,2651,2657,2661,2660,2662,1231,1775,1761,1776,1779,2640,2615,1802,69,53,48,71,82,1770] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3281,3440,3500,3268,3271,3273,3499,3463,3462,3464,3424,4317,4318,4334,4154,4342,4343,4344,3441,3261] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1416,3583,1393,1396,1397,1398,3581,3025,3027,3586,4105,2978,3020,2986,2987] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [679,1477,409,410,411,414,1478,1479,606,641,1461,1460,423,424,584,568,567,1485,1487,639] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4636,5461,4618,4632,4633,2886,2890,2891,5503,5506,5508,5497,5486,5507,5509,5514,5518,4088,2909,4624,4659] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [197,213,214,224,185,192,194,202,222,223,1554,1532,1534,1553,1500,1501] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3062,3071,3072,3073,4410,4411,3043,4389,4391,3041,4357,3063,3046,3051] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
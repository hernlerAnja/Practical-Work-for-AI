
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
        
        load "data/7MFD.pdb", protein
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
 
        load "data/7MFD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4373,4374,4528,4537,4538,4606,4628,4570,4599,4601,4602,4603,4605,4609,4578,4576,4580,4581,4632,3645,3646,4387,4388,4522,4523,4524,4525,4404,4386,4385,4526,4519,4629,4630,3506,4604,3512,4546,4016,4017,4529,4532,4534,4541,4513,4516,4518,3887,3661,3659,4001,4003,4574,3644,4002,3821,3822,3892,3798,3797,3796,2675,2681,2685,2674,2679,4689,4720,4631,2668] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1716,3684,4613,3680,4623,1715,2620,2621,1717,2623,3705,3706,3696,4586,4590,4592,4614,4596,4594,4565,2646,2648,2024,1673,1674,1675,1677,1676,1678,2027,3685,1108,2627,2310,2325,4617,2338,2339,2305,1109,2011,2309] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [3237,3241,3258,8593,8955,8956,8957,7669,7702,3257,7644,7647,3232,3233,3234,3236,8653,8654,8252,8253,8280,8282,3235,3243,3248,3244,7636,7637,8221,8600,8602,8222,8223,8224,7609,7610,8220,7667,7695,7698,7699,7701,7668,3226,7723,8291,8327,8328,7697,3228,8259,8293,8587,8586] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [931,936,937,938,920,739,6987,6988,957,958,740,741,742,743,745,6014,6052,6053,5960,6016,6601,6603,910,5989,5988,722,735,751,752,754,726,929,942,943,926,6947,947,5964,6511,6531,5961,5962,5963,6578,6579,6580,6567,6999,5965,6474,6505,6534,6600] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [7767,5709,5710,5711,5713,5717,5721,5727,5745,635,636,5996,7450,7451,7447,6004,6005,5994,5995,7483,7742,7481,7482,7454,7464,7476,7458,5715,7471,600,7448,7473,7474,7424,795,7710,585,586,587,591,3274,3176,7760,7761,7730,5714,7733,7704,7706,7712,7468,3275,7472,605,606,604,5744,5746,6255] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [5910,964,963,965,6473,6475,6871,6869,6865,6870,6472,6474,6476,6505,6892,5909,5898,5900,949,7218,7186,7189,6861,6860] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [1654,1647,1649,1652,2048,2051,2053,2054,2052,2049,2050,1632,1243,1145,1625,1626,1627,1095,1488,1604,1609,1629,2116,1633,1108,1098,1101,1104,1097,1099,1092,1658,2023,2026,2034,2140,1489,2130] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [4098,4074,4211,4184,4493,4494,5500,5502,4208,4200,4201,4202,4203,4207,5496,5497,5498,5480,5524,4485,4477,4097] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [2887,808,802,552,559,561,562,2886,2904,2917,2918,2905,568,8972,8975,8977,8999,266,303,304,282,9003] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [3493,3496,3497,3515,3528,4417,4415,4517,3486,4081,4082,4059,4061,4060,4065,3529,3488,3489,4632,3645,3646,4404,4424,3506,3512,3485,3626,4014,4440,3642,3644,4015,4017] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4867,4191,4193,4189,4190,4218,4219,4859,4860,4863,4864,4892,4894,5198,4394,4840,4842,4861,4431,4213,4238,4433,4237,4432,4510,4214,4215,4212,4367,4369,4239,4509,4511] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [1981,2346,2347,2375,2348,2190,2191,2298,2455,2403,2281,2013,1116,2012,2330,1980,1990,1995] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [2302,2303,2305,1109,1110,1111,1112,1115,1117,2011,2012,2309,1128,2339,1126,2034,2035,2137,2138,2139,2140,1124,1108,1130,1132,1104,2027,1145] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [3154,3153,3177,777,778,605,775,606,607,622,604,3122,3123,3124,646,647,656,3120,3176,5714,5715,587,641,642,639,640,5712,5713,790] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [875,879,722,849,852,868,909,872,905,854,870,918,919,920,716,717,718,7301,698,927,928] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [4638,4633,4634,4402,4400,4836,4391,4392,4656,4665,4670,4677,4689,4682,4687,2698,2699,4387,4382,4383,4389,4373] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [8825,8828,8522,8493,8495,8526,8608,8609,8610,8611,8568,8852,8853,8855,8524,8528,8820,8823,8801,8497] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [4024,4025,4026,3327,3328,3863,4030,4468,3318,3324,4456,4482,4483,4486,3865,4501,4502,4503,4042,4467] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [2879,2883,9036,9037,9038,801,2869,3219,9011,9035,9033,9034,2855,3218,3210,3211,3214,3215,3185] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [3129,3132,3124,812,833,3154,3184,778,3098,3099,2891,2892,799,790,810] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [3994,3436,4009,3632,3633,3555,3634,3434] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [751,752,754,851,853,756,594,596,765,767,862] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [577,579,885,844,843,886,3294,3296,3297,556,558,555,3292,3293,3295] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [579,885,841,844,843,558,560,823,689,691,822] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [3376,3914,3390,3391,3392,3393,3621,3370,3371] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [4245,4241,4244,4268,4804,4841,4844,4842,4843] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
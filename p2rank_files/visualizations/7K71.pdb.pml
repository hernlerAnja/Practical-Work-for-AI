
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
        
        load "data/7K71.pdb", protein
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
 
        load "data/7K71.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1715,1716,1746,1719,1720,1723,1725,1726,1367,1371,1374,1377,1378,1336,1338,1356,1513,1696,1697,1701,1699,1714,2264,2251,1387,1381,1743,1562,1924,1920,1921,1923,1935,1982,1339,1786,2244,1981,1986,1989,2240,2242,2247,2250,1328,2281,2285,2260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5094,5116,5093,5114,5514,5485,5483,5492,5878,5881,5495,5109,5157,5081,5091,5278,5279,5066,5068,5486,5258,5358,5339,5353,5355,5362,5363,5366,5335,5381,5880,5428,5457,5459,5199,5331,5332,5336,5360,5155,5156,5861,5513,5859] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [4511,4794,5287,5292,5293,5294,5295,5284,5206,5207,5268,5286,4456,4458,4478,4283,4437,4438,4813,4805,4808,4809,4812,4261,4239,4240,5181,4864,4241,4244,4229,4865,4830,4714,4716,4711,4712,4713,4798,4793,4494] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [4571,4572,4573,4574,1059,1060,3144,3146,1058,3438,3439,3173,3175,4549,4550,4548,3136,3140,3142,3134,3137,3139,3412,3138,4608,3488,3489,4520,4732,4734,3174,3437,3166,3441,3442,3443,4110,4120,4121,3440,3406,3407,3403,3405,457,458,4719,4540,4722,4724,4725,4516,4702] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [4931,4934,4937,4988,4915,4917,4918,4916,4932,4919,4922,4921,4848,4851,4835,4836,4844,4847,4845,5212,4870,5359,5037,5375,5376,5198,4952,4838,5239,5032,5033,5035,5004,5005,5007,5008,5011,5203,5257,5202,5211,5216,5225] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [4292,4268,4270,4180,4191,3977,3999,4002,3845,4035,3991,3998,3992,4211,4210,3956,3976,3978,3980,4208,4212,4190,4209,4058,4059,4061,3821,3809] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [4598,4599,4600,4608,4633,1083,1092,1093,1097,4640,1057,1085,1086,1089,1087,470,518,520,527,529,1084,1113,505,506,4571,4572,4607,4609,1059,1058,4704,4601,4705,4662,1120,4678,4679,4667] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [3207,3519,3520,3547,5677,5678,3483,3510,3512,3518,3484,3485,3486,4519,3171,3172,3174,3175,3205,5660,4740,4741,4499,4496,4485,4498,5690,4486,4753,3538,3539,4762,4521] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [4565,5306,5086,5132,5104,5105,4535,5130,4543,4694,5109,5277,5081,5084,5142,5304] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [1067,458,956,1062,939,922,4384,1096,1069,4375,1071,4121,4122,4143,4144,4392,4394,4381,4383] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [1909,1905,1908,1912,1987,1988,2147,1898,1899,2016,2019,2009,2010,2012,2013,1799,2230,2245,2246,1989,2218,2220,2150,2154] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [5639,5128,5129,5322,5325,5130,5124,5738,5740,5756,5749,5751,5752,5753,4528,5637,4503,4530,4534,4535,5320,5132,5689,5707,4504,5319,5702,5701,5732,5635] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [5614,5615,5780,5607,5608,5125,5133,5756,4592] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [979,1164,978,1027,976,807,911,623,814,1080] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [1204,1172,1202,1203,967,1208,916,965,1182,1171,4344,4345,4346,4352,4356,4351,937,920,1200,1201,1205,945,946,947] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [2766,2768,1730,2767,2770,2769,2773,2338,2335,1745,1748,2356,2357,2359,2746,2745,1344,2303,2305,2304,2312,2341,2311,1339,1754,2796,2798,2981,2793,2795,2797] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [2690,2575,2787,2597,2809,2811,2682,2596,2842,2664] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [3702,3704,3706,423,3398,3399,3728,3729,3730,1233,1250,4092,4127,4093,421,433,434,435,4126,4152,947] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [3829,3802,3804,3803,3828,4751,4754,4774,3478,3503,3505,4745,91,3506,93,3501,3526] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [3278,3277,171,187,185,186,1915,2145,3253,2142,2147,194,3581] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [1177,642,815,894,896,897,839,831,830,812,712,714,854] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [2128,2129,2136,2137,1889,2115,2132,2133,5671,5673,2125,2126,2114,2127,3562,3563,2068,2069] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [1171,4345,4352,4356,4350,4351,684,687,641,647,4378,628,631,634,636,1170,638,640] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [1413,1652,1653,1466,1811,1465] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [4430,4160,4161,4313,4420,4785,4786,4291,4099,4106] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
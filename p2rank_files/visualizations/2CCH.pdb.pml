
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
        
        load "data/2CCH.pdb", protein
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
 
        load "data/2CCH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [671,263,261,145,147,93,146,248,127,128,89,90,91,95,1122,700,757,731,756,708,716,694,696,1123,1194,1209,1094,1106,265,1195,1205,1207,1095,667,665,663,673,675,527,528,669] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [4890,5734,4787,4788,4789,4743,4769,4770,4733,4735,5735,4730,4736,4737,4740,5150,5282,5292,5309,5306,5320,4732,5328,5343,5369,4731,5308,5312,5077,5283,5284,5287,4906,4907,5288,4903,5286,5821,4767,5285,5340,5706,5707,5708,5336,5718,5806,5807,5809,5815,5817,5695] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [8059,8054,8018,549,8091,7649,7650,8081,8082,8083,8084,8049,8051,8052,8047,8048,8050,5203,558,559,561,653,40,41,42,192,242,31,24,28,228,576,2,3,4,21,22,23,550,552,553,6] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [2270,2252,1476,2253,2254,1893,1899,1904,2247,1890,1478,1487,1491,1494,1489,1490,1474,1947,1938,1524,1525,1500,1511,1528,1499,2469,2474,2268,2484,1290,2482,2521,1515,1516,2475,2476,2478,2508,2497,2304,2500,1522,2301,2284,2295,1264,1517,2510,1523,2519,2547,2505] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [5172,5181,5182,5184,5197,5199,4683,4684,5276,3531,3083,3084,3499,3522,3523,3524,4670,4673,4644,4645,4646,4664,4665,3488,3489,3490,3456,3458,3459,3460,580,3491,3492,4648,4870,4871,4834,5173,5176,5175] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [3645,3647,1296,1297,3646,2935,1283,1280,1286,1287,2949,2950,2951,2953,3252,3612,1258,1267,1253,1257,1266,3771,1282,3242,3251,1254,3611,2937,2941,2942,2943,2944,2945,3812,3810,4515,4524,3783,3642,3673,3676,3678,3644,3621,3618,3619,3620] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [2972,3000,3003,2997,3034,2973,2976,3604,3859,3867,3587,3006,3966,3592,3597,2644,2665,3863,3857,3856,3860,3861,3928,2658,3995,2656] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [8500,8504,7569,7572,8158,8164,7538,7542,8147,8469,8454,8526,8403,8405,7563,8413,8409,8407,7221,8482,8499,8505,8452,8462,8453,7600,7359,7230,7231,7565,7566] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [2490,2517,2520,2489,2491,2523,2527,4190,3651,3695,3696,3697,4187,3684,3686,3683,2473,2522,4152,4186,4153] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [4994,4985,4974,8041,8014,5208,5209,8049,8051,8047,8043,8009,8010,8016,8011,8012,4942,4938,4940,4939,4944,22,23,7989,7990,8020,5220,5227] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [609,3451,3453,3481,343,327,332,3489,3449,3450,3456,3487,3455,3460,4664,4665,352,298,300,346,344,597,297,303,585,586,3491,3423,3425] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [8358,8359,9039,5908,5909,8206,8171,8338,5894,8238,8331,7503,7507,7510,7511,8172,7501] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2722,5159,2718,5293,5296,5301,5314,2737,2738,5160,5125,5751,5776,5792,5793,5136,5316,5766,5748,7011,2723,5122,5126,5127,5128,5123] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [265,1197,1066,1199,1201,1222,1232,1203,1207,386,388,390,423,1223,1224,1225,1231,1106,1107,122,1233,123,125,127,128,282,264,147] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [6127,6855,6860,6102,6112,7077,7052,7058,7076,7087,7088,5902,5890,5896,5893,5876,5901,6128,6113,6123,5881,6134,6136,6140,6849,6850,6851,6874,6852,6857] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [683,684,681,689,1154,1136,502,1164,1180,1181,1139,535,7284,7303,7304,7305,500,503,2421] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [5678,5695,5982,5718,5817,5835,5838,5842,5843,5844,5845,5708,4764,4765,4767,4906,4907,5819,5821,5012,5014,4769] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [5878,5879,5892,8207,8205,8206,5903,5908,5909,8181,8178,8179,7516,7517,7519,7515,5911,7812,8172] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [2191,2192,2193,2072,2229,2220,2225,2214,2227,1879,1881,2236,2044,2043,1880,2042] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [6859,6860,6102,6861,6503,6086,6088,6536,6537,6509,6510,6851,6852,6853,6494,6845] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [5887,7083,7086,7056,8257,8211,8244,8246,7055,8673,8256,8707,8708,8711,7089,7090,7093] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [838,2132,839,842,862,864,841,2114,2125,2126,873,874,2368,2370] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [354,357,360,372,375,380,390,411,1327,1233,3256,3265,3288] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [4364,4366,4368,4334,4338,3892,3903,3881,3882,3883,4336,4339,4399,4398,4397] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        
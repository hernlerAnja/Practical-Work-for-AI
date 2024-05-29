
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
        
        load "data/8DCX.pdb", protein
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
 
        load "data/8DCX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3078,4788,4789,3072,3085,3088,3086,3087,8657,8659,9464,9466,3107,8626,8628,8624,3092,3097,3100,3101,3103,8591,8589,3176,3185,3190,2905,3182,3164,3165,2902,4759,4772,8663,8666,8667,8630,4774,4442,4746,4441,7224,4771,4773,4778,4780,4782,8692,8691,8690,3229,3231,3256,9401,9400,3215,3228,3106,3121,3123,3124,7271,7272,7273,7274,7275,3180,7216,7222,3178,7232,7233,7234,7228,7223,7231] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [6444,6785,6789,6790,6796,7550,6770,7483,7540,7518,7580,7581,7549,7033,7034,7516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [4664,4665,4666,4667,4668,4669,5300,5311,5312,5991,5985,5988,6069,5992,4348,1146,1147,4632,4633,4714,4347,4345,4346,4350,4386,5763,5769,4358,5824,5825,5826,1818,5789,5968,5974,5975,1817,4322,1169,4351,4357,5797,4354,5765,5793,5794,5319,4663] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [5694,5696,5676,6060,5484,5695,5697,5675,6076,5677,5452,5453,5440,5441,5992,5993,6059,6064,6075,5501,5504,5505,5506,5721,5753,5732,5731,5759,5761,5714,5717,6656,6657,6660,6662,6655,6652,6654,6661,6663,6557,6548,6549,5792,5980,5982,6573,6572,6636,6107,6571,6106,6547,6123,6125,6083,6080,6667,6671] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.396,0.902]
select surf_pocket5, protein and id [15,277,279,280,324,164,21,22,8,162,163,171,173,175,166,168,169,198,23,326,327,329,284,298,299,302,323,348,615,349,301] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.286,0.278,0.702]
select surf_pocket6, protein and id [1854,1855,1813,5973,6072,6082,6078,5974,1825,1827,1861,1904,1829,1920,5610,5612,5604,1898,5625,5627,6089,1923,1916,1823,1819,1820,1689,5334,1683,5613,5614,5615,1704,5333,5650,5651,5652,6073,5616,5554,5621,5622,5623,5624,5640,1706,5312,5984,6066,6067,6068,6069,1703,1147,1894,1895] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.416,0.361,0.902]
select surf_pocket7, protein and id [6413,6414,6416,6417,6832,6833,6834,6440,6443,6787,6802,6803,6439,6415,6626,6564,6565,6646,6647,6788,7001,7002,6846,6866,6867,6869,6868,6830,6831,6839] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.357,0.278,0.702]
select surf_pocket8, protein and id [3111,8588,8559,9518,9520,8560,7246,7273,7274,7275,3114,3116,9528,3132,6719,6730,6731,6735,6737,6738,6739,8525,8526,8527,9551,9552,9553,9554,7247,8599,8600] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.506,0.361,0.902]
select surf_pocket9, protein and id [5835,5869,7121,7135,4068,4065,4066,5830,5832,5867,5821,5858,5859,5860,5900,7123,5868,5897,4073,4332,4333,4334,4335,4355,5836,4368,4369,7143,1168,1169,1166,1167,4358,5823,4075,4071,4072,4076,4064,4080] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.427,0.278,0.702]
select surf_pocket10, protein and id [8176,8177,8360,8363,8361,8365,3658,3649,8168,8170,3655,8165,8298,8351,8354,8356,8287,8296,8297,8398,8372,8337,8339,8341,8399,8338,8335,3684,3646,8189,8206,8215,8217,8158,8161,8172,8175] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.596,0.361,0.902]
select surf_pocket11, protein and id [839,842,3203,3207,3208,856,857,3050,854,2960,2961,2971,848,849,3038,2962,3009,3011,3049,3051,2935,2947,2931,3200,3201,2926,2927,2928,858,4468,4480,3195] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.498,0.278,0.702]
select surf_pocket12, protein and id [1113,2018,4964,4966,4967,2017,2019,5264,5276,5266,5267,5263,5265,4929,4933,4936,4624,4625,5281,5282,5283,5343,1124,5340,2021,2024,2026,4914,1013,1075,1102,1104,1076,1077,4925,4927,4918,4921,2036,4928,2046,2047] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.686,0.361,0.902]
select surf_pocket13, protein and id [753,754,752,5009,5041,5038,4704,4732,6011,5065,5066,6017,6039,5704,5007,5029,4750,4752,4753,4756,4727,4762,6020,6023,6024] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.569,0.278,0.702]
select surf_pocket14, protein and id [2493,2459,7820,2426,2427,2524,8031,3146,3147,3148,7823,7824,7829,2515,2516,3141,3150,3140,3171,8014,8013,8033,8048,7807,7818,7834,3154,3155] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.776,0.361,0.902]
select surf_pocket15, protein and id [5852,5888,5851,5853,1845,5861,5889,5890,5891,1875,1844,5942,5952,1885,1874,1851,1877,1817,1854,1855,1813,1850,5963,5823,5824,5825,1818,5968,5970,5971,1161,1162,1163] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.639,0.278,0.702]
select surf_pocket16, protein and id [3865,4153,3864,3866,3862,7288,7290,7292,7286,7287,7289,3609,4115,3600,4164,8039,8040,8041,3676,8045,2484,3604,3605,3606,3599,3614,3632] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.867,0.361,0.902]
select surf_pocket17, protein and id [4800,800,802,759,760,762,8727,8725,8724,8761,787,788,789,790,791,4808,4811,4801,4802,3222,786,3221,4751,4752,4753,4754] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.690]
select surf_pocket18, protein and id [7545,7546,7547,7564,7566,7544,6844,6846,6845,6816,6817,6819,6917,7577,7578,7568,6971,7580,6924,6916,6799] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.843]
select surf_pocket19, protein and id [3584,3585,3620,3555,3562,3621,8083,3640,8081,3639,3624,7908,7912,7981,3666,3665,3667,3532,3619,3626,7923,7924,7911] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.620]
select surf_pocket20, protein and id [593,597,599,347,596,578,616,126,127,128,70,72,152,6,7,8,31,163,37,44,47,49,157,158,513,583,42,609] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.753]
select surf_pocket21, protein and id [2476,2478,3170,3171,3180,7269,7270,3179,3123,4145,4152,4153,7282,7286,7289,7277,7280] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.549]
select surf_pocket22, protein and id [6019,6026,6028,6029,6033,4765,5742,4736,4737,4743,4738,4772,8667,8629,4746,4773,6006,6007,5722,5726,5739,5740,7232,7233,7234,7228] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.663]
select surf_pocket23, protein and id [8918,9123,9125,9126,35,9127,9150,9151,9153,9154,8916,8992,8994,19,8987,8988,8917,243,9117,9116,9090,245,9020,8927,9160,9190] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.478]
select surf_pocket24, protein and id [4980,712,713,714,4953,5018,490,492,5019,734,736,737,731,732,733,735,703,523,464,467] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.573]
select surf_pocket25, protein and id [5341,5342,5568,1696,1717,1954,1955,5340,5562,5563,5343,1697,2016,1991,1953,1984,1939,1664,1665] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.408]
select surf_pocket26, protein and id [1854,1855,1813,5973,5963,6082,5968,5971,1825,1861,1898,5627,6089,6091,1823,1820,6068,1885,1883,6589] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.482]
select surf_pocket27, protein and id [134,135,302,100,101,102,133,106,107,346,348,322,301,441,450,451,104,455,457] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.337]
select surf_pocket28, protein and id [7970,8235,7643,7696,7886,8267,7694] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.388]
select surf_pocket29, protein and id [4463,4464,4503,4506,4182,4497,4481,4185,4186,2988,2989,4483,4184] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.290,0.278]
select surf_pocket30, protein and id [8856,43,42,8884,8917,27,609,9153,8893,9189,9190] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.420,0.361]
select surf_pocket31, protein and id [5173,5174,5137,5138,5141,5112,5081,5113,5515,5431,5433,5412,5423,5493] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.361,0.278]
select surf_pocket32, protein and id [7281,7298,7299,7307,7308,6730,6731,7300,9552,9553,9554,3123,7274,3116,3125,3129,3132,7760] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.510,0.361]
select surf_pocket33, protein and id [9268,9269,9246,9245,8824,9247,8796,8798,8800,571,572,573,574] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.431,0.278]
select surf_pocket34, protein and id [778,781,782,810,406,408,407,427,693,691,692,694,666,668,412,775] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.600,0.361]
select surf_pocket35, protein and id [5174,5371,5081,5515] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.502,0.278]
select surf_pocket36, protein and id [2252,3311,3003,2233,2235,2727,3345,2239,3010,2943,3008,3308,3315,3319] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.690,0.361]
select surf_pocket37, protein and id [4709,4737,4738,4746,4408,4409,4707,4710,4713,6007,4385,5739,5740,4382,4419] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.573,0.278]
select surf_pocket38, protein and id [586,8858,8860,43,40,42,9211,9212,9213,9210,9177,9180,609,596,578,56,44,47] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.780,0.361]
select surf_pocket39, protein and id [7794,9551,9552,9553,9554,9588,9589,9591,6743,7756,6730,6732,6740,6742,7790,7757,7759,7760,7761,9590,9626,7755,9628] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.643,0.278]
select surf_pocket40, protein and id [6052,5682,5514,5536,5057,5665] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.871,0.361]
select surf_pocket41, protein and id [3950,3949,3918,3921,3920,3952,3953,3956,3983,2752,2746,3392,2188,2191] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.686,0.702,0.278]
select surf_pocket42, protein and id [1992,1966,2001,2003,1084,1085,1086,1062,1118,1648,1735,1736,1737,1624] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.835,0.902,0.361]
select surf_pocket43, protein and id [7990,8292,8341,8430] 
set surface_color,  pcol43, surf_pocket43 
   
        
        deselect
        
        orient
        

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
        
        load "data/2IW8.pdb", protein
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
 
        load "data/2IW8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5143,5151,5158,5543,5544,5515,4562,4606,4607,4553,4550,4558,4556,4557,4559,4561,4568,5127,5130,4709,5137,4608,5102,5103,5105,5615,5616,5617,5620,5621,5623,4569,4724,4970,5101,5111,4969,4866,5107,4552,4554,5124,5126,5504,5516,5527] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [265,263,1154,147,1082,1054,1083,145,683,690,697,108,96,97,98,100,101,107,95,93,146,248,89,94,92,669,675,676,681,682,508,509,641,666,644,646,642,1155,1159,1160,1066,1162,1055,405] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [4991,4992,5001,5003,3409,3410,3411,2993,5000,5016,5017,4502,4689,4703,5095,4503,4653,3408,4995,3418,2983,2992,3386,4492,4465,4483,4462,4463,4466,561,562,564,3407,3377,3378,3379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [7602,7603,7604,7579,542,7538,7568,7570,31,7536,7540,7169,7170,192,228,7600,7567,7573,7574,7160,5024,5025,5022,5023,7572,5031,5036,530,540,2,4,557,1,23,28,41,42,531,539] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [7694,7692,7021,7691,7028,7030,7873,7871,8543,8545,5708,5709,5710,5730,5732,5670,5671,5679,5680,7725,7726,7727,7872,7756,7758,7842,7845,7852,8531,5700,5693,7035,7027,7031,7023,7039,7698,7036,7037,7038,7700,7701,7699,7332,5712,5440,5666,5667,7322,7331] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [3649,3532,1232,1234,1235,3534,3652,1239,3498,2850,2851,2853,3679,3680,4350,4352,3628,3654,3659,4338,4364,2862,3155,3499,1248,1249,1208,1209,1210,1218,1219,2859,2860,2854,2846,3145,3154,1205,1206,2844,1247,4340,3565,3533,3531,3560,3563,3508,3506,3507,3501,3505,978,979] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [2401,1461,1469,2423,1468,2232,2212,2223,2228,2229,1221,1236,1216,1241,1242,1462,1495,2406,2407,2189,2194,2191,1230,1233,2184,2185,1447,1457,1470,1471,1474,2405,2408,1227,2418,2420,2412,2462,1228] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [8040,7976,7977,7966,7967,7083,7917,7921,7923,7927,7684,7919,7968,7944,7939,7667,8018,7672,7678,8019,7058,7677,7062,6741,7979,6708,7996,7092,7085,7086,7089,6750,7120,7982,6879,7945,6732,6736,6737,6733,6751] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [5922,5923,5702,5703,5908,6593,6597,6600,6431,6432,6435,6602,5929,5935,6426,5918,5907,6391,6398,6401,6415,6392,5684,5688,5689,5691,6610,6611,6613,6614,5694,5697,5678,5930,5677,6639] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [2627,2647,5572,5575,2630,2629,2999,5557,5558,5560,5601,5132,5133,5117,5120,5139,5140,5141,5109,5112,5115,5602,4977,4690,5585,4942,4944,4945] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [3474,3479,2884,3485,2882,2881,3734,3728,2912,2908,2909,2943,2915,3803,3786,3774,3847,3773,3789,3724,3820,3825,3826,2573,2574,2531,2556,3491,3726,3723] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [516,6804,2349,6824,7175,7176,229,484,483,1141,1124,1099,1111,653,655,654,651,659] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [1386,2185,2186,2187,1828,2179,1423,1436,1437,1440,1446,1872,1871,1870,1866,1844,1826,1837,1842,1843] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [2146,2152,2156,2157,2158,2161,2160,2123,2159,1976,2168,1766,1974,1975,1817,1818,1819,2145,2147,2004,2006] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [4818,4833,5638,4815,4821,4825,4826,7367,5742,5640,5641,5644,5645,5642,4853,4855,5740,7336,7345,7368] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [3190,3191,3168,1281,1276,3130,3159,392,1189,394,1279,354,357,360,364,365,3132,372,1177,1179,117,1184,337,338,3134] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [3538,3583,3571,3573,3582,3584,3570,2432,2434,4032,2405,2433,2436,2437,4029,3994,4017,3995,4024,4025,4028,2445,2442,2443,2406] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [6615,6616,6619,8225,8187,7776,8221,8222,6609,7736,5688,6610,6612,7766,7774,7763,7731,7775,7777,7764] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [6695,6696,6665,6661,6663,5432,5400,5398,5431,5396,4909,4923,4926,5422,5421,6631,6656,6627,6628,6657,5420] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [2519,2518,2481,2479,970,971,935,937,2488,969,2484,2486,465,939,448] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [3447,3449,3450,3451,3452,3453,450,2558,3461,3463,2952,3464,2527,453] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [7536,7540,7568,7532,7529,7530,7531,7567,4813,7569,5039,4771,4772,4776,4777,4765,4804] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [6299,6236,6223,6321,6322,6327,6328,6331,6231,6297,6323,6242,6356,6086,6324,6326] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [5803,5805,6029,5816,5817,5520,5172,5174,6078,6074] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [3740,3739,3741,3742,4241,4242,4243,4231,4173,4276,3720] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [8366,7913,8435,7933,7943,8422,8423,8424,8460,8361,8363] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [218,7190,7205,7206,7207,7188,7203,7204,7212,7215] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [2630,2631,2977,4979,2628,2627,2969,2983,2641,2994,2999,4995,4977] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [7643,7645,7639,7640,7642,6725,6724,7644,4911,6704,6727,6735,4914] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [4380,4394,4278,4177,4180,4182,4213,4207,3690,3691] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [2583,4929,4979,4928,2984,4983,4930,4978] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        

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
        
        load "data/7PG6.pdb", protein
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
 
        load "data/7PG6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5202,5201,4862,4871,4833,4834,4835,4836,6445,6446,6595,6413,6414,6417,6387,6388,6385,4873,6418,4838,4840,4844,1374,2195,5119,5120,6444,6588,5913,6608,6611,6620,6618,5154,5156,5151,5152,5153,5155,5918,5920,5919,5921,5118,6605,6604,5909] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9633,9636,9637,10334,10335,10336,10337,3677,3702,3674,2698,2714,10344,10345,3690,9646,9612,9613,9608,9610,5261,5265,5266,9660,9662,9663,10312,10309,9697,9698,9668,9669,9635,9671,9643,3532,3533,3534,3662,3709,3528,3529,3516,9604,10373,10374,3535,3330,3339,10410,3331,3708,2707,2710,9575,3538,9573,5259,3524,3526,5276] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [5258,5259,5260,3351,5275,3524,3637,5274,5276,3543,3549,3636,3611,3610,3625,3628,7984,7987,3546,3547,3622,4925,3631,7944,6362,7945,7946,4928,7943,7934,7935,7936,7974,7928,3531,3533,3534] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [6679,6680,6598,6315,7303,6316,6317,6691,6697,6700,6745,7220,7221,6769,6770,6684,6695,6061,6126,6297,6296,6103,6104,6072,6073,6726,7300,7302,7304,6597,6599,6600,6601,6602,6379,6380,6381,7305,7310,7308,7284] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [3584,3588,8619,3585,3586,8607,8608,8620,3596,3600,3617,3618,2914,2848,2849,3616,8801,8820,8614,8603,8613,2883,2884,2816,7994,3587,3624,7989,7992,8001,8003,7993,8012,2866,3626,4628,2867,2868,8836,8576,7982] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [3377,3378,3484,3405,3457,3408,3645,3646,3367,3496,3374,3372,3483,3649,3652,3653,1067,1068,1069,1070,3488,4978,4980,3641,4979,4973,1082,1084,1085,1086,3417,4962,3381,4955,3642,3643,5294,5296,5297] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [5513,5514,5515,5516,5517,5467,5481,5847,5470,671,5852,5547,731,5816,5844,5512,727,728,729,748,964,966,967,968,965,962,963,938,931,933,631,632,693,694,695,696,692,934,937,942] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [7986,3552,3560,3562,9504,9472,9505,10454,10456,10452,3559,3561,3563,3566,3576,3579,10464,3558,9535,9544,9545,9533,3556,7403,7402,7404,7408,7410,7400,7959,7958,10430,10457,10458,10451,10431,7401,10488,10490] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5539,5564,6659,5563,983,5218,5219,5537,5538,985,36,598,5527,6635,6633,5191,5223,6631,6637,6640,5214,5247,5249,5239] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [5111,5112,5451,5453,1340,1350,1352,2410,2411,2404,5892,5925,5424,5891,5452,5454,2391,5952,5426,5410,5416,1338,1348,5926,1351,2071,2074,2395,2392] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [8807,8809,8811,8812,8844,9177,8816,8828,8814,2888,2894,4386,4384,4385,9172,9170,9171,3089,3085,2877,2875,8845,2876,4363,4362,4364] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [2324,2015,2017,2016,1669,1671,1673,1583,1581,1582,1837,1838,1840,1561,2323,1802,1804,1805,1806,1803,1810] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [2228,2231,2261,2262,2254,2232,2218,2227,2253,6508,6509,6512,1391,6472,6471,6473,6572,6480] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [6236,6245,2275,5943,6247,2083,2202,2066,2080,5921,2196,2197,2200,2231,2232,1375] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [8062,8109,8071,8073,8705,8722,8554,4101,8703,8706,8707,8534,8723,8517,4082,4098,8032,8555,8066,8072,8060,8542,8536,8540,8530,8531,8057] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [6327,5620,5629,5615,5616,5619,5563,5593,5594,5595,6324,6325,5626,9680,37,22,6643,6652] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [8543,8544,8851,8852,8832,8833,8836,8578,8579,7998,7999,8001,8003,8011,4629,4080,4086,4075,4081,4082,4090,4341] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [2877,4151,4152,4338,4342,2873,2874,2875,8845,2876,8544,4105,8852,8832,4628,4629,2867,2869,4341,4106,4090,4102,4075,4086,8826,8825,8827] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [9604,9605,10373,10401,10402,3529,10409,3323,10433,3535,3330,3538,9573] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [8944,8955,8941,8958,8951,9143,9133,9140,8972,8984,8988,8989,8997,8999,8974,8975,9081] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [4984,3412,3434,4952,4968,4970,4990,4993,4997,4950,5002,5003,4660,4661,4662,3155,3156] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [8072,7445,7448,7464,7441,7444,8031,8032,8034,8035,8033,8553,8069,7361,7362,7363,8040,7397,8554,8073,8552,8551,8535,8561] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [9686,23,25,20,67,70,10245,9688] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [4625,2854,2857,2859,4371,4373,4374,4376,4342,4678,4637] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [10095,10097,10065,10062,9939,9901,10069,9938,10099,10100,9869] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
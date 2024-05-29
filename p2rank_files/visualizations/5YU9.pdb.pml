
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
        
        load "data/5YU9.pdb", protein
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
 
        load "data/5YU9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1747,1826,1827,1727,1728,1729,1744,1724,8131,8867,8869,1858,1859,9088,9089,9090,9097,8880,4261,4262,4511,4265,1750,1754,1755,1757,1801,1824,1834,1836,4289,1753,1731,1732,1894,1895,4502,4503,4504,8138,8130,8135,9504,8125,8126,8129,8132,8882,8883,8133,9454,4510,1712,1714,9459,9460,9461,9444,9449,9456,4560,4561,1716,1719,1720,4474,4475,4473,4468,8094,8097,8098,8876,8099,8100,8101,4440,4323,4324,4477,4444,8901,8902,8929,4441,4442,8899,8894,8870,8887,8888,8889,8893,4322,4403,4404,4298,4300,4476,4478,1762] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [8427,8531,8525,8530,8532,8523,8522,8524,7460,7463,7656,7457,7498,7499,7500,7655,7881,7447,7448,7454,7455,7467,7479,7481,8391,7464,7976,7901,7977,7979,7816,7895,7896,7899,7654,7642,7648,7652,7819,8535,4434,8414,4432,4433,8044,8048,8049,8413,8443,8417,8416,8073,8068,8070,8074,8442,8017,8041,8025,7637,7638,7639,8014,8000,7995,7994,7449,7451,7452,7640,8012,8112,8032] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [5944,5946,5948,5960,5041,5043,5209,6063,6064,5939,5975,5976,5566,5542,5543,5550,5539,5207,5208,6085,5205,5502,5504,5501,5192,5520,5525,5519,5190,5191,5009,5010,5016,5017,5019,5061,5062,5011,5013,5014,5537,5195,5201,5193,5022,5025,5026,5029,6058,5961,6055,6057,6056,6065,5344,6068,5406,5420,5421,5424,5426,5412,5569,5573,5574,5598,6124,6139,6140,5916,5033] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [4314,4315,821,4170,818,2158,1770,1779,2133,814,812,1558,1570,1549,1555,1557,1564,1568,811,1571,809,834,4183,4200,4312,4351,2152,2154,2156,4180,4184,4185,4187,4188,4255,4257,4290,1771,1772,4292,1560,4280,4282,4283,4213,1580,1581] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [677,678,360,347,683,345,346,1205,564,578,727,1125,1126,1206,700,701,702,724,697,356,584,659,660,579,582,1099,1096,1097,363,364,1110,1213,1214,1207,1208,662,502,1218,499,153,154,155,159,204,205,206,157,695,160,161,162,163,165,166,169,192,732,756,170,182,185,178,189] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [3565,3661,3551,3552,2607,2608,3186,3187,3211,3669,3668,3039,3117,2820,2821,2822,2818,2643,2655,2656,2657,2814,3580,3182,3581,3179,3152,3156,3133,3132,3138,2603,3155,2605,2803,2805,2804,3150,2614,2615,2621,3019,3020,3660,3662,3663,3670,3033,2954,3034,3037,3673,2957,3025] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [4235,3266,3267,4018,4020,4226,6717,4604,6754,6755,3276,4603,4227,6694,6655,6692,3268,3269,6583,6568,6604,6611,6678,6680,6681,6718,6585,6586] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [7987,7633,7905,7907,7909,7906,7356,7396,7357,7335,7336,7337,7992,7998,7991,7617,7538,7539,7541,7543,7544,7545,7546,7624] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [2783,2790,2695,2696,2698,2700,2701,2702,2703,3129,3130,3136,3125,2491,2492,2512,2513,2550,2799,2800,3044,3045,3047] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [8417,8418,8596,8416,4434,8414,8898,8899,8626,8627,8628,8848,8900,4445,8101,8065,8615,8613,8593,8607,8592] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [341,244,245,247,250,252,327,670,588,590,592,246,251,64,65,43,44,45,589,681,674,675,102] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [5172,5177,5186,5100,5516,5523,5517,5512,5101,5103,5106,5108,4900,5105,5107,4898,4918,4919,5434,5432,4897] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [2991,2997,2998,4818,7437,7434,7436,7441,2979,3405,4819,3399,3401,3402,3425,4431,3428,3431,3433,3435,3463,7442,7443,7447,7448,3403,4460,4461] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [3976,4010,4228,4008,4031,6655,6690,6692,4030,6654,6688,4227,6694,3999,4005,3267,4007,4018,4209,4204,6662] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [5813,6864,147,140,142,143,5850,5792,5788,5815,5818,5393,5378,5385,5384,7210,5820,5822,5789,5790] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [1805,2018,2019,2020,2058,2013,2016,2017,2045,2015,1809,2047,2049,9045,1806,2118,2010,9042,9047,9035,9034,9032,9068,9072,1868,9075,9065,9144,9062,9145] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [8180,8182,8184,8185,8181,8183,8117,8153,8082,8084,8119,8471,8472,8482,8143,9508,8144] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [3465,7510,7418,7419,7508,7511,7664,7665,2967,2968,2966,3470,3471,3472,2443,3467,7444,7416,7438,2980] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [826,802,866,868,836,839,863,864,2203,767,804,1155,865,867,1154,1165,766,801] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [5760,5761,5762,5731,5771,5768,7214,7211,5733,5735,6010,5793] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [6976,6977,6961,6663,6975,6964,4183,4203,4205,822,6906,4175,4176,4177,4179,4178,4079] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [6451,6442,6169,6170,6124,6125,6126,6135,6138,5915,5590,5940,6390,5929,5942,5944] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [5705,5710,5709,6004,6005,6015,5608,5646,5562,5609,5647,5674,5642,5643,5644,5668,5671,5678,5681,5706,5708,7055,7057,7059,5679] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [5526,5528,5530,5415,5416,5434,5435,5527,5409,5412,5413,7196,6041,5521,5545,5529,5992,7197,5399,5522,5371,5359,5364,5369,7198,7194,5374] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [9053,9058,9200,9197,9046,9049,9196,8919,9006,9007,9010,8610,8609,8602,8633,8975,9009,8778,8781,9202,8812,9059] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [2392,2391,2366,2379,2385,2361,2253,2293,2295,1162,1164,1148,1161,1170,2277,2251,2291,2331] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [3646,3025,3026,3047,3048,3142,2987,4795,2972,2977,2982,2984,3012,3028,3029,4793,3597,4791,3022,3141,3143] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [1466,1469,1880,1691,1607,1608,1884,1882] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
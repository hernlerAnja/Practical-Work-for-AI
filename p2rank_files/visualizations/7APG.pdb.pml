
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
        
        load "data/7APG.pdb", protein
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
 
        load "data/7APG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2407,2409,2359,2361,2370,2360,2403,2395,2396,2398,2548,2549,2550,2696,3430,3454,3444,3446,3452,2695,2393,2382,2386,2567,2615,2653,2616,2617,2357,2358,2351,2352,2353,2355,2408,2356,3326,3329,3431,3424,3425,3428,3429,3328,3423,3438,2961,3348,3347,2943,2953,2954,2957,2935,2534,2932,2914,2910,2909,2729,2728,2363,2371,2374,2389,2962,3317] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7462,7463,7466,7470,7865,7444,7452,6873,6872,7864,6868,6869,6870,6874,6875,6924,6925,6926,7423,7441,7051,7419,7471,7834,7846,7941,7942,7945,7946,7948,7947,7955,7065,7205,7418,7238] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [329,139,140,141,188,189,190,132,133,134,136,137,138,1213,1206,1207,1210,1211,1212,1214,475,688,689,315,711,714,693,722,1129,1205,580,1099,743,733,736,741,1130,1111] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [5599,5568,5212,5161,5160,5165,5598,4802,4800,4661,4607,4608,4605,5205,4604,5208,5213,4786,5183,5186,4659,4660,4603,4609,4610,4980,4981,5689,5675,5676,5679,5680,5681,4948] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [5736,5723,5718,5719,5742,5789,5792,5803,2171,933,962,963,964,965,961,2137,4935,984,986,4936,4937,5724,4973,5709,5712,5720,5716,5717,2138,2140,2145,2146,5725,5726,5737,5740,565,5741,5758,5765,5766,5748,908,939,5743,564,554] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [1213,1210,1211,1212,331,1226,140,141,190,1077,1102,1103,1234,1235,1236,163,167,170,144,151,152,155,177,174,430,431,432,436,1228,330,348,437,440,474,176,178,435,397,398,396,1101] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [7812,7067,7946,7948,7947,7961,7963,7066,7204,6899,6906,6903,7133,7134,7084,7132,7166,7167,7170,8107,8118,8110,7838,7969,7971,7165,7162,7970,6876,6878,6912,6913,6926,6910,6880,6881,6887,6888,6891] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [4456,4457,8437,8659,8660,8655,8658,2041,2051,8661,8665,8376,8385,8387,2077,2019,2044,4467,1889,2009,2010,1874,1891,1892,8414,8416,1981,2005,2006,2007,2029,1979,1982,1983,8431,7561] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [4801,4802,4819,4661,4645,4646,4647,4648,4623,4622,4638,4641,4649,4650,4615,5697,5680,5681,5695,5682,4947,4908,4867,4905,4909,4910,4913,4865,4868,4869] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [8507,8627,8632,8633,8634,8550,8130,8133,8575,8767,8609,8610,8617,8298,8584,8622,8295,8765,8155,8573,8611,8447,8448,8131] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [1895,1900,1852,1890,1877,1878,1818,1851,1819,1395,1420,1560,1563,1387,2035,2033,1902,1712,1398,1713,1901,1393,1394,1396,1772,1841,1843] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [4475,4476,4965,4990,2127,4923,4956,4925,5127,4955,2084,2085,2094,2097,2068,2105,4927,2077,4451,4468,4465,5096,5111,5113,5095,5126,2155,2018] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [2104,4927,4928,1518,1519,4889,4891,4893,4852,4853,4880,2085,2100,1527,1530,2101,1306,1033,1515,1517,2113,973,981,1008,1009,1010,1011,1514,1551,2106,2110,2117,2122] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [6338,6372,6397,6398,6242,6363,5889,6371,6339,6029,6032,6410,6555,6553,6406,6415,6181,6422,6420,6421,6241,6206,5863,5856,5862,5867,5864] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [4115,4117,3991,4067,3930,4110,4100,4105,4033,4066,3616,3613,3614,4116,3638,3778,3781,3931] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [1415,1414,1715,1381,1382,1672,1671,1707,1708,1716,1720,1721,1399,1100,759,761,1629,1102,1104] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1914,1974,1976,2011,1898,1904,1910,1977,2009,8414,8415,8416,7521,7559,7561,7557] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [8364,8442,8450,8149,8150,7835,7837,8443,8456,8451,8404,8439,8406,8407,7485,7486] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [8541,8567,8601,8602,5083,4766,4507,4509,4703,4705,8504,8510,4490,5081] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5571,5569,6190,5228,5227,6138,6141,6140,6173,6176,6177,6152,6156,6184,6098,5884,5883,6185] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [3745,3748,3733,3735,4311,4316,4319,4320,3732,3191,3769,4321,4328,3736,3737,4336,3226,3199,3227,3228,3229,3197,4337] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [8832,8837,8817,8833,8836,8262,8265,8253,8254,8845,8249,8250,8286,8252,7708,7716,7743,7744,7746,8849,8854,8842,8838] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [6642,6625,6637,6621,6624,6626,6020,5986,5984,5983,5480,5988,5477,5478,5450,6633,6630,5999] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        
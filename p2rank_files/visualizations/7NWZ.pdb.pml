
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
        
        load "data/7NWZ.pdb", protein
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
 
        load "data/7NWZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5633,9193,5642,5651,7177,7178,9194,9192,7813,7814,7815,7836,6975,6977,5362,6976,5433,5434,5416,5611,5612,5360,9182,9185,9170,9175,9188,9189,9206,9637,9638,5391,7164,7165,7167,7148,7156,5388,7149,9204,7150,5401,5404,5405,5406,5407,9205,9207,7132,9605,9607,5363,5393,5408,5398,7266] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [6972,6979,6968,6985,7565,9179,7001,7002,7003,4945,7566,7591,7610,4947,7004,5610,5611,5612,5608,6982,6986,6989,6991,4963,4964,4946,4953,4961,4962,7594,6995,7563,7845,7814,7815,7619,7836,5633,4974,4975,4968,7854,9178,9180,7609] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [4790,1261,2754,2756,2762,2765,2775,2776,1026,4783,3412,4780,4787,4791,4792,1023,973,970,972,998,1001,1243,1252,1043,1044,2586,2587,1016,2746,2748,2747,2749,1017,364,4802,4803,4804,4769,4773,4768,4786,4796,1003,1004,1010,1018] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [2670,7199,7197,2664,2666,2667,2669,2671,8813,45,1088,2524,8697,8699,8815,8799,8798,7188,38,42,44,2523,2525,2526,71,68,69,70,74,73,1087,2661,911,912,78,81,1075,75,2646] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [35,254,255,214,252,5672,209,210,212,5673,5678,5677,34,5670,5671,36,241,243,6537,6571,6557,6558,6559,6570,6549,6550,6556,6539,6540,201,203,5688,172,173] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [556,2605,563,2611,2612,2614,555,557,3164,3192,3189,3163,3217,3434,4777,2582,2589,2595,2592,2596,2599,2601,1221,3443,3452,571,572,574,3190,3191,674] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [409,411,381,4749,4750,418,420,4752,4754,3207,3208,3204,3206,3941,3942,3226,3221,3897,3225,3224,3959,3954,3964,3967,3953,441,442,379,383,384,3233,3235,3212] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [5405,5406,6144,7132,7129,5393,5388,7149,7150,5398,5399,7266,7128,7104,7302,7097,7105,7301,7283,7274,7276] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [5756,5757,126,133,152,153,143,144,147,148,5772,5891,134,5689,174,5688,6568] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [7608,5088,5089,4906,4907,4929,7602,8347,4945,5073,7591,7610,4926,4947,4925,5071,5094,5098,5063,7601,4946,5064] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [1015,1754,1003,1004,1010,2872,1009,2899,2900,1008,2864,1738,2726,2727,2730,1016,2748,2874,2747,998] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [9387,9410,9412,9404,9475,9476,9478,9477,9339,9371,9388,9376,9335,9517,9518,9304,9306,9340,9343,9344,9677,9408] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [1034,1035,1768,1021,1030,1015,1751,1770,1014,1706,1798,2559,2561,1750,1763,1776,322,333,1017,1042,1044,1766,1767,1769,1771,1772,309,317] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [9722,9742,9734,9736,9735,9133,9467,9465,9138,9147,9703,9721,9132] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [9653,9657,9658,9691,9683,9685,7608,9660,9154,8364,8365,9692,8362,9151,7628,7607,7633,7634,7636,7637] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [9180,9660,9629,7609,9178,7616,7604,7607,7611,7636,7637,6968,6985,9179,7002,7003,7566,7610,7004,6982] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [8718,8506,8508,8509,8711,8866,8968,8504,8716,8717,8613,8967,8970,8059,8069,8958,8723,8724,8726,8064,8065,8066] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [8698,8631,8632,8633,8679,8681,2675,8680,2670,2673,2671,2672,8699,8660,893] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [4929,9629,4928,7004,5330,9361,9362,9365,5316,5331,9351,9357,9359,7016,7017,7019,7036] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [2611,2612,2613,2614,557,3164,4778,3205,4777,2582,2595,539,2578,353,355,386] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [7066,7050,6913,6915,6916,5302,5301,7040,7037,7034,7036,7032,9352,9354,9349] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [5680,243,244,5681,97,403,113,102,110,139,114,140,202] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [2838,1336,1345,1337,1255,1253,985,1000,1261,2765,2771,2776,2767,2774,1316,1256,1259] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [1647,1948,1950,1639,1868,2318,1844,2320,1846,1847] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [1913,1916,2375,2377,2374,1911,2118,2123,2124,2125,1473,2130,2131,2020] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [6515,6508,6520,6663,6303,6305,6306,6408,6410,6514,6521,6765,6764,5856,6767,5863,5861] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [77,99,516,517,2628,2646,513,515,2629,2644,87,2642,2645,514,512,100] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [7119,7122,7497,9246,9248,9249,7092,7078,7088,7458,7459,7465,7498] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [8499,8500,8620,8482,8579,8562,8479,8486,8564,8568,8574,8580,8585,8591] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [1886,1889,1971,1902,1906,1907,2027,1999,1893,1975,1981,1986,1987,1992,1998] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [2707,2706,2708,308,310,301,271,4835,275,276,277,272,4856,4858] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        
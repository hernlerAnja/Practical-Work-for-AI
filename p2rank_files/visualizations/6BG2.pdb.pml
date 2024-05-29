
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
        
        load "data/6BG2.pdb", protein
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
 
        load "data/6BG2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [238,1218,1235,855,1206,1207,232,233,854,2469,2471,2454,1349,1351,1178,1350,252,254,255,1195,241,242,1323,1325,1324,1338,561,420,536,404,1317,1318,1322,402,403,275,276,277,222,2442,2444,2446,224,221,227,245,237,256,259,228,230,249,250,1315,662,829,1233,1234,1316,825,828,814,387,810,1462,1476,1208,1467,1470] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [2787,2788,2791,2795,2802,2945,2943,2944,2774,2776,2778,2779,2783,2784,2805,2823,2773,2821,2822,4990,4992,2767,2770,3718,3999,3730,3382,3381,3411,4975,2801,2796,2799,3038,3872,3874,2797,3985,3990,3993,3873,3071,3741,3729,3756,3758,3838,3840,3337,3839,4965,2928,3352,3355,3757,3701,3841,3842,3845,3846,3847,3848,3861,3092,3189,3341,3356,3357] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [8892,8975,8976,8980,8981,8982,8983,7940,8065,8066,8864,8876,8865,8866,8852,9133,7891,7893,7895,7896,7900,7901,7904,7922,7905,8853,8869,7939,8049,8468,7938,8064,8893,8974,8973,7912,7913,7915,8198,7917,9007,9008,9009,9127,9129,8998,8836,8220,8996,7884,10131,7890,10129,8514,8543,7887,8487,10104,10106] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [1602,1604,1107,1108,1116,1118,1123,1124,1128,1129,1593,1603,1377,1380,5286,5294,5295,5297,5298,5299,5290,1391,1393,5311,5292,1396,1397,1398,1399,5334,1386,1389,1383,1384,1385,5853,1403,5850,5840,2142,1083,1115,1119,1109,2120,5464,2066,2104,5465,5466,2102,2112,2108,2107,2060,1595,2063,2100,2136,2140,2126,2132,2127,2143,2133,5324,5330,5320,5325,5327,5331,1417,1414,1416,7598,1596,2067,5333] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [5927,5942,6431,5415,5545,5414,5367,5392,5416,5373,5393,5394,6347,6348,6430,5964,5965,5966,5968,5967,5985,6321,5390,5547,6436,6437,6438,5364,7555,7557,5361,5938,5941,7558,5923,5525,5943,5776,5775] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [3266,3289,3291,3292,5025,3279,5038,5009,5011,5012,5013,2698,3308,3310,2934,2936,2696,2699,2737,2739,2717,2733,2718,2846,2695,2952,2953,2740,3312] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [411,762,781,783,785,393,395,412,286,192,194,300,149,172,171,152,739,150,153,764,765] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [5390,5547,5678,6439,6452,5388,6437,6438,5625,5589,5615,5645,5545,5562,5563,5387,5591,5592,5596,5597,5588,5590,5655] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [8057,7815,7818,8442,8444,8398,8421,8423,8422,8424,7813,7814,8073,8074,10151,7837,7856,7963] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [7870,7871,7872,7873,1883,2002,2005,2037,10063,10068,10073,10079,10080,1981,10120,10110,10078,7861,1884,7877,2011,2013,2036,2014,2035] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [2155,2156,2014,2095,2178,2182,2191,2196,2198,2188,2180,2153,2115,10046,10072,10073,10074,10086,10087] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [8531,8869,9134,9149,9146,9147,9148,9150,9159,9365,9404,9405,8534] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [4015,4000,4012,4014,4016,3399,3733,3734,4023,4025,4233,4232,4273] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [8549,8551,8577,8550,8545,8574,8575,10091,10092,10093,10094,8501,1955,1954,1962,8576,2195,2229,2230,1961,1963,2196,2197] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [1477,1492,1202,1502,1711,1191,1210,1211,872,1489,1751,1752,1712,1491,1493] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [8629,8654,9905,8661,8663,9907,9982,9983,9984,9898,9910,9988,10003,8630] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [5506,5516,5518,5805,5806,5804,5225,5257,5243,5245,5256,5222,5502,5498,5499] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [7917,9007,9009,9124,9127,7916,7918,9129,9141,9110,9119,9122,8166,9133] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6455,6292,6310,6438,6464,6439,6452,6453,6460,6461,6462,6463,6465] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [2801,3021,3038,3062,3976,3985,3988,3063,3028,5207,3965,5210,5235,5212,3029,5205,5206,5213] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [996,2241,972,2243,1004,2328,2339,2345,2234,2246,997,973,2323,2322,2324] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [6086,7440,7434,7435,7455,7451,7457,7346,7351,6109,6110,7344,6085,6119,7353,6117] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [3522,3497,3498,3499,4766,4768,4864,4843,4844,4849,4866,4860,4861,3527,3529,4761,4759] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6194,6196,7242,7246,7248,6711,6221,6222,7207,7214,6197,7233,7232,7238,7239] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [5491,6370,6371,6372,6374,5933,5506,5929,5936,5508,5950,7492] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
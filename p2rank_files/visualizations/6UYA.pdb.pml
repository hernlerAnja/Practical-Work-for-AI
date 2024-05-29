
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
        
        load "data/6UYA.pdb", protein
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
 
        load "data/6UYA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2636,2637,2638,2607,2631,2632,2635,2602,2630,6467,6473,2953,3055,3056,5449,5450,2952,5425,5428,6474,6475,6476,5445,5448,5436,5438,2288,2290,2292,2613,6769,2616,6488,6489,6767,6770,6772,6507,6508,6761,6768,3510,3511,3512,3064,3081,3082,3509,6466,6468,877,885,892,6465,883,878,6454,6461,789,2594,2595,2596,193,218,199,201,212,214,2593,207,2603,312,313,314,327,773,775,776,790,2581,311,194,197,226,132,135,225,325,117,2580,3066,2307,2309,3067,2579,2376,2493,2459,2460,2462,2464,2485,366,2466,2468,2479,2480,2481,2492,2391,2392,2394,329,328,3060,3076,3057,2287,2950,2949,3080,2936,5465,3549,3550,2933,5424,5429,5461,5417,5452,5489,5513,3518,3513,5405,5407,5412,3504,3535,5748,5750,5752,3536,2898,2897,5399,5401,5408,5423,5749,5751,5350,5463,5747,5740,2889,2890,5738,2903,2904,5308] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3125,3164,3124,2504,2559,2505,2506,2511,2512,2513,2558,2560,3096,3101,3122,3488,3564,3100,3463,3046,3048,3571,2515,2517,2518,2524,3464,3471,2525,3452,3570,3572,2546,2666,2528,2707,3453,3703,3704,3710,2541,2542,3699,2529,2708,2706,2507,3067,2509,2510,3065,2650,3183,3160,2459,2460,2462,2464,2497,2466,2469,3169,3172,3080,3086,3087,3090,3092,3134,3072,3093,3073,3074,3487,3042,3043,3044,3045,3053,2581,3563,3565,3435,3702,3434,3436,3701] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [781,801,243,379,802,291,292,293,195,197,242,237,238,239,240,244,230,250,251,257,258,261,245,246,247,314,776,774,198,202,203,193,199,1203,1279,1178,1179,1186,778,783,1202,762,754,1278,1280,1281,1285,1286,1287,395,755,757,393,533,753,756,795,796,805,809,810,834,843,833,789,892,878,881,873] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7032,7033,7035,7037,7038,7637,7676,7981,7989,8081,8082,8089,8090,7180,7182,7612,7613,7982,7970,7971,7044,7045,7048,7049,7990,7061,7062,7954,7223,7224,8210,8211,8217,8208,8209,6984,7684,7027,7029,7030,7026,7078,7079,7080,7166,7565,7581,7585,7586,8005,8006,7554,7555,7557,7559,7646,7592,7598,7604,7605,7606,7608,7584,7439,7579,7577,6982] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [769,791,792,1216,1219,785,1264,1265,626,598,599,607,610,8043,8045,364,764,770,765,642,645,643,644,7786,8035,591,313,314,365,773,775,790,646,1220,1224,1217,1250,1251,614,3168,7713,8759,7719,7722,7723,8758,7712,7718,7749,7753,7754,7755,8041,8757,366,2466,2468,8764,8765,8767,360,7742,7743,7745,7782,329,361,328,7700,3176,1227,7706,7701,7702,7699,8046,8047,8738] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4774,4776,5304,5310,5390,4818,5352,5311,5314,5382,5319,5343,5318,5285,5298,5290,5292,5710,5711,5686,5694,5787,5687,5287,4817,4819,4823,4824,4825,4870,4871,4872,4827,4829,4830,4839,4821,4822,4958,4858,5260,5261,5786,5262,5263,5264,5265,5266,5158,5054,4973,4974,5793,5794,5795,5788,5271] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3242,919,920,942,944,975,915,916,3210,3211,3240,3206,3205,3241,4255,3518,896,903,898,3515,3517,3525,3231,3233,3235,1969,1962,1955,5394,5392,939,1968,1970,3243,3230,4262,4264,951,1232,1241,1243,914,950,952,1244,800,1223,1230,789,799,1233,3508,3081,3509,899,890,892,790,3188,3189,3190,3194,3091,3527,3080,3090,3529,1228,1960,1961,3269,3267] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7576,7578,612,613,614,7593,7594,621,1233,622,1246,1250,1251,1252,7148,7151,7573,7147,1026,1027,1028,2212,7142,1024,1025,2186,2187,1048,1008,2245,2246,7115,7116,7152,7153,1232,1237,973,974,997,999,7136,8027,8028,8029,603,604,605,1055,7567,7572,8030,8031,1085,1086,1084,7702,7592,7602,8047,7701,7690,7693,7695,976,978] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3292,4540,2912,3293,3311,3312,3313,2903,2904,2905,5284,5298,5299,5300,5308,5734,2895,2896,3340,3342,3370,5736,5732,5735,3267,3287,4506,3309,3333,3371,4939,4481,3535,3531,3536,5408,3537,2913,3243,3263,3264,3265,3517,3522,3518] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [358,359,360,8763,8779,7730,7742,7743,7744,7739,7741,7746,7771,7772,9056,9062,9064,9065,9066,9067,7808,336,345,7732,8799,8798,658,662,373,659,661,28,29,30,31,32,48,50,765] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [3953,8733,8460,4240,3146,3149,4237,7660,7661,3148,8731,8741,8742,8743,8724,7658,3961,8475,3968,8468,3946] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1151,1286,1287,272,395,274,275,1309,1411,1167,1168,1420,1413,1412,1414,1186,1187,258,261,262,273] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3961,8495,8475,8516,8517,3986,3987,3988,8468,8467,8693,8699,8704,8706,4001,4002,4005,8733,8453,8713,8701] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [1663,1671,6173,1944,1945,1946,6451,6452,6450,6165,5366,5364,5367,857,858,855] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1732,6214,6215,6217,1907,1909,6199,6198,6200,1671,1724,1723,1946,1656,1670,1678,1698,1937,1896] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [3961,4013,4014,8494,8495,8507,8474,3968,3988,8468,4022,8505,8504,3946,3960,4198,4201,4190,4196,4203] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5487,5488,5745,5515,5740,5490,5492,5759,5134,5142,5143,5516,5536,5758,5744,5754,5760] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [412,534,1299,1300,269,493,496,1151,1287,272,395,274,1308] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6173,6224,6225,6226,6452,6165,6158,6172,6200,6180,1697,1698,1712,1715,6413,6415] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        
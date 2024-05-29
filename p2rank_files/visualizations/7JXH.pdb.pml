
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
        
        load "data/7JXH.pdb", protein
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
 
        load "data/7JXH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14350,14268,14351,14269,14352,14353,14359,14239,13849,13837,13851,13854,13879,13878,13880,13882,13886,13296,13479,13815,13343,13344,13345,13492,13494,14355,14372,13326,13327,14363,13831,13832,13816,13741,13720,13722,13740,13833,13721,13738,13818,13632,13664,14364,13628,13603,13607,13660,13661,13633,13634,13626,13292,13293,13298,13299,13300,13301,13294,13297,13887,13911] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [3426,3428,2422,2569,2571,2420,2421,2895,2892,2797,2799,2909,2737,2910,2817,2818,2893,2896,2369,2370,2376,2375,2556,2373,2926,2928,2371,2374,3430,3433,3435,3330,2404,3441,3444,3448,3429,3439,3440,3449,2708,2573,2588,2684,3451,2683,2402,3257,3446,2703,2680,2705,2704,2710,3345,3427,2963,2964,2959,2988,3316,3346,2956,2957,2955,2931] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [11165,12160,12161,12162,12056,12042,11166,11137,11138,11139,12043,12158,12170,11525,12153,11524,12155,12156,12154,12071,12072,11523,11537,11183,11135,11131,11132,11690,11133,11134,11136,11634,11635,11636,11640,11658,11282,11654,11652,11657,11665,12045,11619,11621,11618,11295,11297,11182,11184,11140,11435,11543,11433,11685,11713,11672,11682,11683] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [10066,9983,9984,9207,9209,9548,10065,9530,9531,9533,9566,9194,9564,9569,9570,10078,10075,10096,10067,10068,10071,10072,10074,9211,9322,9594,9601,9602,9008,9011,9012,9009,9014,9016,9058,9059,9060,9595,9597,9954,9968,9435,9376,9453,9455,9440,9449,9450,9547,9437,9546,9346,10081,10083,9377,9344,9345,9347,10085] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [1134,1135,1216,1217,1119,1218,1219,1225,720,715,717,214,361,365,1221,363,348,347,213,681,606,698,699,684,1230,495,494,497,492,499,503,527,500,703,586,588,1233,469,471,163,161,162,167,168,169,212,166,165,746,753,748,752,1105,745] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [6746,6748,6931,7301,7284,6744,6745,6749,6751,7809,7810,7811,7802,7804,7805,7807,7174,7819,7172,7186,7334,7331,7720,7721,7307,7332,7303,7306,7338,7339,7691,7705,7803,7267,7285,7187,6750,6795,6796,6797,6944,6946,7084,7192,7268,7270,7190,6753] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [15677,15679,16509,16510,16514,16507,16508,16505,16506,15973,15971,16522,15817,16524,15875,15877,15788,15816,15895,16423,16424,16004,16006,16009,15992,15970,15664,15986,15987,15988,15477,15478,15479,15483,15484,15486,15528,15529,15530,16035,16037,16042,16066,16063,15482,15481,16034,16394,15786,15783,15758] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [5523,5136,5140,5141,4547,5493,5507,5611,5613,5108,5103,5133,5134,4550,4551,4597,4598,4599,4553,4555,4748,4750,5612,4548,5522,4975,5605,4976,5604,5606,5607,5610,5105,5091,5109,5110,5087,5609,4746,5086,4733] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [4117,11586,3909,11590,11591,7974,7961,7966,7960,7963,11332,11333,11583,8312,8318,8322,7972,8299,8267,7981,7982,8306,7995,7979,7980,8275,4116,8302,3910,8300,8301,3914,8268,8269] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [16665,16536,16398,16683,16372,16397,15501,15509,15511,15502,15506,15497,15489,15490,15494,15530,16513,16408,16514] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [7810,7811,7694,7705,7946,7833,7669,7695,7964,7965,6752,6753,6760,6761,6762,6783,6797,6947,6948,6757,6756,6764,6768,6776,6773,6778] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [5507,5611,5613,5496,5497,5498,5471,5635,5668,5686,4559,4562,4585,4563,4566,4570,4749,4750,5612,4575,4578,4580,5626] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [13783,13787,13788,13794,8593,8592,1627,1633,1637,8383,8385,1296,1297,1614,1621,1626,1584,1612,8386,8017,8387,8390,1615,1617,1310,1295,13530,13529] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [2864,2865,2871,16701,17011,17018,10545,16986,16988,17016,2607,16399,16682,16699,16714,16994,16997,17025,16700] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [7025,7050,7059,6972,7824,7826,7838,6775,6777,6772,6963,6948,6960,7083,6998] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [4039,4037,3970,4048,4014,4012,11035,11562,11564,11472,11540,11544,11017,11548] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [5087,5609,4746,4988,4989,4992,4994,4886,4915,4976,5604,5606,5607,5621,4916,4974,5070,5072,4748] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [174,1108,173,178,1109,181,1083,186,197,200,214,365,364,190,192,194,1119,1224,1225,1247] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [2409,2413,2414,15501,2431,2433,15497,16665,16683,2577,2578,2579,2584,2580,15490,15494,16663,2406] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [2664,10868,2700,10867,10869,10793,10835,10837,10833,2698,2699,10710,10711,10677,10712,10649,10686,10794,10653,10647,10865,10866,10895] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [11303,11310,11304,11305,11168,11175,11176,6764,6768,7947,7948,11306,11193,11195,6761,11105,11612,11104,11103,11596,11597,11331,11332,11333,7944,7946,11614] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [1261,1259,1262,174,178,181,13356,13336,13337,185,13307,1263,13354,13332,13500,13501,13502,13507,13513] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [377,380,465,473,415,442,193,195,1240,388,1266,386] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [15508,15510,16529,15753,15786,15787,15750,15755,15756,15760,15762,15761,15705,15703,15696,15973] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [4861,4826,4827,4762,4765,4799,5626,5628,4770,4771,4772,4574,4766,4577,4579] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [9320,9260,9261,9322,9223,9226,9039,10095,10097,9030,9033,9035,9231,9235,9227,9313,9288,10106,9041] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [2658,2620,10756,2863,10740,10749,10753,2603,17034,2864,17047] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [1884,1886,1466,1734,1604,1739,1729,1463,1695] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [12422,12243,12251,12274,12456,12845,12847,12704,12703,12563,12693,12655,12654] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [8288,7977,8182,8380,8148,8000,8289,8430,8571,8573] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
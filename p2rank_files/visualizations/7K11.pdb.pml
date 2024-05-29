
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
        
        load "data/7K11.pdb", protein
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
 
        load "data/7K11.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1124,1137,1142,1161,3273,1119,1127,1159,1128,1130,1131,1120,7235,7238,7255,7234,3256,7257,7258,7259,2864,2868,2867,2870,2878,2885,2874,1475,1477,1478,1472,1160,1448,3252,3253,3262,3263,3264,3283,3272,2875,950,938,973,974,975,1102,951,7265,939,7268,944,949,936,937,7254,2446,2447,941,940,902,942,1441,1439,1440,1442,1420,965,966,997,999,1000,900,1415,1382,1380,8867,8866,8868,8888,8889,8890,1132,1133,7227,8862,7226,3265,3602,3603] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8498,8499,8505,8517,8518,8502,8503,8504,7327,7329,8494,8496,8497,7028,7416,7421,7012,7026,7417,7027,7437,6869,7439,7486,8426,6819,6822,6826,6832,6833,8395,7089,7061,7343,7041,7044,6847,9174,9175,9176,9138,9141,9142,7049,7447,8425,7441,7328] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [6188,6189,6289,6280,6158,6160,5865,6161,6163,6164,6138,6265,5756,6251,6156,6181,6282,6215,6216,5699,5723,5693,6287,6288,5661,5663,6313,5893,5895,5866,5891,6139,6142,6141,6143,6140,5921,5902,5904,5926,5927,6100,5928,5929,6115,5725,5922,5923,5925] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [8548,8551,8568,9492,9493,8557,8547,8543,9405,9406,9469,9440,9460,9462,8302,8345,8340,8341,8343,8342,8312,8561,8621,8622,8637,8638,8643,8644,8646,8630,8346,8351,8352,9365,9339,9342,9343,9341,9373,9374,9337,8315,8317] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [9171,9172,9174,9175,9176,9181,9149,9182,8530,8594,8595,8596,9190,9185,9941,9942,9146,9194,9195,9191,8505,8504,8361,8529,8362,8383,8380,8382,8379,8381,9958,9959,9939,9957] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [8806,8748,8810,8802,8747,8769,8776,8799,8783,8809,8204,8205,8208,8200,8201,892,953,957,958,8770,930,890,8175,8177,8772,732,8173,8176] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [9060,9061,9059,9063,9020,9345,9293,9296,9106,9109,9105,9111,9113,8556,7079,7080,7081,8535,9015,8531,8536,8540,8542,9344,9022,9021] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [1509,3354,1882,1883,1885,1490,1491,1507,3353,1878,1881,1880,3328,3320,2938,2971,3173,3175,2913,2915,2946,2941,2970,3200,3201,2914,3176,3389,3142] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [8825,8827,8828,9785,9818,9819,1107,1108,1109,9820,8831,8835,8867,8857,8796,8794,8795,8890,9788,950,971,972,975,1122,1125,1082,1099,1078,1097,1098,1103,1104,1079,970,1007,1005,1006,1124,1123,1126,9817] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [864,1000,998,863,900,865,866,870,1415,837,839,841,1752,1754,1719,872,1369,1372,1378,1371,842,1346,1373,1721,999,965,966,901,1414,1412] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [2921,2922,2923,1816,1818,1851,1852,2953,1814,1815,1849,2128,2152,1843,1811,2122,2508,1875,2512,2511,2121,2130,2131] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [6898,6914,6998,6999,7001,6596,6605,7409,5552] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [7340,7093,7095,7098,7356,7357,7096,7097,7350,6603,6606,7349,7354,5234,5237,4967,4966,4995,4996,4958,4961,4964,4989,5248,5213,5211,5212,7131,7130,7133,7107,6635,6632,6613,6622] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [923,924,929,930,931,2434,2417,2430,2433,8181,8175,8176,2444,2448,2445,951,7265,932,944,948,949,8241,8808,8207,8208,8209,8183,8210,8211,8206,7263,7264] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [660,8153,8154,8155,45,461,659,661,43,460,490,42,44,491,493,54,22,23,684,682,8138,8139,8145,8146,492] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [5624,5925,6073,6074,6343,5633,5657,5658,5660,6145,6104,6106,5895] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [2487,2512,2511,2113,2330,2118,2121,2089,2099,2332,2335,2307,2540,2541,2337,2489,2366,2081] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [3595,3567,3591,3594,3568,3589,3590,3602,3603,7224,7225,8924,7221,7226,8925,8885,3265,8887,8888,7193,7220,7214,3243,3263,3264,3283,8923,8896] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [5626,5627,6068,6069,6070,6072,6065,6363,6364,6369,6370,6373,6374,6375,6380,6342,6367,6061,6033,6032,6059,6060,6063,6064,6378,6035,5619,6034,6036] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [1459,1223,1225,1563,1554,1556,1560,1222,1255,1557,1458,1527,1405,1406,1407,1562,1564,1582,1244,1246] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [5624,5625,5925,6073,6074,5652,5894,5917,5922,5657,5658,5660,5653,5895] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [5589,7385,5880,5885,5910,5912,5568,5911,5651,5917,5598,7376,7384,5559,5588,7372,5562,5566,5567,5586,5587,5532] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [8217,8218,8219,8242,8461,8238,8239,8240,7274,8243,8246,8468,8474,8245,8485,7309,8438,7287,8270,7305,7307,7308] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [9229,9227,9228,9230,9258,9284,9251,9252,8584,8586,8572,8579,9519,9521,9520,8581,9513] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [3236,3237,3241,3245,3248,3216,3534,3535,3536,3537,3569,3568] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [2398,2453,2488,2489,2364,2365,2366,652,908,670,2452,2485] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [435,443,445,447,468,38,67,68,70,71,72,73,34,35,354,475] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [263,542,548,129,130,156,288,549,527,528,529,530,531,533,538,230,535] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [8982,9003,7133,4981,7132,7134,9004,7105,5006,9041,9010,9007,9005,7102,7103,7104] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
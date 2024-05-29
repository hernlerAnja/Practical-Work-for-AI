
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
        
        load "data/6W4P.pdb", protein
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
 
        load "data/6W4P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [13331,13310,13327,13328,13330,13332,12800,12407,12801,12802,12803,12804,12805,12785,12799,12685,13196,13208,13313,13329,13224,12258,12408,12255,12292,12293,12251,12252,12257,12253,13225,13317,13318,12559,12560,12591,12561,12590,12563,12686,13314,13326,12667,12809,12665,12666,13295,12828,12825,12270,12271,12272,12457,12458,12279,12409,12424,12423,12522,13335,13336,13334,12520,12518,12519,12525,12496,12526,12531,12494] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [6375,6377,7091,7092,6546,6549,6544,6573,6495,6511,6550,6497,6359,6360,6361,6465,6459,6462,6816,6818,6820,6821,6801,6815,6817,6605,6576,6889,6904,7108,6819,11884,6535,6537,11892,6533,6536,6498,6496,6832,6826,6784,6922,6208,6210,6212,6214,6269,6271,7071,7072,7073,6938,6604,6799,6800,6621,6783,11883,11885] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [468,467,427,428,469,482,306,307,309,429,391,394,292,293,397,476,141,142,139,140,478,479,481,716,443,201,203,854,870,1022,1023,1024,1003,1005,146,715,714,505,506,507,144,465,5815,5817,1040,758,537,747,750,536,731,733,748,749,751,752,753,821,835,836,732,521,508] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [7588,7591,7592,7586,8129,8130,7816,7817,7818,7622,7620,7621,7920,7921,7250,7801,7937,7938,7939,7249,7256,7252,7255,7638,7504,7536,7537,7538,7539,7540,7417,7419,8131,7416,8107,8108,8109,7403,7313,7552,7955,8089,8090,7507,10888,7834,7836,7838,7906,7832,7833,7835,7837,7577,7578,7579,7575,7843,10889,7852] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [2039,2062,1335,1349,1351,2021,2022,2041,1439,1732,1733,1749,2061,1765,1750,1766,1768,1838,1521,1523,1524,1181,1471,1468,1182,1484,1245,1764,1570,1520,1552,1553,1554,1184,1187,1188,1887,1243,4821,2064,1511,1509,1510,1470,1767,1769,1775,1770,1507,1518,1536] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [10108,10127,9957,9296,9297,9973,9273,9624,9597,9298,9599,9303,9293,9299,9588,9550,9583,9584,9585,9586,9587,9448,9449,9450,9554,9551,10106,9601,9360,9358,9852,9924,9818,9819,9834,9835,9836,9639,9640,9850,9656,9464,9466,10147,8912,9626,9625,9465,10143,10126,10144] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [9138,9139,8273,8831,8270,8613,8615,8616,8248,8275,8269,8985,8274,8441,8443,9155,8426,9137,9156,7882,8560,8562,8564,8561,8563,7880,8531,8528,8335,8337,8602,8603,8612,8950,8951,8668,8848,8251,8651,8276,8278,8279,8280,8610,8829,8846,8847,8936,8863,8864,8865,8866,8862,8652] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [2778,2779,2780,2763,2901,2883,2542,2544,2548,2205,2547,2269,3071,2917,2584,2794,2795,2797,2805,2796,2798,2868,2583,2180,2183,2600,2761,2207,2208,2210,2211,2212,2203,2206,2582,1814,2535,2494,2496,2375,3087,3088,2493,2495,2358,2372,3069,2463,2534,2799,2800] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [3228,3229,3889,4058,4059,3905,3514,3532,3533,3235,3205,3749,3751,3225,3231,3290,3292,3381,4040,3516,3517,3513,3515,3518,3523,3486,4038,3557,3556,3558,4076,3519,3396,3398,4079,4075,3571,3767,3768,3572] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [10595,10291,10288,10353,10355,11122,11100,11103,10445,10548,10550,11102,11143,10618,10952,10968,10292,10268,10796,10951,10262,10260,10814,10812,10580,10581,10582,10583,10577,10578,10579,10460,10620,10459,10461] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [4220,4509,4510,4223,4192,4224,4285,4527,4528,4552,5032,5034,5035,4899,4900,5030,4287,4377,4480,4482,4194,4344,5007,5006,5075,4746,5054,4884,4391,4393,4392,4508,4519,4511,4512,4513,4744,4728,4883,4200] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [5219,5896,6029,6030,6031,5282,6027,5280,6002,5519,5521,5218,5523,5217,5505,5506,5508,5372,5386,5388,6050,6049,5504,5476,5522,5339,6065,6066,6067,6048,5742,5880,5758] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [14478,14485,14486,14449,13786,13775,13777,14483,14481,14482,14484,13845,13479,13480,13481,13815,13482,13483,13474,13494,13748,14421,14423,13749,13191,13200,14448,14452,14454,13201,13761,13484,13485,13667] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [11286,11540,11541,11573,11576,11287,11590,11572,11456,11454,11440,12099,12118,11544,12097,11348,11350,11948,11810,12117,11964,11257,11826] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [10134,9444,9445,9451,9452,9456,9457,10122,10131,10136,9455,2045,2036,2050,2048,2049,10135,2053,1329,1336,1337,1339,1340,1341,10137,9947,9948,9928,9929,1330,1365,1366,2051,1859,1861,1862,1845,9475,9480,9481,9474,9437,9442,1358] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [1507,1513,1514,1515,1516,1518,13561,13562,1535,1526,1527,1530,13818,1186,1191,1192,13816,13817,13539,13851,13853,13855,13850,13458,13456,13538,13892] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [1376,1373,1377,1381,1380,11481,9808,4615,4614,9688,9680,9704,9705,9685,1370,11482] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [10682,3617,3620,3636,3637,7449,7452,7448,3740,7445,5413,7444,10683,10675] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [12916,12917,13275,13279,12976,12974,12977,12978,12999,13001,13033,13278,12979,13271,13272,13007,13291,13233,12888,13232] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [1480,1200,1202,1207,1209,1213,1220,1216,1225,1192,13816,1514,1516,13457,1479,13455,1488,1478,1487,1492,13467,1227,13451,13855] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [8113,8116,8117,8118,8121,4066,3376,3383,3384,3388,4071,4068,4069,3879,8119,3377,3412,7929] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [10688,10689,10793,10270,10664,10665,10666,10236,10708,10780,10211,10212,10213,10795] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [3078,9146,3079,9147,9148,9134,8428,8433,8434,3066,2364,2365,3080,3081,2891,8959,9149] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [1599,9496,9492,9495,1619,8699,8700] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [3427,3424,3428,7667,7670,7686,7687,2632,2631,3420] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [707,11678,6403,6406,601,585,11679] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [5611,6653,5610,5603,335,338,339,6650,6669,6670] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [829,4402,6386,11923,11924,4418,6402,830,6393,6394] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
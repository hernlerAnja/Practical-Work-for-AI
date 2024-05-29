
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
        
        load "data/7C2W.pdb", protein
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
 
        load "data/7C2W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7233,7234,7235,7236,7237,7240,7241,7244,7247,7792,7797,7800,7795,7238,7192,7190,7191,7288,7289,7287,7271,7270,7375,7239,7821,7824,7828,7829,7862,7852,7892,7199,7897,7900,7813,7808,7814,7820,7853,7911,8216,8191,8192,7801,8215,7656,8291,8292,8293,8294,8297,8199,7770,7655,7654,7775,7776,7390,7391,7771,7772,7773] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [8238,3262,3274,3275,3278,3279,8240,4363,4364,4365,7356,3298,5574,3273,3309,3300,3310,3249,3255,3256,3257,3258,3597,3593,3595,3596,3585,4337,4344,5572,4351,3267,3250,3200,4357,4356,4358,7362,8264,8241,7803,8231,8276,8277,8278,8239,7788,7782,7783,7657,7661,7663,7665,8263,7618,7628,3584,7630,7633,7617,7626,7645,7664,3586,7791,7810,7360,7361] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [5465,5477,5478,5470,5490,5491,5464,4908,5045,4909,4957,4958,4959,5521,5522,5532,5523,4905,4906,4904,4910,4911,4912,4863,5562,5570,5886,5861,5885,5962,5961,5061,5060,5443,5444,5445,5446,5494,5498,5499,5467,5471,5324,5451,5440,5441,5442,5515,5862,5850,5851,5869,4939,4940,4941,5970,4917,4921] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [2573,2576,2574,2575,2580,2581,2627,2628,2629,2727,2587,2596,3240,3192,3202,3193,3161,3555,3531,3532,3539,3556,2995,3631,3632,3164,3168,3169,3111,3112,3113,3114,3115,3116,2729,2730,2731,3640,2994,3637,2893,3633,3097,2598,2530,2650,2531,2578,3132,3134,3135,2579,3137,3140,3142,3147,3148,3153,3154,3155,3160,2715,3121,3110] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [5899,5948,1258,1259,1260,968,971,972,973,974,5335,1254,1256,996,997,998,5333,5334,5901,5933,919,920,921,918,925,970,5910,5903,5479,5480,5481,5907,5908,5453,961,5026,942,941,2026,2027,2029,2020,7902,7904,5299,1248,5303,821,5461,2021,2019,5031,5027,5032,7896,5474,5458,5452,5296,5934,5295,5281,5288,5315,5280,5287,5463] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [250,1195,1218,1219,659,1193,1194,1202,1295,1294,1296,237,238,239,244,825,865,827,831,832,855,856,848,903,803,805,784,658,657,797,798,241,242,823,824,864,290,291,292,391,774,776,778,779,272,274,394,1303,378,773] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [5906,5925,7917,7918,8255,8256,8257,5910,5911,7916,5667,5915,7939,7922,7927,907,9017,7818,7819,7809,7808,7970,8236,8253,7997,8245,7933,8234,7969,5632,7958,7960,7934,7938,9024,9026,9023,5592,5585,5587,5588,8237,5586,5604,5608,5609,5630,5638,6688,5603,5923,5926,5927,5639,5641,5488,5665,5530,5579,5581,5532,5478,5566,5567,5570] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [7354,7355,7356,3298,3301,3302,3303,3333,3359,4661,4664,4665,4666,3334,7340,4397,4655,4379,3286,3288,7330,7338,7680,7678,7681,7675,7677,7025,7026,7028,7029,7046,7020,7024,7369,7332,7045] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [965,5025,5026,5350,5351,963,4694,4695,4696,991,2326,2327,2060,2318,2320,2324,2329,949,951,999,4671,1000,990,2322,4715,5011,5024,5000,5002,5008,2042,5347,5345,5348,4716] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [9301,9302,7992,8013,8015,8020,8021,8041,8038,8039,8040,9268,7632,7624,3149,3578,8068,8037,8062,8063,8066,7631,7633,7640,7641,3150,3580,8061,8098,8099,9243,9267,7994,7995,7996,7997,8263,8265,8264,8018,3148,3158,3597] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [6938,6913,1244,5768,354,347,348,349,5708,5711,5294,1241,5738,5731,5767,5769,812,1243,365,813,1240,1242,5302,360] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [268,394,518,1301,1302,1303,554,555,1316,1317,1323,1324,264,269,271,273,265,1325,513,514,515,267,491,451,519,411,552,1167,1164,1165,1469,1466,1183,1184,1475,1202,1203,1299] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [7310,7189,7192,4994,7309,7793,7795,7324,7808,4979,4980,4995,4978,4860,4863,5463,5478,4865,4878,4859,4884,4867] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [2608,2610,2855,2609,2611,3656,3660,3661,3662,2598,3520,3521,3501,3504,3805,3806,3638,3640,3636,3639,3539,2597] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [8300,8299,8164,8321,8322,8465,8466,8463,8464,8181,8472,7515,8323,7391,7511,8313,7510,7257,7261,7262,7265,7268,7270,7408] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [881,1718,1726,8723,9002,879,9000,2004,8999,9001,8715,7876,2003,2002,1987,2005] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [8723,8708,8984,8721,8722,9002,1726,1753,1766,1752,1767,1770,8784,8775,8715,8730,8763,8774,8750,8776,8963,8965] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [2729,2730,3638,3640,2893,3639,2747,2857,2858,3097,2851,2608,2855,2852,3653,2850,2598,2748] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [6622,6663,4089,6635,6454,4105,4107,4104,4088,4090,6669,6670,6654,6628,6633,6447,6392,6393,6400,6446,6420,6445,6515,6385,6672] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [7700,7712,7053,7702,7054,7055,7056,7059,7064,7100,7723,7724,7701,7749,7750,7150,7146,7099,7148,7737,7733,7736] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [1725,1966,1787,1799,1968,1970,8767,8769,1848,1969,8763,8749,8750,8764,1987,2005,1718,1724,1726,1753,1778,1779,1780,1956,1955] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [7322,7324,7214,7220,7221,7222,7210,7131,7310,7189,7193,7208,4878,4859,4880] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [1376,1377,1378,1587,1353,1357,1364,1091,1584,1589,1586,1585,1617,2223,2226,2227,1594,1595,1597,1089,1087,1088,1112,1118,2238,2242,2236,2228,2230] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [7189,7208,4992,4994,7214,7210,4979,4995,4884,4880,4799,4800,4891,4801,4977,4978,4862,4976,4783] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [4357,5566,5581,4355,4356,4358,4867,7362,8238,8237,7791,7810,7309,7793,7310,7361,7809,8241,8239] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [6348,6514,6349,6764,6766,6381,6631,6605,6607,6550] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [5983,5078,5185,5077,5969,5970,4935,5060,5427,5061] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [1280,1281,791,1243,786,1266,1249,1232,1234,668,1244,5279,5742] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [1714,1940,1883,1964,1682] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [2865,2901,3034,3048,2838,2875,3036,2900,2869,3047,2331,2337] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
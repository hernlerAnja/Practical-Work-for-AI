
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
        
        load "data/7MO8.pdb", protein
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
 
        load "data/7MO8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6515,6519,4558,6442,6517,6518,4537,6461,6503,3403,3384,6048,6049,6228,6230,6231,3399,4539,4540,3389,6523,6079,6031,6057,6462,6537,7016,6535,3547,3548,6533,3353,3355,3526,3409,3519,3401,6522,6531] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [2581,2583,2585,2569,2570,2567,2484,2486,2489,2487,8422,8424,8107,8142,8143,8108,2453,2444,2441,2488,7139,7140,2550,2551,8419,7137,7138,7144,7151,7159,7160,2326,2339,2341,2507,2330,2333,2334,2340,7148,2506,7177,7178,1837,8421,2455,1829] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [3137,3146,3148,3138,3070,3071,3085,3087,3089,2841,3032,3145,3147,3149,3150,2859,2882,2883,2885,2887,4903,4904,4901,4902,4927,4928,4930,4926,2893,2895,3016] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [308,311,310,46,71,72,73,819,820,798,799,1066,68,696,697,713,725,743,69,70,313,1080,1064,1065,1076,1077,379,382,373,378,364,304,349] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [4707,4693,4782,4795,4522,4523,4797,4296,4521,4519,4705,6471,4510,4484,4297,4722,4520,4729,4730,4762,4760,4770,4771,4775,4474,4480,4786,4779,4783,4776,4711,4712,4763,4696] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [5431,5434,5435,5436,5454,5634,5636,5453,5802,5803,5805,5774,5838,5839,5840,5841,5418,5419,5863,5974,5775,5777,5778,5781,5782,5300,5650,5297,5299,5773] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [6107,6008,6063,6085,6086,6363,6366,5812,5813,6357,6027,6028,6024,6014,6018,5520,5508,5509,5510,5511,5512,5513,6010,6075,6082,6060,6061,6062,6378] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [7193,7213,1653,1656,1657,1658,1659,1660,6911,1717,6910,1655,8073,7109,7110,7111,6864,6865,6867,1713,1715,8090,8089,7194,7192,7191,6909,7464,7211,7212] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [9285,9659,9187,9186,9660,9272,9202,9674,9676,9286,9762,9760,9501,9455,9271,9224,9471,9472,9287,9269] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [6156,5167,8574,5667,6162,5182,5670,5657,6151,6159,6148,6724,6726,6727,6731,6158,8573,8575,6157,7255,7257,8579,7264,7266,5171,7247,8564,8562,8563,8581] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [6165,6274,6276,6253,6255,6510,6509,6113,5666,6121,5767,5780,5833,6116] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [8099,7342,7347,8122,8124,7335,2468,2597,2579,2580,2582,2188,8420,8421,2455,2459,2460,2461,2462,8085,2584,8105,8423,8424,8108,8102,2453,7344] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [8959,8961,8962,8974,9139,8964,8976,9319,9151,9308,9310,8844,8845,4984,8984,8986,4988,4989,9121,9123,9125,9136,9138,9135,9143,9097] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [102,660,677,679,424,443,444,259,253,260,249,261,1584,1587,1595] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [772,774,775,1496,1470,1476,1388,1491,1471,1477,1481,1484,1490,1387,1358,759,1359,1360,1354,763,769,776,1352,1349,1472,1390,1474,736,738,740,741,743,702,1482,1364,1365] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [7639,7642,7689,7614,7616,7618,7651,7649,7617,2623,2079,2089,7613,7344,2634,2596,2607,7352,7350,2468,2597,2609,2097,2460,2463,2458] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [9312,9313,9318,9573,9574,9564,9563,9565,9400,9402,8866,8867,8868,8869,8872,8873,8854,8855,4993,4995,9302,8876] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [7902,7940,7941,7956,7959,7049,7952,7046,7955,8008,7997,8005,8009,7971,7972,7973,7666,7671,7939,7943,7069,7070,7946,8033,7917,8054,7901,7657] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [6602,6689,7779,6707,6709,6966,6410,6402,6401] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [135,492,517,489,208,140,515,191,455,456,187,188,193,194,150,152,650] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [6139,6132,6332,6328,6358,6361,6330,6303,5620,5621,6118,5808,5809,5817,5788,6370,6371,6369,5794] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [6462,6495,6015,6016,6020,4176,4178,4224,4226,6515,6518,4534,4537,6460,6461,6047,6048,6049] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [8068,8069,8058,1713,1715,1741,1742,8090,1712,1739,8073,7110,7111,1711,1667,1669,1717,1823,1822,1656,1757,8089] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [4874,3168,3143,3839,4877,3821,4912,4914,3838,3837,3840,3162,3826,3159,3160] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [1610,59,1917,37,39,62,38,1594,1595,1596,1597,1612,53,258,289,261,36] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [2179,2551,2552,8419,8430,2581,2567,8422,2188,2191,2201,8421] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [8746,5056,5078,5079,5081,5074,8523,5096,8515,8512,8499,8498,8745,8511] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [5308,5310,5255,5103,5253,5256,5148,5150,8738,5119,5265] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [2434,2419,2249,2250,2252,2253,2246,2247,2345,2344,2350,2354,2248,2251,2338,2376] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [3070,3071,3086,3088,2842,2836,2837,2838,2867,3007,3008] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [1900,1902,1958,1968,1970,1956,1957,1833,1883,1971,1973,1671,1830,1670,1656,1657] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [7688,7696,8065,8068,8072,2098,7650,7652] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [4060,4861,4866,4867,3031,4903,4902,3172,3044,4870,3033,3037,3029,3038] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [1206,1207,1209,1212,1214,1315,1296,1297,1298,1173,1174,1211,1213,1162,1175,1176] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [8826,8828,8827,8825,8481,8489,8493,5024,8490,5016,5043,5040,5011,8485,8460,8475,8829,8478,8480,5061,5063,8795,8799,8800,8802,8791,8467] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        
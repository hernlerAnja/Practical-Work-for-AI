
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
        
        load "data/3BHH.pdb", protein
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
 
        load "data/3BHH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [872,1337,6624,1345,1879,874,1335,1341,1344,1367,850,6508,6936,6510,6611,6663,6665,6630,6631,6642,6948,1143,1157,1835,871,896,1339,881,895,1139,1135,1136,6922,6923,6925,6498,1891,1873,1876,1877,1878,1867,1888,6496,6494,6499,1842,1856,6924,6927] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [6405,6408,6409,2592,2637,2638,2640,2646,5782,5786,5998,6000,2667,2666,2668,2652,2654,2658,2659,2660,2662,2374,6381,6383,6384,5770,5996,2340,2341,2352,2354,2375,6402,6403,2772,2771,2773,5990,5999,5993,2350,2351,2650,2562,2563,2558,2560,2591,2673,6431,6429,6430,6433,6438,6460,5795,5796,6407,6432,6436,2564,2565,5819,5820,5821] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [6526,6527,6999,7000,6503,6519,6521,6485,6486,6489,6481,2687,2688,6975,6963,2692,6978,6979,6974,6976,6959,6525,6578,6579,6580,6689,2699,2702,6564,6687,6688,2426,2474,2476,2477,2478,2479,2501,2424,2425,2423,2428,2473,2499,2502,2503,2506,2703,2704,2724,2726] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [455,456,457,608,589,992,993,602,600,605,582,1078,1066,1069,1070,1071,1074,1084,1075,976,968,632,620,621,114,580,581,218,90,91,92,93,584,585,230,583,1076,94,113,115] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [2256,2282,2252,2253,2255,2281,3259,3145,3157,3255,3256,3173,3174,3254,2630,2629,2631,2393,2395,2761,2763,2760,2759,2556,2764,2628,3269,3271,2780,2769,2782,2785,2788,2800,2801,2381,2254,3261,3260,3262] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [5529,5532,5530,5531,2564,2565,5823,5826,5807,5819,5820,5821,5832,5882,5533,5534,5544,5546,6435,6459,6461,6462,6465,6438,6460,5794,5795,5796,6440,6442,5524,5260,5840,5854,5855,1828,1824,1821,1823] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [7521,7524,7525,7526,7527,7409,6680,6681,6694,6777,6802,6803,7008,6677,7023,6671,7031,6896,7021,7022,7024,7025,7026,7027,7520,7534,6898,7437,7438,7047,7048,7049,7519,6557,6558,6570,6571,6559] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [3310,3311,3315,3316,3319,1732,3317,3320,3321,3303,3304,3305,3306,2538,2539,2540,2575,3307,3067,5836,3073,3066,3072,3058,3075,5874,5870,5873,5849,5866,5861,5862,5869,5868,5899,5900,5867,5841,1815,5835,1780,5846,5847,5842,1749,1653,1781,1784,1651,1751,1648,1649,1752,1786,1790,1791,1792,1760] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [5365,5366,5369,5370,5371,5372,4645,4646,5283,5364,4746,4744,4870,4871,4873,4874,4875,4523,4869,4411,4424,4425,4892,4879,4895,4896,4533,4544,4856,4529,4522,5385,4546,4620,5284] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [1001,1029,1030,1033,1036,1021,1025,806,1032,668,697,695,696,783,777,750,752,755,775,753,754,756] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [7672,7678,7679,7680,7681,7682,7692,7677,8029,8002,8602,7412,7414,8605,7405,7413,8581,8582,7694,7968,7970,7954,7963,7979,8578,8580,7941,7942,8600] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [7213,7215,7191,7222,7189,7192,7194,7478,7107,7135,7136,7470,7473,7477,7193,7446,7481,7484,7248] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [3658,3670,3682,3657,3736,3686,3708,4314,4315,4318,4290,4292,4294,3404,3402,3403,3405,3406,3150,3397,3417,3419,3140,3141,3149] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [1498,1507,1510,2124,1220,1221,1234,1232,963,2125,2126,962,964,965,2144,1212,956,969,966,631,2142,2143,2147,2148,2151,1563,1485,1486] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [2848,2875,2876,2877,2929,3219,3212,3213,2948,3182,3232,2983,2957,2927] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [3302,1736,3315,3319,3333,1935,1936,1937,2004,1739,2003,3372,3347,3332,3337,3369,3371,3351,1759,1793,1928,1930,1758,1760,1757,1929,1922] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [4958,4986,4987,5318,5322,5323,5324,5057,5059,5037,5038,5033,5035,5055,5066,5326,5329,5314,5292] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [7292,7314,7316,8344,8345,8349,8337,8338,8339,8340,8334,7313,7320,7312,7325,7793,7795,7791,7593,7796,7797,7801,7802,7823] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [5906,5907,5908,5800,5939,5940,5818,2571,2590,3070,3071,2587,2588,3036,3038,3062,5958,5959,5960,5793,5787,3058,3059,5815,5819] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [6195,6198,6200,6178,6189,5650,5653,5654,5649,5655,6201,6199,6210,5136,6205,5160,5644,5158,5444,5646,5648] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [1610,1549,1583,1548,1550,4613,5501,5513,5217,5486,1584,1581,1582,5387,5389,5391,5395,4610,5407,4633,4635] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [3051,4049,4053,3539,3027,4047,4054,4058,3505,3507,3512,3513,4046,4048,3509,3511,3049,3060,3328] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [2320,2340,2341,2352,2375,6402,6403,6400,6381,6383,6384,2190,2334,2319,2668,2658,2659,2660,2193,2203,2192,2350,6422,6424,6426,2194] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [1289,5517,1584,5510,5514,1610,1583,5394,5393,5395,1606,1611,1612,1615,1604,1605] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [6988,6986,6954,6779,6780,6783,6958,6758,6760,6754,6708] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [300,333,335,101,245,246,97,279,280,324,231,360] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [387,1084,1086,454,389,408,449] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        
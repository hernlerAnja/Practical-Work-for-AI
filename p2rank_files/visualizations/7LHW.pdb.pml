
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
        
        load "data/7LHW.pdb", protein
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
 
        load "data/7LHW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9785,9821,2931,2918,9816,9818,9826,2902,2901,3088,3122,3319,3320,3108,3304,9247,9250,9233,9231,9252,9197,2939,2940,3132,3133,3321,9240,9299,9300,9229,9737,9740,9741,2569,2570,2571,9739,9749,9750,2560,2562,2752,2561,2753,1870,1872,2334,1865,1866,1869,2313,2315,2329,10179,9743,9744,9745,9748,10219,10222,10159,10160,10158,10171,10172,10173,10174,10213,1855,2542,2543,2544,2525,2526,2527,9828,2735,2713,9794,9829,9849,10180,9827,2312,2314,2299,10177,10178,1828,1856,2298,1842,10163,10223,10224,9730,9298,9351,9352,9842,9843,2717,2719,2714,1827,2292,3473,3655,3456,9258,3495,3496,9251,3487,3667,3669,9256,10204,1786,10186,10187,10189,10191,1854,1588,1621,1881,1883,10218,10210,1585,1586,1587] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [10146,9235,9236,9238,9239,9240,9241,9277,9278,9279,9367,10131,10261,9242,9243,9755,9759,9752,9233,10118,10147,10122,10123,10124,9382,9608,9712,9711,10274,10277,9383,10262,10270,10268,9783,9785,9731,9717,9735,9734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [13694,13695,11326,11323,11311,11318,11336,11685,12038,11321,11671,11680,11681,12025,11675,11335,11691,13343,13354,13347,13348,13699,13689,13692,13683,13359,13678,12451,12875,12450,12863,12866,12034,12440,12443,12444,12867,12051,12454,12878,12872,12874,12049,12030,12033] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [7033,7054,7000,7014,7016,7034,6924,5652,5657,5659,7501,7467,5647,8499,8500,6926,7053,7513,7489,5686,6962,5681,5654,6927,6952,6953,6954,6994,6995,6996,5543,5662,5099] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [7805,7807,5616,7810,5613,7554,5587,5588,7555,8059,7846,5621,5625,5611,7800,7789,7790,7793,8070,8056,8057,7841,7551,7833,7827,7831,5863,5864,5840,7811,5618,5619,5874,5872,5139] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [5157,5178,5308,5310,5154,5184,5185,5569,5145,5146,5150,5151,5172,5570,5316,5317,5320,5321,5324,5325,5330,5578,5579] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [13642,13645,13646,13647,13644,13477,13616,13617,13638,13465,13466,13319,13320,13462,13321,13312,13315,13316,13253,13256,13281,13282,13306,13308,13198,13199,13478,13163,13165,13166,13200,13233,13251,13136] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [14092,14094,1540,1777,1773,1775,1764,14066,14067,14068,14043,10205,10206,10208,10204,10192,1799,1560,1556,1563,1566,1570,1780,1580,1779,14090,14128,10218,14127,1584,1585,14096,14102,14088,14095,14010,1814,14030,14033] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [6688,7430,7435,7437,7154,7433,7434,7066,7107,7108,7109,7465,7468,7185,7475,7423,7424,7432] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [14010,1817,1819,1820,1814,1816,1805,13991,13992,13994,13993,14007,13746,13755,14001,14043,10207,10208,14041,14042,9867,9868,9881,9869,9870,11191,9861,9880,9882,10198,10199,13741,11204,11214] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [4832,4838,4841,4848,6934,6936,5700,5702,6959,4839,6434,4851,4852,4881,6960,6963,6905,4968,6492,6493,6494,6474,5704,6498] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [4203,3833,4422,4424,4211,4213,4398,4400,4578,4204,4414,4591,9259,4396,4397,4399,4006,4005,4382,3991,3992,4187,3824,3832,3823,9261,9262,3667,3668,3669] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [7214,7216,7334,7412,7353,7356,7365,7519,7521,7527,7542,7445,7446,7473,7477,7448,7408,7410,7475,7476,7182,7209,7213,7204,7184,7433,7436,7438,7331,7343,7347,7339] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [11356,11358,12044,12055,11359,11368,12150,11369,11713,11698,12059,12060,11691,11694,11695,11699,12064,12058,12074,12073,12149,12051,12053] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [10379,4752,10385,10386,10387,10384,4561,4379,4380,4382,4556,4749,10728,4372,10729,10727,4369,10755,10757,10703] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [11377,11408,11412,11430,11431,11433,11525,11527,11892,11891,11701,11774,11772,11796,11793,11349,11375,11376] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [10379,10385,10386,10387,10384,10755,10757,10758,10703,10702,10728,10400,10401,10674,10675,9773,10105,10119,9776] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [8643,8781,8782,8784,8444,8446,8447,8645,8644,9455,8412,8413,9004,9007,9485,9015] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [13695,11336,11685,12038,13699,13692,12469,12464,12051,12053,12460,12454,12058,12049] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [6689,6690,6703,6688,7066,7108,7109,7465,7468,7086,7064,7459,7426,7423,7425,7424,7427] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [7736,8652,8654,8218,8760,8759,8240,8272,8274,8241,7757,8657,8671] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [4747,4742,4745,4725,4727,4923,4721,10410,10445,10764,10766,10446,10447,10451,10384,4920,10444,10734,10771,10774,4730,10763,10799] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [9971,9578,9580,9999,14170,9996,9991,9992,14169,14205,10001,14145,14179,14147] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [204,286,287,459,462,226,229,231,463,479,267,268,269,270,272,460,311,202,223,39] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [5923,8578,6144,6148,6151,6127,8547,5922,6145,8604,8564,6130] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [10939,10940,11208,13622,13963,13964,13984,13628,13631,11176] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [12346,12347,12353,12345,12161,12160,12663,12665,12239,12664,12666,12644,12652,12661,12098,12099,12142,12241] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [5670,5349,5643,5341,7167,5340,5642,5632] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [13522,12933,12934,13116,13523,13509,13520,13507,13558] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [12633,12617,12228,12565,12566,12554,12456,12457,12458] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [11466,11290,11292,11589,11443,11305,11306,11296,11447] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        
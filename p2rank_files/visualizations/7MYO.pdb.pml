
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
        
        load "data/7MYO.pdb", protein
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
 
        load "data/7MYO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9663,8404,8405,8410,8667,8668,8669,9664,9665,9666,8710,8711,8713,9679,8934,9653,9654,9660,9661,9662,8646,8683,8684,8628,9012,8666,8647,8649,8436,9655,9658,9576,9657,9077,9550,9575,8627,8375,8393,8458,8629,8391,8931,8933,9011,9016,9023,9028,9027,9058,9099,9102,9032,8457,8705] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [10554,10555,10577,10553,10045,10047,10552,10603,10604,10605,9444,9446,9448,9838,9840,9839,10038,9837,10582,10583,10584,9882,10004,10006,10008,9956,9868,9903,9904,9905,9906,9876,9877,9883,9961,9867,10544,10517,10518,9445,9449,9471,9472,9473,10519,10521,10522,10543,9789,9803,9821] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.482,0.902]
select surf_pocket3, protein and id [3672,4449,4451,8776,8777,8778,8937,8936,9018,9021,7464,7466,7468,8262,8263,8264,8261,8252,3671,7216,7555,7556,7176,7177,7178,7179,7180,7181,8718,8721,8942,8943,8940,7183,7187,7188,8746,8749,8715,8717,8741,8745,7505,7506,7507,7508,7509,7510,8950] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [10269,5841,10309,5847,5826,5833,5837,5838,5842,5864,1259,5844,5917,5905,5923,5646,5906,10259,10261,10253,10260,5919,5921,7615,7613,5813,5828,5829,5931,7624,7630,7628,7629,5819,10265,10268,10270,10271,10275] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.392,0.902]
select surf_pocket5, protein and id [3365,3367,5947,5948,5949,5779,5777,7657,7648,7653,7652,5937,5940,5944,5941,5667,7627,5932,5820,5936,5938,7632,7660,7661,7636,7323,7322,3382,5703,3366,3373,3374,5676,5669,5672,5673,5702,5750,5751,6055,7307,7298,5712] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.290,0.278,0.702]
select surf_pocket6, protein and id [7600,7615,5813,5828,5829,5957,5997,1296,1297,1286,1288,2028,2030,7628,7629,5819,7624,7619,7622,5956,5969,1352,7623,1319,1356,1320,1321,1346,5972,5826,5833,5838,1258,1259,5646] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.424,0.361,0.902]
select surf_pocket7, protein and id [5178,5179,470,489,5112,5208,269,273,274,5890,279,280,10318,10326,10327,10328,504,5920,6955,10256,6962,5161,5163,5911,5162,5144,5879,5912,5880,5882,5881,5897,10317,491] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.365,0.278,0.702]
select surf_pocket8, protein and id [2503,1585,2502,1584,1546,1793,1556,1555,1792,1790,1763,1788,1781,1789,1752,1787,2505,2506,1611,1613,1622,1623,1756,2744,2745,1754,1727,2496] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.514,0.361,0.902]
select surf_pocket9, protein and id [9034,9044,9025,9042,4453,4456,4459,4488,3672,9018,9019,9020,9021,8283,8604,8574,8575,8576,8577,8285,8286,8568,8573,8602,8603,8592,4321,4339,8264,8261,8562,8563,8564,8565,4461,4462,8566,4494,4528] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.435,0.278,0.702]
select surf_pocket10, protein and id [6698,514,6696,6718,6719,845,481,5384,6720,5189,5194,5199,5381,483,5198,497,513,5183,485,5192,842,844] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.608,0.361,0.902]
select surf_pocket11, protein and id [2254,2255,2256,2286,170,258,931,2229,2291,2294,932,933,934,974,259,168,161,935,936,190,182,223,2252,2253,2258,2259,2292,2293,965,973] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.510,0.278,0.702]
select surf_pocket12, protein and id [6424,6674,6675,6676,6442,5168,5169,5170,494,495,5172,512,522,6439,519,501,507,515,6960,6961,6959,5164,5165,5171,6670,6485,6486,6672,6686,6705,6697,6698,6409,10326,10328,206,6962,6963,5161,5163,5162,6420,6414,6415,6417] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.698,0.361,0.902]
select surf_pocket13, protein and id [7806,7807,7808,4667,4666,8234,8235,8268,8269,4652,3647,3649,4647,4649,4330,3645,3637,3648,3638,4654,4664,3635,7764,7770,7771,7774,7777,7453,7454,7455,7762,7766,3629] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.580,0.278,0.702]
select surf_pocket14, protein and id [3672,4449,4451,8776,8777,8778,8773,8775,8801,8806,8807,8922,4447,4446,4508,4509,4510,8841,4448,3686,3688,7156,3685,8813,8811,8812,8810,8840,4476,4478,4480,4444,7187,7152] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.792,0.361,0.902]
select surf_pocket15, protein and id [3259,2992,3237,3238,3239,3019,3027,3021,3024,3025,3026,8159,2991,2989,3001,3261,3262,7857,7890,7891,7821,7830,7858,7860,7859,8195,8192,8186,3228,3023] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.651,0.278,0.702]
select surf_pocket16, protein and id [4571,4572,4588,8537,3892,8534,8527,8529,3867,3891,3890,3941,3944,3868,3874,8518,4582,4575,4576,4589,4593,4586,4616,4617] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.886,0.361,0.902]
select surf_pocket17, protein and id [10391,10394,10396,10397,10398,10381,10382,10390,10384,10434,10431,10442,10443,387,388,389,10358,10385,192,177,178,179,186,187,180,193,196,198,373,6435,202,10510,10506,10508,10393] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.675]
select surf_pocket18, protein and id [4376,4399,4398,3616,3617,3661,3662,3679,3663,3664,3615,7446,7435,7436,7437,7418,7148,7145,7409] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.824]
select surf_pocket19, protein and id [9740,9741,2180,2181,2182,10335,10337,10336,5873,216,250,2218,2219,2220,2257,213,225,2249,9744,9742,9745,9717,9746] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.604]
select surf_pocket20, protein and id [10318,10323,10326,10328,241,498,206,239,240,502,503,505,504,238,6424,501] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.729]
select surf_pocket21, protein and id [2152,2153,2155,2157,2159,5602,5598,5584,5599,5591,5595,2162,5603,283,286,275,276,5869,5874,5578,2194,2191,2192,2193,245] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.533]
select surf_pocket22, protein and id [9741,1156,2180,2181,5873,5851,5853,5855,1219,2125,2156,1228,1189,1217,2149] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.639]
select surf_pocket23, protein and id [446,627,461,625,748,724,886] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.459]
select surf_pocket24, protein and id [8282,8283,8604,8575,8577,8285,8286,8603,8241,8621,8253,8264,8261,9017,9018,9019,9020,9021,9025] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.545]
select surf_pocket25, protein and id [3194,3195,2912,3295,3299,3302,3306,3335,3307,3216,3219,2925,2928,3192,3193,3182,4728,3185] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.388]
select surf_pocket26, protein and id [2894,3284,3285,3287,3313,3314,3315,3343,2889,3316,1410,1412,1391,2893,3311,3325,7642,7643,1353,1354,1356,1355,7641] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.451]
select surf_pocket27, protein and id [4650,4651,3649,4350,4649,8294,8295,8518,4328,4329,4297,4299,4330,8521,4298,4588,8537,4587] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.318]
select surf_pocket28, protein and id [732,733,913,764,138,725,698,66,132,127,41,86,26] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.361]
select surf_pocket29, protein and id [7568,7571,7572,7573,8963,8969,8972,7593,7594,3271,7881,7882,7906,7907] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.318,0.278]
select surf_pocket30, protein and id [3260,3227,3228,3258,3031,3277,3278,3279,2874,2876,3040,3041,3042,3044,3250,3251,3252,3253,3255,3223,3225,3280,3281,3249,2927,2875,2890,3292,3293,3294,3288,2877,2886] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.451,0.361]
select surf_pocket31, protein and id [6892,6893,7198,6894,7161,7163,7165,7185,7199,8787,8819,8813,8811,8852,7156] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.388,0.278]
select surf_pocket32, protein and id [5730,5449,5450,5727,5728,5448,5451,5707,7311,7313,7327,7333,7336,6995] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.545,0.361]
select surf_pocket33, protein and id [5997,6003,6004,5823,5824,5827,2065,2067,5006,5009,2066,1257,2094,5835,5626,5629,5005,5625,5833,5624,5634] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.459,0.278]
select surf_pocket34, protein and id [9740,9741,10334,10335,10337,10336,10312,5857,10283,9718,9719,9729,9738,9744,9742,9745,9717,10288,10344,10345,9721] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.639,0.361]
select surf_pocket35, protein and id [3202,7788,3210,3173,7768,7769,3236,7786,7758,7759,7760,7762,7739,4687,4689,3204,3205,3172,3208,3211,4706] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.533,0.278]
select surf_pocket36, protein and id [4487,4483,4484,4474,4508,4509,4507,4510,8841,8895,8801,8802,8800,8803,8804,8904,4476,4478] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.729,0.361]
select surf_pocket37, protein and id [4062,4061,4249,4601,4602,4246,4244,4366,3588,3587,3589,4367,4370,4282,4266] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.604,0.278]
select surf_pocket38, protein and id [7606,8674,8675,8676,7604,8677,8978,8980,8984,8693,8694,10271,7613] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.824,0.361]
select surf_pocket39, protein and id [530,6468,624,621,6465,816,793,829,830,831,632,633] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.675,0.278]
select surf_pocket40, protein and id [1635,1642,1643,1646,1647,1648,1650,1614,1607,2762,2763,1652,1719,1720,1718,2761,1612] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.886,0.902,0.361]
select surf_pocket41, protein and id [9134,9276,9133,9054,9600,9069,9070,9048] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.651,0.702,0.278]
select surf_pocket42, protein and id [5749,6087,6056,6059,6051,5752,4919,5745,5744,6060,5412] 
set surface_color,  pcol42, surf_pocket42 
   
        
        deselect
        
        orient
        
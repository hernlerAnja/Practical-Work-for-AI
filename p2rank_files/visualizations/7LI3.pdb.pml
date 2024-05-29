
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
        
        load "data/7LI3.pdb", protein
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
 
        load "data/7LI3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9687,9688,9689,9696,9101,9653,9108,2183,2411,9616,9618,2429,2410,2412,9697,2394,2395,2585,9605,9607,9608,9611,9612,9613,2430,2619,2621,2786,2799,2990,2973,2975,2976,2769,2770,2956,9099,2807,2808,2620,9167,9168,2438,2439,2428,2603,9166,2582,10048,3172,3171,3340,3341,3156,9126,3000,3001,3187,3188,3189,3354,3355,9120,9124,3363,3364,9097,9115,9118,9128,3677,3537,3535,3522,3523] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1488,1489,1747,1749,1737,1738,1739,1740,1735,1751,1487,10040,1654,1723,1733,1734,1722,2202,1455,1456,10041,10081,10057,10054,9605,9607,9608,9609,2196,2197,2430,9219,9220,9598,9617,2438,2439,10090,10027,10028,10036,10039] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [9986,9999,10015,9623,9627,9628,10014,10129,10128,10130,10136,10138,10150,9580,9581,10142,9249,9603,9477,9585,9599,9111,9620,9101,9103,9110,9651,9652,9653,9106,9107,9108,9145,9146,9235,9991,9250,9251,9990,9992,10154,10145] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [13563,13566,13568,13557,13552,13539,11181,11555,13553,13217,13570,13569,13228,13243,11556,11554,11559,11924,11926,12328,12337,11908,12324,12737,12314,12318,12315,12740,12747,13233,12748,12752,11909,11899,11902,11912,11196,11188,11191] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [7657,7673,7676,7677,5484,5489,5460,5481,5455,5456,5708,7679,5486,5774,5731,5732,7658,7668,7701,7675,7695,7938,7925,7926,7927,7709,5493,7714,7423,5007,7924,7699] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [6572,7022,6554,6556,6546,7021,6975,6977,7053,7054,7018,7293,7292,7256,7262,7264,7290,7297,7298,7303,7305,7265,7267,7268,7279,7280,7237,7243,7294,6934,7291,7333,7336,7296] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [4424,10598,4248,4240,10597,10599,10254,10564,10565,10567,10569,4422,4423,4236,4247,4237,4620,4617,10255,10256,4429,4250,10545,9644,10573,10544,10541,10566,10572,10270,10627,10625,10257,9973,9975,10249,9641,9982] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [11229,11226,11228,13573,13569,13566,13568,11572,11933,11934,11565,11568,11569,11559,11238,11239,11587,11588,11607,11584,11927,11926,11932,11929,11938,12024,11947,11210,11211,11573,11576,11208,11207,11196,11212] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [8368,6876,6868,6881,6883,7371,5523,5525,7373,6794,6830,5554,6820,6821,6822,6864,5522,5535,5537,6921,5527,7357,7369,6902,8367,6818,6824,6826,4967,5410,5411] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [13352,13040,13180,13182,13189,13156,13073,13074,13131,13188,13191,13336,13329,13010,13339,13349,13351,13124,13125,13521,13107,13106] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [8281,8313,8314,8315,8511,8512,8652,8875,9320,9323,9324,8883,9318,8649,8650,9316,8513,9352] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [5013,5014,5018,5019,5020,5022,5038,5193,5192,5189,5424,5036,5197,5198,5047,5025,5046,5446,5433,5437] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [7217,7313,7392,7395,7399,7202,7409,7410,7207,7211,7224,7316,7386,7082,7083,7344,7306,7084,7092,7304] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [9446,9448,9838,9839,9867,9859,9860,9855,9864,9869,9871,9898,9432,10996,10997,14044,14019,14043,14053,14076,14075] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [4717,4720,4707,4708,4716,4692,6310,5560,6302,5559,5564,5568,6827,6831,5570,6802,6804,6342,6361,6362,5572,6323,6324,5563,6828,6829] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [10634,10635,10636,10633,10641,10670,10254,4589,4593,4595,10607,10644,4790,4791,4613,10280,10313,10314,10315] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [2183,2411,9617,9618,9697,2167,2395,10046,10048,1696,9715,9710,9716,9717,10042,1724,1723,1709,1710,2166] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [11763,11400,11401,11282,11415,11416,11271,11272,11247,11217,11218,11219,11283,11244,11245,11234,11240,11246,11635,11643,11766,11648] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [13940,13941,13942,1434,1648,13964,13966,1647,1643,1645,1408,1424,13968,1431,10072,10073,10074,10060] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [4055,4266,4072,4071,4282,3874,4267,4268,4446] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [4763,4798,4799,4760,4759,4756,4758,6893,6761,6762,6769,6770,6759,6765,6768,6760,4768,4797,4745] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [12503,12504,12505,12506,12507,12508,12100,12102,12263,12488,12490,12246,12244,12247,12535,12544,12549] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [8961,8960,8962,8728,8967,8971,8972,8979,8970,9514,9529,9530,8890,8983] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [10091,9453,1465,10092,14038,14039,1462,14070,14062,14068,14061,9590,10116] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [12540,12541,12518,12538,12227,12229,11972,12016,12113,12115,12222,12219,12220] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [6773,4835,4837,6802,6804,4709,4720,4716,6362] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
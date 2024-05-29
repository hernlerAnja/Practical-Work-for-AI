
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
        
        load "data/3HIZ.pdb", protein
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
 
        load "data/3HIZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5375,5377,5378,1514,1515,5340,5341,2230,1516,2340,2341,6131,6,6120,6130,6132,6144,2228,6607,6609,6613,6645,6644,6646,5373,5374,5376,6589,6821,6811,6585,6805,6889,6808,6804,6788,6795,6124,5055,5056,5057,5058,5372,5338,5060,5064,5066,2342,5342,5062,5084,5424,5095,6618,6614,6617] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [1532,1602,6708,6709,6710,6711,2337,2338,2340,5,47,49,50,2378,2379,2375,2377,2408,2398,2399,2407,6764,6,2368,2369,6643,6644,6646,6670,6671,6672,6673,6788,6762,6772,7433,5066,6678,6679,6680,6681,6674,6675,2342,1530,1531,6720,1574,2371,6641] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [6878,6880,6800,7478,6495,6496,6516,6517,7477,6497,6258,6259,6260,6303,6304,6273,7387,6969,7388,6945,6970,6802,7467,7468,7470,7469,6879,6884,6891,6897,6895,6896,6326,6900,6915,6928,6926,6537] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [5750,1104,5718,5748,5749,885,884,886,883,165,166,167,170,171,175,5714,1099,1121,1122,5440,5441,736,162,161,5461,1123,5445,5469,5471,6831,6837,6840,6844,5439,5413,6835,5774,5775,6860,5738,5465,5436] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [4598,4602,4604,3010,4585,4383,4569,4570,4571,4385,4338,4384,3003,3011,3007,3016,3017,8791,8803,8819,8820,8789,3012,4618,4619,4596,4597,8784,8785,9127,9114,9115,4590,4595,8802,8807,2996,2997,2998,2999,4334,8827,4856,2985,4858,4575,4862,4342,4572] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [9473,9476,10183,10185,10186,2845,10223,3808,9503,9502,3796,5487,3640,9477,9475,9509,3780,3782,9508,9512,9500,9450,3630,3632,3768,3814,2832,2837,2838,3815,3767,3634,3639,3635,3638,10222,3637,5498,9444,9445,9442,9452,9448,3624,3445,3436,3435] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [6766,7182,7183,1630,1631,2397,67,87,89,2410,74,82,83,84,91,7161,7162,69,2404,1592,6749,1628,117,7190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [3706,3709,2979,2980,3008,3037,8795,8802,8592,2947,2948,8586,8591,8587,8593,8575,8776,3036,3005,8596,3689,3693,8581,8579,3724] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [5150,7988,7985,7986,7987,7992,7995,7996,7997,7998,3649,3652,3653,8036,8037,8038,5496,5497,5498,3637,5482,3728,3716,3717,3729,3731,3742,3734,3737,3457,3675,5147,5148,5161,5159] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [2983,2992,2993,2994,2995,2996,3723,3750,3306,3307,3308,4852,4876,4879,4880,4862,3293,5175,5179,5182,3721,3728,3726,3730,3732,3724,8054,8052,3736,5147,5154,5156,5157,4844,4850,4853,5159] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [2551,2566,1481,1492,1493,1479,1491,2221,2538,5334,5675,5676,6102,6136,6137,5633,2558] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [1984,2161,2162,2124,2127,2163,2164,2125,2093,1926,1950,1951,1955,1956,1992,1947,1948,1982,1817,2470,1929,2469,2471,1727,1728,1815,1949] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [31,35,6922,20,23,25,2422,55,58,60,80,77,79,36,38,40,6457,6464,6912,6419,6440,6449,6452,27,29,2420,6427,2428,2446,6429,6430,6431,6437,2429,2413,6910] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [1223,1226,1209,1210,3521,3523,3515,3514,3759,3751,3752,3755,5200,5201,5202,1211,5519,3749,5189,5191,3487,5177,3746,3747] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [3692,8062,8063,8064,8546,3675,3690,3691,3693,8581,8579,8580,8034,8044,3732,3724,8802,8547,8811,8543,8591] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [8923,8930,8934,8939,9088,9022,9060,8977,8979,8920,9080,9081,9082,8968,8980,8951] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [8670,8673,8674,8678,8679,8743,8845,8685,4323,4329,4330,8828,8658,8744,4294,4376,4349,8842] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [2592,2595,2596,2597,5629,2578,5637,1089,1091,5601,5605,5607,5609,5657,1060,1082,5636,1051,5665] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [2479,2514,1735,2462,2463,1733,1734,2506,2220,2189,2188,6388,6395,6397,2241] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [5044,5043,5067,6678,6679,6681,6676,6677,6719,6652,7884,7886,7887,6683,6687,7906,7907,6655,4790,4791,4792,4793] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [5190,5206,5173,5215,5183,5192,4891,5174,5212,4894,3540,3541,4895,3287,5170,3518] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [1,4,36,37,38,39,6456,6152,6471,6885,6889,6887,6476,6886,6888] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [5094,5421,5418,5419,5447,5456,5453,7976,6559,6560,5128,6827,6588,6826,5446,6589] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [583,591,540,589,538,539,546,592,333,610,327,514,516,510,670,621,616,619,671,326,339,340,342] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [3478,3483,3589,3590,3588,3499,3508,3562,3507,3513,3487] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [1103,5689,5725,5726,5728,1072,834,831,832,833,806,809,865,1102,1104,1106,5690,5692,1080,1081,1083] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [7441,7462,7232,7565,7607] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [4230,4470,4472,4436,4229,4437,4403,4404,4481,4503,4246,4228,4412] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [8582,3680,3363,3364,3365,3700,10313,3375,3376,10348,10350,3366,3368,3369,8577,10312] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [6878,6880,6579,6534,6551,6581,7478,6516,6517,7476,7477,7473,7475,6580,7491,6535,6537,6536,7482] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [4460,4462,4708,4697,4699,4700,4669,4698,4029,4056,4020,4022,4021,4673] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [10263,10297,10296,10265,2885,2887,2902,3374,3383,3384,2903,2886] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
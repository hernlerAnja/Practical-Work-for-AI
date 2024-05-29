
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
        
        load "data/4OVU.pdb", protein
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
 
        load "data/4OVU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5075,6627,6628,6622,6626,6653,6654,6655,6594,6661,6652,6687,6689,6690,6679,6719,6720,5102,5104,5432,5433,6598,6829,5382,5383,5384,5385,5386,5387,6596,5069,5071,6630,5076,6664,8104,5052,5053,6696,6692,5089,5097,5066,5065,5101,6680,6681,6682,6799,55,57,6781,7513,53,7512,77,6772,6773,6129,6898,6814,6817,6797,6804,6800,6820,6827,1515,2340,2341,2342,5350,2338,2339,1531,1532,2367,2368,2369,2371,6718,6721,14,3,4,13,24,25,6,2337,2379,7,8,2366,2399,78,6140,6139,6141,5067,5043,1538,6729,6728,8082] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [5489,5491,5506,8184,8192,8234,8176,8182,3751,5496,5498,3614,3616,5490,5492,5505,5507,3752,3792,3621,3623,3624,9752,9753,3633,3636,3637,8235,9723,9721,8194,6554,3646,3648,5499,9785,9750,9784,9760,9761,9793,5454,5482,6848,5481,5483,5464,6836,6553,6569,6570,6571,5456,9733,6855,6857,6862,3764,3767,3721,5170,3712,5168,3715,3718,3725,3727,5156,5157,3441,3700,3701,3657,8230,3611] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [2986,2997,2998,2999,3000,3001,4580,4344,4348,4349,4393,4394,4347,8961,8960,8976,8977,8978,8965,3004,2980,3009,4867,4578,4581,4582,4584,4583,4351,4861,4869,4870,4871,2996,4324,4335,4336,4339,4318,4317,4832,3705,3707,8953,4594,4607,4603,4605,4390,4392,4588,4613,4615,4627,8943,9308,9311,4606,8945,9306,4365,4367,9319,8240,8242,8260,8251,8247,8248,8249,8250,3714,3716,8246,4328,4857] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [10651,7673,7678,7680,7682,7688,8690,3652,3667,3669,10612,10613,10614,8740,8262,7637,7638,8256,7684,8319,8320,8321,3650,3651,3653,8232,8267,8268,8264,8280,7612,7639,7633,7635,7672,7646,8206,7614,7617,7640,7644,10641,7642,9620,7657,7660,8709,8710,8711,8712,8714,8688,8686,8738,8739,8713,8281,8677,8678,8241,8258,8259,8260] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [8950,8951,8952,8953,8968,8754,8934,8704,8967,8969,3686,3690,3693,3682,3684,2996,3707,3708,8961,8959,8960,2980,2981,8948,8949,3038,2998,3036,8947,2948,2949,3035,3037,8763,8762,3674,3675,3676,3677,8738,8733,8736,8737,8743,8749,8701,8702,8714,8230,8240,8241,8242,8258,8259,8260,8703,3700,3694,3695,3659,3678,8744,3714,3716,8246,3713,3654,3661,8740] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [7551,7557,7549,7547,7550,7555,7556,7442,7467,6954,6978,7468,6590,6268,6269,6313,6281,6282,6267,6889,6525,6526,6909,6910,6893,6905,6335,7531,6935,6937,6810,6811,6888,6887,6505,6506,6333,6906,6904] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [1627,1628,1629,1630,1631,1624,2397,95,97,7242,90,92,102,110,76,2411,82,125,7263,7239,7241,7270,6775,6758,7296,7297,7298] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [4660,4662,4127,4128,4129,4130,4115,4086,4153,4659,4056,4653,4634,9300,9295,9301,4116,4066,4428,4430,4065,4143,4650,4683,4064,4604,4605,4661,4588,4401,4606] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [6846,6849,5783,6852,6869,6533,5814,5815,6534,5757,5758,5759,5784,5422,6840,5454,5474,5480,5445,5449,5450,5470,165,159,877,878,728,1121,1123] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [5655,5639,5342,5343,1479,5683,5684,5685,6111,6112,6146,6145,2218,1482,2551,1481,1491,1493,2538,2539,2221,2542,5643,2555,2558,2571] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [7646,7647,7614,7618,7620,7645,7643,8218,3644,3645,3646,3648,8207,8208,9692,9693,10580,9650,9652,9653,7653,9651,3642,7654,7656,9659,9654,7582,7583] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [10623,10624,10625,10660,8718,8633,8719,8720,8721,9418,9419,9421,3384,9395,8757,9384,9396,9382,9386,9388,9392,9387,10657,10621,10648] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [8667,8670,4343,8669,8832,8836,8837,8815,8816,8822,8868,8870,9003,4338,4303,4358,8901,9002,8657,8662] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [7690,7692,8690,10688,10717,10766,10715,10716,7673,7676,7677,7678,7679,10687,10714,7684,10678,7675,10792,7674,8632,10724,10725,10726,8625,8722,8723,8686,8654,8689] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [6140,6153,6139,6141,6163,2213,14,2230,4,13,15,21,23,24,25,5349,1515,1516,5350] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [1136,755,758,761,746,738,1069,1064,1065,1068,1038,1093,1133,1054,1139,1143,1146,1150,1151,1062] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [5734,5735,5737,861,6036,6064,1105,1106,857,858,859,860,5768,822,823,824,825,826,819,801,5732,5733,6069,6072,5736,6063] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [8365,8366,8431,7691,7712,8318,8319,7692,8305,8314,8316,8357,8660,8661,8689,8643] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [5194,5204,5209,5186,5193,3736,3731,3733,3471,1211,1210,1226,3495,5211,5528,5538] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [1136,761,709,738,720,762,1069,826,1094,1095,1096,1097,726,727,1133,1103,877,878,876,1067] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [3684,8754,3399,3400,3401,3402,3403,2932,8762,2948,2949,3052,8746] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [1080,1081,1083,5701,1072,5737,1105,823,824,825,826,1071,798,801,5698] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [4125,4135,4136,4137,4450,4207,4208,4440,4441,4370,4371,4404,4250,4251,4233,4408,4409,4232,4411,4372] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [3495,3498,3547,3573,3574,1226,3492,3471,3483,3461,3462,3463,3467] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [4708,4709,4006,4469,4471,4013,4004,4005,4007,4008,4039,4040,4041,4707,4706,4711,4715,4717] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [2543,2221,6171,2542,2189,2190,2220,2463,6392,6397,6398,6399,6404,6406,2478,2479] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [10498,10497,3420,3792,3618,3619,3622,9753,10461,9751,2829,10460,3799] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [6880,6117,6179,6364,6365,6496,6881,5775,6498] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [6897,6480,6485,6895,6902,6482,47,6497,6456,6454,12,6479,6481] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [8505,8504,8506,8507,7931,7805,7883,7884,7759,8537] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
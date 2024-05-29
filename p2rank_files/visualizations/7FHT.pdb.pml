
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
        
        load "data/7FHT.pdb", protein
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
 
        load "data/7FHT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2897,2895,9920,9921,8673,8664,8667,8672,9954,2874,2815,2816,2818,2820,3298,3296,3297,2888,2893,3284,9913,9915,2859,8680,8919,8918,8920,9812,9826,9827,9829,9813,9833,9834,9910,9924,9931,9933,9934,9658,9660,8888,8678,8832,8950,8677,8925,8682,9677,9945,9950,3302,3305,8921] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [297,5685,5687,5689,6087,6088,6089,289,5607,5610,5612,473,546,579,1459,302,305,307,545,550,517,6103,520,522,1445,1446,1289,282,1306,1329,1305,1321,1467,1279,1287,1564,1566,1567,6097,1546,1548,1288,1574,1578,5615,1554,1555,1587,1461,1543,1557,6094,6099,549,6082,6090,6095,5654,6076] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [3095,8451,3096,3103,3105,3100,8472,8474,8395,8397,4362,4363,4391,4395,4404,4406,8384,8865,8867,8870,8871,8861,4351,4354,4356,3320,8880,8884,3318,3097,4084,4085,4086,4087,4104,4386,4385,4374,4375,4381,4382,4387,4242,4243,4244,4127,4265,8875,8878,4365,4372,3347,4257,4258,4259,4260,3344,3345,3315,3348,3349,3377,3271] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [8682,9803,9716,9700,9805,9688,9717,9689,8683,8645,8651,8703,8701,9259,9261,8702,8815,8647,8649,9288,9283,9286,9287,9282,9258,9268,9315,9284,9293,9285,9807,9810,9811,9813,8831,8832,9264,9263,9806] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [746,917,1346,1436,1437,1438,1345,1329,1317,944,1321,889,891,893,457,1439,1440,1443,1444,1446,282,915,455,307,308,274,440,270,271,911,909,922,327,328,276,279,897] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [3690,3691,3253,3254,3255,3125,3106,3126,3251,3688,3685,3686,3238,3695,4234,4235,4236,4237,4238,4241,4242,4244,4127,3544,3720,3742,4143,4144,4115,3068,3707,3069,3070,3072,4117,3712,3715,3709,3711,3713,3714,3080,3074,3077,3105] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [7052,6522,7041,7043,7044,7048,7042,6951,6520,6519,5862,5864,5917,6527,5918,6045,6170,6046,6047,6502,6521,6030,6516,6494,6496,6498,6934,6922,6549,5872,5897,5898,5860,5866,5869,7051,6923] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [7071,505,6884,499,6894,7072,6891,6892,7051,5872,5879,5882,5887,5888,5892,5895,5897,6934,513,6110,6112,507,7148,7162,7163,7169,7171,7172,497,498,98,99,7178,6893,7183,6910,6911,7153,7066,7065,6169,6047,6136,6107,6063,7050] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [1704,1708,1714,1710,1712,1707,1716,1717,1720,2688,2684,2685,2686,2687,2695,2641,4488,4495,1211,4493,4494,4879,4880,1248,1249,1496,1212,1176,1715,1711,2694,1187,4515,5452,2653,5454,4499,4512,4513,4492,4491,4496] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [11007,7290,7291,11040,11041,11042,9620,9582,7677,7309,7296,7289,8233,7288,9862,10081,7101,10071,10075,10082,7100,9863,10079,10072,10073,7310,7312,9583,11039,11049,10077,10083,10995] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [10074,8273,7310,7311,7312,11005,8271,8272,8274,9862,7101,10071,9863,9867,6816,6854,10439,10050,10051,10052,10053,10055,10057,10058,10054,10047,7319,6817,7320,7317,7325,8231,11006,11007] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [486,7148,7172,96,497,98,99,7179,7182,7183,499,5887,7160,7158,7192,19,21,490,7153,7155,7188,64] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3322,8894,8895,3321,8870,8459,8470,3094,3280,8462,2885,8856,8857,2896] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [4516,4518,4512,4513,4524,4294,4520,1686,2072,4047,4522,4523,4009,4010,2652,2653,5486,5487,5488,2650,5489,4515,5496,1688,1690,1691,1683,1684,1685,1704,1705,1707] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [482,5677,5678,480,95,523,97,5886,6113,5885,6114,524,6072,5686,5883,293,296,5688,82,85,86,87,88,84] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [2072,1679,1680,1686,1687,5489,2636,2041,2045,2046,2037,5487,5488,2650,5518,2642,2643,2644,1684] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [9197,8406,4925,4926,8415,4898,4899,4900,4901,9212,9213,9214,9201,8429,9202,9203,9196,4346] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [10054,10046,10047,10438,10412,10051,10053,10437,10439,8273,10990,10997,10998,8272,8274,11003,10414,10991] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [10459,2838,10460,10482,10483,10485,3623,3634,3640,3624,3639,3641,3627,3628,10276,2826,2828,2829,2830,2850,2852,2836,10283] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [2092,2093,2090,6435,6436,5644,5618,5642,6430,6431,6441,6434,6447,6448,5621,2118,2117,5630,5627,5628] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [1304,1319,1597,1599,1320,1322,960,962,1814,1313,1610,1611,1590,1594,1595,1577,1578] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [7080,7085,6160,7076,7083,6159,7123,6161,6186,6196,6194,7134,7133] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [842,7697,7698,826,830,7722,7723,841,7514,843,52,54,40] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [3369,3394,4324,4325,8911,8910,4276,4277,4336,4337,3347,3368,4269,4278,4281] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [9964,9966,9977,9683,9692,9693,9330,9332,9334,10181,10225] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1372,1004,1085,978,979,980,1054,1014,1354,1388,1353,1084,1123] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
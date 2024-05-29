
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
        
        load "data/6YF8.pdb", protein
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
 
        load "data/6YF8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1553,1567,1572,1556,1558,3294,1565,2899,3303,1563,2829,2821,2819,2813,546,1459,549,1460,1461,1467,3310,1462,1466,3308,3317,3296,3313,3304,3305,3300,2868,3290,543,1574,1576,1577,1287,1288,1289,1589,1584,1587,1588,1597,1593,1279,2808,2809,2826,457,305,307,1444,1445,1446,289,1329,1322,1306,2901,2903,3302,2880,2824,520,302,522,297,517,550,551,473] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [6051,8533,8534,8541,8543,9536,8538,9804,9808,9783,9797,9796,6053,6061,6065,8782,8753,6052,6056,6045,9755,9773,9777,9787,9679,9680,9681,8786,8787,8790,8815,9686,6060,9753,9794,9687,9559,9560,9665,9666,8693,9517,9519,9534,9795,5651,5647,5571,5573,5575,5649,5569,5577,9785,6048,6050,5616,6037,6038,6044,9779,5581,6041,6043] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [6982,6289,6873,6981,5879,6290,6441,5992,6431,5860,5880,5878,5831,5834,6866,6466,6470,6889,6890,6471,6481,6488,6861,5826,6888,6458,6862,5822,5823,5824,5828,5858,6007,6008,6132,6434,6436,6437,6983,6984,6987,6988,6990,6435,6432] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [1436,1437,1438,1439,897,1345,1443,1329,1317,1322,580,456,457,892,893,1440,326,890,307,308,1444,1446,328,281,282,917,922,926,1346,887,274,440,909,911,914,271,272,270,327,276,279] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [3692,3546,4230,4231,4232,4233,4234,4237,4238,4240,3688,3697,3131,3244,3690,3080,3709,3073,3075,3076,3078,3079,3721,3722,3726,4146,3711,3714,3715,3716,3717,3132,3110,3259,3260,3261,4239,3112,4129,3083,3086,3074,4117,3744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [8691,8816,9127,9128,9129,8563,8689,8676,9123,9124,9126,9658,9660,9663,9664,9666,9656,9659,9657,8982,9574,9576,9147,9150,9158,8510,9145,9146,9173,8564,8544,8506,8512] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [4079,4368,4260,4261,4087,4089,4088,4105,4129,3093,4347,4361,4370,4371,4350,4352,4382,4106,492,500,504,497,498,499,3096,3101,486,496,95,97,99,4358,3351,3352,3353,4253,4254,4256,3106,3108,3110,3261,3277,3383,4239,4240] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [1211,1722,1725,1176,1212,1726,1727,1720,1721,1221,1248,1249,1496,1724,1714,1715,1187,2700,2691,2701,2690,1226,2694,10804,10805,10806,2693,10790,10797,10798,10300,10302,10301,9921,10807,1717,9934,9935,9937,9915,9916,9914,9917,9910] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [9439,9441,2658,2659,9442,10839,10840,10842,9456,10841,2082,9944,9935,9936,9937,9938,9942,9946,9947,9950,9716,9479,9715,10807,1717,9451,1694,1695,1696,1697,1698,2649,10795,10838,10849,10818,1700,1701,1715,1699,1496,1714] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [6986,6990,6830,6831,6833,6832,7115,5858,6989,7006,7011,7010,7112,6102,6103,6106,7003,6099,5848,5849,8732,8734,8735,8736,8740,8335,6101,5856,5844,5850,5841,6866,6850,7125,6873,6874,6848] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [7233,7253,7254,7255,4508,4509,4511,8103,8105,8106,5456,8109,4289,7040,7262,6793,7239,4290,7252,4518,6755,4489,4490,4487,4488,5420,5421,5418,4492,4495,4493,4494,8142,8143,8144,6753,6756,8151,7260,7258,7264,7265,8100,8101,8102,7263] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [8722,7091,7094,7096,7103,7102,8732,8734,8728,8736,8740,8335,8723,8724,8297,8300,8726,8253,8331,8312,8333,6832,7115,7127,6833,7131,7135,8255,8257,8259] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [4894,4896,4897,809,808,814,815,842,30,32,31,843,4922,28,4713,825,830,836,837,826,829,4921,52,54,55,40,4339,4343,4337,4338,4453] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [496,98,84,96,2892,3097,3100,3286,3327,3328,3096,3095,495,497,2900,88,296,2902,2886,523,524,480,481,482,293,295] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [6075,6049,8760,5639,5640,6034,8759,8332,8334,8320,8318,5650,8529,8532,8718,8321,8322,8324,6076,5845,5848,5849,8732] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [4347,4371,4350,4352,4378,486,496,95,97,99,497,498,499,64,25,17,4359,76,19,21,4358] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [4049,4011,4518,4012,4514,4515,4516,4519,4520,5462,5463,4048,7233,4508,4511,5456,5453,5454,4290,4521,4524,5409] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [1548,2101,2102,2103,2126,2127,2100,3642,2128,2844,3625,3626,3629,3630,2835,3643,2856,2858] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [4399,4401,4403,4662,4663,4414,4415,4112,4113,3759,3761,3763,4121,4122,4618,4383,4381,4382,4106,4104] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [6112,6115,6083,9744,6084,9761,9750,6404,6405,6138,6335,6337,6341,6350,6355,6356] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [6755,4489,4490,5420,5421,4484,6770,4876,4875,6756,8143,8144] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [9197,9551,9825,9827,9828,9829,9830,10088,9807,9808,9820,9826,9535,9536,9552,9841,10044,9840] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [6092,6058,8806,8807,9691,8805,9758,9759,9695,9698,9704,9705,9696,9700,8841,9703,9748] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [5580,5583,5589,5592,6387,5604,5606,10348,10346,10347,5590,6386,6370,6374,6380,10323,10321,10139,10138] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [1312,1824,959,961,963,1032,1321,1620,1621,1607,1609,1313,1868] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [7145,7147,7406,6865,6503,6505,6507,6857,7362,6850,6849,7157,7159] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [8796,8797,8799,7062,9047,9096,9048,9027,9029,8767,8768,9049] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [9347,9382,10028,10019,10050,9187,9566,9384] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [7464,8274,8276,8267,8288,8290,7640,7641,7656,7458,7463,7665,7655,9077,9078,9079,9062,9066] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [7337,6495,6661,6696] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
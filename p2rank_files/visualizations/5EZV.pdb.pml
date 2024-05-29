
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
        
        load "data/5EZV.pdb", protein
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
 
        load "data/5EZV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10731,10732,10733,10734,10735,11326,11325,10876,11999,12000,11321,11330,11881,11882,11883,11884,11987,11985,11986,12008,11972,10719,10724,10726,10729,10741,10712,10730,11306,11310,11311,11318,11319,11127,11128,10077,11872,11874,11875,10883,10873,11991,11853,11866,11871,11873,11870,11869,11865,11684,11689,11421,10743,10868,10744,10866,10867,10869,2673,2674,11995,12007,10072,10208,10209,10210,10218,11453,11444,11449,11324,11438,11439,11418,11420,11417,10514,10515,11448,10224,11446,10225,10260,11269,11308,11280,10073,10076,11458,11456,11673,11687,11466,11678,11676,11679,11680,2670,2672,2700] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [13079,13080,13081,13082,13218,13222,13225,13227,13083,13084,14361,14229,14234,14236,14250,14252,14233,14347,14349,14353,14355,14232,14348,14362,14246,14248,14243,14334,13092,13075,13073,13070,7497,14237,14238,14235,13093,13215,13216,13217,14227,14216,14226,7486,7487,13026,13061,13064,13067,13038,14368,14370,14369,13682,13806,13684,13808,13679,13683,13800,13782,12561,12559,12560,12562,12570,12854,12574,12575,12576,13810,12427,12428,13818,13820,13815,7485,12424,12426,13090,12423,12566,12567,12569,14010,14012,13801,13828,13829,14009,7513,7515,14042,14046,14053,13664,13665,13666,13669,13673,13677,12855] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [7701,7640,7668,7671,7672,7673,8250,8278,8080,8257,7574,7576,7577,8061,7651,7643,7984,7588,8251,8253,7662,7664,7665,7666,7589,7670,7709,7652,7957,8078,7968,7982] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [9894,4515,4500,2683,2684,4502,4503,4521,10886,11857,11858,2610,10894,10923,4523,10842,10896,10844,10846,10849,10850,10853,10743,10868,10744,10892,10866,10867,10077,11874,11875,10883,10888,10729,4522,2613,10889,10066,10069,10080,10083,10076,10067] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [7497,14237,14238,13234,13235,13236,13237,13272,7479,9343,9344,9345,9346,14220,9334,9338,9339,9365,14219,9330,7406,13199,13201,13193,13198,13093,13216,13217,13241,13189,9358,12221,13191,13245,13243,9366,9364,14221,13200,13270,7418,7416,13091,7496,12424,12426,12420,12431,12427,12428,12434,12245,12417,12418] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [6042,6044,5517,5519,6037,6038,5946,6041,5386,6035,5571,6034,5107,4961,5536,5538,5006,5007,5008,4960,4957,4958,4963,4964,4968,4969,4973,4974,4966,5123,5121,5961,5962,5563,5545,5560,5941,5934,5568,6036,5542,5548] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [1190,1191,1194,1195,1197,1187,1188,1189,1094,1114,1087,1115,725,728,263,108,110,693,695,699,702,107,111,717,543,676,705,1196,1099,277,162,164,163,113,279,116,118,119,123,124,114] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [157,3729,3731,156,300,632,284,286,3704,3748,3698,3699,172,173,28,30,654,653,83,3762,29,287,283,153,155,171,149,81,88,3507,3508,3488,3509,3749] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [5001,8534,4880,4879,8527,8526,5130,5496,5497,4933,8333,8334,8335,8578,8576,8577,8516,8525,8513,5473,5474,5475,8314,5128,4997,4931,5015,5131,4930,4999,5016,5000,5017,4938] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [9628,9629,7432,7433,12195,7430,12228,7374,7370,7371,7373,12199,12193,12198,7441,7382,12189,9615,9616,9618,9619,7342,7333,7306,7308,12159,12161,7336,7311,7105,7106,7310,7343] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [1276,1277,3291,1285,1287,1268,1278,3290,1303,1281,1437,1282,3015,3169,3170,3172,3190,3191,3192,2991,1436,4353,3017,3018,3156,3154,4612,3271] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [2569,9848,2510,2531,2534,9808,9810,9811,2500,2502,4780,4781,2626,9844,2568,9847,9819,9820,2275,2276,9838,9812,9803,9807,9798,9799,9800,9801,9809,2509,2543,2542,4770,4771,4772,2506,2539,2540,2504,9878,9877,2576,2566] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [10232,10233,10512,10514,10515,10225,10486,10191,10188,10209,10210,10483,10719,10722,10724,10726,10736,10739,10712,10732,10180,10185,10192,10193,10570,10575,10553,10554,10551,10558,10704,11311] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [9235,9404,9262,9263,9403,9405,9412,9414,6774,6769,6776,6793,6812,9237,6308,6311,6314,9406,9410,5828,5829,6305,6304,6820,6810] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [509,511,518,494,966,968,2220,937,961,992,994,2117,2129,2190,2192,2221,2150,2151,1007,2225,2235,2236,2238,2242,2245,2149] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [6123,8087,8089,6125,6128,6278,6115,6129,6131,7963,7976,7973,9197,9196,7961,7800,9455,9456,8069,7996] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [1466,1467,1470,1930,4393,1463,1464,1473,4562,1954,1937,1973,1971,980,982,1250,981,984,1974,1981,1978,958,1495,1965,1497,4561,4569,4560,4556,4559,1935,4418,4419] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [1366,1608,743,745,781,1567,774,1592,1593,1595,1092,1365,747,1606,1607] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [9488,12400,7521,7524,7525,12341,9689,12378,12367,12375,12399,9508,9525,9489,9493,9543,9507,9528,9688,12407,7543] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [5624,6434,5614,5620,5586,5588,5617,6448,6408,6438,6447,6449,6435,6436,6437,6442,6433,5590] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [8173,13154,13155,13167,9577,9446,13133,9574,9580,13182,9583,13164,9597,8105,8163,8164,8165,8166,8108,8116] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [4664,4680,4682,4665,4672,10049,10016,9991,9992,9990,4698,4838,4840,4841,10047,10048,4643,2738,4645,10046,10056,4650,2720,4667,2719] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [12918,13138,12931,12914,13157,13135,13124,8132,8143,12515,12512,12517,12521,12524] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [8464,8463,8459,8460,8462,8483,8734,8461,8858,8850,8861,8844,8845,8467,8465,8735,8458,8676,8846] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [3310,3311,3312,10818,4738,10833,4732,3339,3340,3342,3338,10805,10806,3313,4602,4752,4754,10784] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [12536,12537,12543,12544,12539,12542,12830,12863,12561,12560,12531,12902,12903,12922,12923,13088,13089,13073,12912,12919,12907,12925,13053,13054] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [623,3952,3953,3954,3955,622,624,3486,3501,4057,3505,3509,3932,3933,3504,3859,3532,3491,303,631,3837,3838,3858] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [7570,7578,9481,9534,8258,8259,9503,7557,7558,9491,9501,9485,9496] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [5843,5784,5815,7059,5337,5352,5813,5354,7081,7064,7080,7067,7072,7029,7031,6968,5361,7060] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [4653,4658,4660,4642,4648,4638,3437,3438,3462,4689,2752,2772,2765] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [3025,2867,3262,2869,2841,2842,2845,3003,2995,2846,3178,3181,3000] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [7304,12151,12152,12162,13354,13352,13353,7302,7303,7336,7335,12120] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [11037,11100,11035,11036,11038,9729,11117,12038,11040,12037,12069,12064] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [10161,10164,10166,10569,10582,10173,10808,10810,10775,3324,3327,10165,3323] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [8783,8780,8885,8312,8322,8669,8670,8774,8761,8317,8327,8330,5464,5465,5475,5147,5467,8331,8335,5163,5146] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [8908,9031,8889,8928,8890,8783,8782,8927,5155,5156,5457,5458,5191,5152,9010,9000,9002] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [4626,4627,4628,4427,4433,4440,4807,4712,4425,4441,4723] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        
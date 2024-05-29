
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
        
        load "data/6NCT.pdb", protein
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
 
        load "data/6NCT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5454,5456,5455,5446,5448,8101,6519,6536,8102,8103,8144,139,6820,6821,6822,6827,6518,5471,5472,3431,3711,5126,3708,8085,8093,3703,3705,8142,8143,8139,3604,3601,3611,3613,3628,3623,3626,3627,3691,3690,3650,3614] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [6490,6854,6491,6511,7521,7522,7514,7512,7516,7517,7520,7523,7515,6944,7407,6919,6943,6232,6233,6234,6277,6278,6246,6247,6552,6553,6554,6526,6555,6853,6858,6865,6773,6775,6771,6776,6871,7496,6300,6471,6870,6874,7433,6900] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [8819,8717,8804,8967,8844,8840,8841,8801,8818,8715,9119,8543,9003,8963,8999,8542,8544,8545,8961,8966,8716,8718,8719,8991,8993,8988,8989,8990,9020,8957,8958,8998,9036,9039,8903,9092,9093,9091,9121] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [5058,5029,5030,5034,5036,5067,5069,5038,6588,6591,6592,6587,6617,6618,6619,6620,5346,5347,5350,5397,5398,6559,6785,6782,6786,6779,6583,6769,6762,5352,6098,6094,5351,6113,6105,6106,2342,5316,5028,5031,5032,2343,5311,5312,5313,5314,5315,5349] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [9467,9498,10164,10166,10167,9466,9464,10201,10169,10170,9499,9505,3757,9474,9475,5461,5463,9507,9534,10174,3742,3782,3789,3608,3614,3788,10204,2836,2835,3611,3613,3609,3612,3604,3606,3741,3754,5472,2817,2819,3770,3777] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [5606,5620,5648,5647,5649,6076,6077,5650,6137,6110,6134,6135,6109,6114,6115,6117,2219,2220,5608,1483,1494,2223,1495,2541,2544,2553,1492,2221,2559,2560,2539,2540,5622,6111,6112,1475,1481,1484,1503,2573,5604,1446,1447,1449,2557,5307,5308,5305,5309,5310,5313,5314,5315,5612] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [152,162,163,164,165,153,154,169,6811,6814,5749,6818,156,173,177,1107,1108,5692,5724,5690,5721,5722,5723,5712,5387,6805,887,888,885,884,5435,5436,5433,5440,5439,5443,5410,5419,738,1125,735,736,737,5413,1101,5414,5415,1117,1123,1099] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [3451,3576,3726,3727,3729,3453,3454,3461,3721,3447,1226,1227,1229,5174,5175,5151,5164,3487,3452,3457,3482,3485,3489,1213,1225,3733,3568,3734,3537,3564,3486,3488,3496,3732,3717,5176,5493,5469,5501] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [6686,6738,2376,2381,1604,2367,2368,2369,2370,2401,2400,2342,1533,1534,2344,6655,6653,6654,2371,6683,6693,6645,6646,6647,6737,6615,6644,6617] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [1518,2230,2232,2215,2346,2351,2353,6118,6410,6420,6418,6409,6105,6106,6127,6128] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [4267,4268,8265,8611,8756,8760,8761,4298,4303,8610,8745,8750,8751,8836,8787,8789,8851,4317,4322,4323,4347,4310,8796,8794,8795,8266,8264] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [1736,1738,1731,1739,1729,2469,2480,2482,2486,2164,6371,6364,2464,2465,6369,2545,2191,2481] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [10386,10382,10385,10433,10434,10429,10432,9268,9213,9221,9240,10413,10416,10441,10460,10462,9224,9225,9226,10370] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [6027,6033,6028,6029,6032,5700,5701,5672,5673,5702,833,811,826,829,824,846,5699,869,870,871,5733,6001,5695,5697,5698,5730,6034,6037,865,867,868,835,839,844] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [3632,9397,7612,3637,3638,9363,9395,10284,10286,9332,9334,9366,9407,3642,3656,3659,8681,10318] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [8141,3640,3642,8176,8150,8681,8166,8169,8177,8171,8164,8165,8173,8140,7612,7611,7608,7584,7582,7563,7575,7571,7585] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [3667,3665,3666,8679,8678,8167,8168,8169,8655,8674,8681,8149,3706,8642] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [4764,5052,5017,4765,4766,4750,4751,6661,6663,7989,7991,7992,8013,5018,6657,6626,6652,5041,6694] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [833,834,808,811,1082,1085,5663,5664,5666,5700,5701,5672,5702,5639,5640,1103,1104,1105,1107,1073,1074,835] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [3001,3002,2989,2990,2994,2996,9089,4358,4359,4559,4545,4553,2999,8825,4569,4571,4593] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [6445,6126,6447,6083,6103,6127,6128,6420,6416,6418,6097,6450,6462,6859,6860,6861,6863,6867,6862,6093,6094,6095] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [10366,10364,10365,8575,9141,8660,8661,10392,8659,9128,8574,9130] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [4366,4570,4571,9072,9073,4117,9079,9080,4393,4395,4627,4568,4118] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [7840,7714,7792,8413,7668,8446,8417,8432,8433,8414] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [887,888,718,719,720,768,769,770,771,1095,1096,1098,1099,1134,1135,1138,1069,1071,1101,1140,737,748] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [3612,3615,3621,3410,3620,10240,10204,10203,10232,9467,9466] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [4369,4372,4405,4406,4375,4415,4197,4198,4130,4127,4416,4132,4115] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [4836,4548,8158,8160,4282,4287,4289,4308,4307,4283,4293,8155,8156] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [5040,1533,1534,2343,2344,5008,5009,6655,6653,6654,2342,5039,6617,6618,5018] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [5714,6069,5740,6329,6463,6067] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [10344,9307,10346,10347,9267,10386,10383,10385,10438,10439,10434,10437,10450,10452,10453,10454,10441,10460] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [5068,5102,6532,6534,6563,5421,5393,5395,6800] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [8059,7347,7554,7555,7553,7350,6578] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        

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
        
        load "data/5SXA.pdb", protein
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
 
        load "data/5SXA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6677,6702,6703,6704,6669,6705,6706,6732,6850,6740,5479,5480,5428,5429,5430,5431,5432,5433,5434,6871,5151,6647,6645,6848,6176,6865,6868,1552,2377,2378,2379,5396,5397,6186,6187,5112,5116,5118,6678,5113,5114,5120,5149] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [6314,6315,6360,7493,7601,7005,6576,6577,6641,6940,7598,7600,7602,7606,6328,6329,7607,7608,6316,6556,6382,6557,7518,6986,6988,7519,6858,6860,6939,6944,6862,7582,6951,6957,6960,6963] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [3653,3655,5554,3657,3658,3661,3662,3663,3660,3675,3676,3677,9478,9479,9476,10255,10256,10257,3674,5539,5548,5537,3806,9511,3831,10219,10220,2902,3819,2896,5543,3803,5545,9545,9546,3790,3791,3799,10227,2885,2887,5547,9484,9487,9517,9510,9482,9486,9472,9481,3645,3646,3480,3459,3468,2894,3837,3838] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [3667,3677,8261,3681,8220,3653,5554,3660,3676,8210,5538,8202,8208,8214,8218,5553,5537,3764,3765,3766,3757,3760,3751,5217,5219,3754,3480,3740,3739,3698,8256] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [7694,7704,3687,9407,9419,9378,9379,8233,7670,7671,3689,3691,9410,10316,3684,3686,9409,7698,7695,7696,7697,10314,10337,10345,10339,3708,10371,9346,9344,8232] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [6158,6192,6159,1528,2258,1526,6194,6191,6196,5730,5731,5732,5702,6219,5389,5390,1516,1518,1519,5686,5690,5694,1530,2579,2588,2594,2575,2595] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [9082,9047,9065,9108,9109,9041,9036,9039,9051,8928,8929,8927,9003,9001,4420,4413,9083,9085,9064,9070,8889,8891,4423,8851,8890,9013,4410,4408,4415,4421,4422] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [5492,5517,5521,5522,5525,6891,6897,6900,1132,1154,5495,5497,5774,5469,5806,5804,5805,5831,6895,5830,6920,769,1156,5518] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [3054,3056,3057,3058,3055,3061,4441,8875,4440,4439,8874,4394,4641,4660,4631,4627,4635,8862,8872,4646,4652,4653,4414,4389] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [5256,1258,1259,5233,3773,3770,3778,3774,3775,1244,5572,5575,5577,5574,5576,3781,5551,5585,3766,5203,5258,5581,3534,3510,3538,5245,5247] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [3586,3610,3612,3613,3506,3534,3502,3501,3503,3510,3619,3620,3782,3783,3616,3617,3625,3778,3774,3775,3772,3623,5233,3773] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [6703,6704,6732,6739,6740,6730,6731,6769,6770,6771,6733,6823,6824,6832,2411,2412,2416,2403,2402,2404,2435,2436,2374,1568,1569,2375,2377,2379,2406,6741,6779] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [8257,8292,8293,8294,8232,8282,8713,8258,7695,7696,7697,7698,7694,7668,8286,8712,8714,8267,8740] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [5781,5782,5783,5784,902,6111,6114,6112,1135,1105,5748,1104,842,1137,898,1136,1138,1139,899,864,865,859,860,855,857,866,5743,5749,6109,6110,5745,5746,5754,5755] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [6187,2267,6188,2380,2381,2386,2415,2416,2250,6209,6210,6496,6494,6506,2388,6495,2445,1553] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [6548,6532,6946,6947,6948,6533,6536,6526,6520,6953,6530,6531,6207,6209,6210,6496,6494,6502,6503,6504,6505,6506,6507,6501] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [6743,6777,6780,6738,6736,6737,6747,8108,6712,5123,6715,8130,5100,1575,4846,4847,4848,4849,8106] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [1166,1169,1172,1179,1183,1184,1093,1094,1096,1211,782,783,787,1079,1097,1101,1080,1098] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [8733,8732,8743,8701,3747,3746,3753,3713,3755,8266,8267,8268,3714,3716,8284,8285,8286,3715,8737,8738,8736,8275,8272] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [5830,5861,5862,6920,6903,6583,6584,6585,188,189,191,192,5805,5831,6904,199,200,204] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [9319,10506,10504,9279,10498,7711,7712,7708,7709,10398,10399,10400,10439,10437,10438,9280,10436,10468] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [6899,6906,6913,6605,6622,5529,5530,6905,6907,5538,8220] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [1126,1128,768,1127,1129,1130,767,769,918,919,1136,1098,1100,1105,1133,782,800,801,802,751,750,1102,1132,1166,1169] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [4730,4105,4697,4072,4071,4103,4073,4706,4477,4480,4200,4709,4188] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [4052,4045,4080,4518,4754,4755,4725] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [236,10087,10088,949,233,239,241,238,9618,9619,10086,10126,10128,10155,10122,245] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [8563,7831,8532,8530,8531,7910,8540,7957] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        
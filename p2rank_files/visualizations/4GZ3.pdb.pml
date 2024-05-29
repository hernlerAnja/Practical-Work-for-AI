
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
        
        load "data/4GZ3.pdb", protein
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
 
        load "data/4GZ3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5590,4656,5591,2720,2721,4031,4658,1468,1469,2715,2716,2719,4660,5596,5597,5575,5582,5584,5586,5589,5592,4002,1493,4021,4030,4639,3999,1919,1951,1952,1960,1920,1953,1959,1962,1966,2696,1990,2694,3022,4667,2702,3009,3021,1942,1943,5578,3978,4516,4518,4519,4652,4674,5570,5571,4469,4471,4474,4259,4261,4238,4515,4483,1982,4484,4487,4489,4491,4517,4695,4662,4666,4668,3763,5541,5562,3760,3761,3758,2543,2539,2542,2536,2537,2538] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [9492,9717,9448,9455,9460,10132,9439,9696,9463,11044,9482,9491,11048,6914,8174,6915,6939,8173,10115,10116,10118,8172,8169,11042,9719,9927,9929,11038,7412,7443,10125,9947,9949,10124,10126,9975,9977,10153,9976,9973,9972,9974,7415,11049,7419,8153,8155,8475,10114,8462,8474,8464,8147,10269,11033,11036,11024,11028,11029,9932,9941,9942,9945,11020,10997,10999] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [6377,6376,11075,6107,11069,11070,11074,11059,11063,6106,11077,11080,6080,6078,6081,6385,11043,11055,6364,6371,6373,11054,9718,9712,9716,6912,6923,6924,6925,11056,11060,6914,6896,11064,11082,11083,11047,9462,9479,9481,9482,6367,6368,6369,6342,6582,6583,6584,6922,6574,6575,6315,6536,6538,6550,6553,6879,6551,6552,11084,6401,6403,6636,6638,6606,6607,6637,9720,9724,9726,9725,6889,6338,6341,6387,6082,6083,6322,6084] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [918,925,930,921,922,923,5602,1466,1476,1477,1478,1479,1128,1450,5606,5624,5626,1136,1138,1137,661,895,5618,896,1447,1433,5598,5601,5622,4266,4267,1190,1191,1192,4001,1160,1161,957,939,941,955,4020,4021,4018,5596,5585,5589,5593,4002,1468] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [1678,2582,2583,2584,1621,1653,5620,1646,2555,5610,5614,2575,5623,1624] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [11065,7077,11068,11081,7099,7074,7075,11072,11078,7131,8037,7106,8035,8036,8008,8028] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [8171,8176,10267,6936,10260,10262,7019,6931,8179,8182,8185,7015,7016,7017,7024,8370,8371,6990,8360,8355,10257,10263,6909,6938,6937,6902] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [10601,9400,9402,10040,10540,10569,8662,8664,10539,8642,8643,8645,10536,10570,9392,9393,8682,8666,8692,9384,9385,8668,8674,8675,10602,10571,10574] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [4582,3239,5111,5079,3924,3930,3931,3939,3941,5082,3923,3929,3222,3221,5143,5109,5119,5078,5113,5116,3204,3229,5081,3209,3189,3211,3213,3198] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [1456,1463,1486,1566,1485,1564,2906,2902,1541,1536,1539,1457,1563,1538,2711,2713,2723,2726,2730,2915,2917,2918,2729,2732,4802,4804,1492,1487,1490,2720,2717,2718,4809,4805] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [8588,8589,8675,8875,10575,8889,8891,8892,8858,10636,10630,10191,10597,10598,10632,10603,10599,10606,10607,8874,10573,10634,8877,8880,8856,8879] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [2033,2262,9261,9265,9269,9264,2045,2064,2065,2066,2257,9190,2271,2026,2276,2274,2279,2280,9189,9191,9188,9178,9181,9184,9187,9278] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3807,3808,7486,7713,7715,3804,3800,7479,7517,7724,7732,7733,7498,7519,7514,7710,3712,3721,3722,3723,3724,3715,3816,3817,7518,3797] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [661,895,5618,896,869,1138,1137,5622,1104,1105,1107,637,638,876] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [3133,3424,3136,3219,3426,5149,3220,3222,5144,5117,5178,5145,5172,5173,4733,5139,5140,3414,3423,3411,5176,5174] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [1147,1148,1146,1121,1123,1015,1269,1270,1273,1268,1037,1039,1119,1040,1070,1308,1017,1018,1174,1211,1212,1213,1232,1234,1231,1242,1239,1276,1277,1279,1272] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [6306,6437,6471,6472,6473,6308,6435,6436,6208,6209,6331,6443,6438,6439,6419,6230,6232,6233,6204,6206] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3609,7533,7534,10844,3629,10780,3621,3626,3627,10805,7512,7546,7532,10802,10807,10808,10811,10776,10815,7535] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [6678,6680,6677,6620,6688,6725,6565,6567,6569,6754,6461,6462,6463,6464,6590,6592,6483,6485,6724,6722,6723,6685] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [2093,5386,2080,2082,9075,9093,9095,9092,5347,5344,5350,5353,5354,5318,2081] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [3063,3064,2014,2041,3059,3062,3058,5276,8741,8749,3056,2237,2238,2012,2013,2039,9266,9267,2267,3055,3057] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [7373,7989,7990,7991,7405,7406,11040,7996,7998,7372,7404,11050,11055] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3771,3065,3061,3064,3792,2195,2196,2197,2234,2235,2236,2238,3767,2008,3067,2007] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [2517,2737,2499,2772,2764] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [5564,1943,2192,3775,3736,3763,5542,5556] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [9823,9512,9513,9834,9832,6663,9514,9799,9801,9826] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
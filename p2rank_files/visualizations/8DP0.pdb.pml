
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
        
        load "data/8DP0.pdb", protein
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
 
        load "data/8DP0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4549,4550,4551,4555,4556,4530,4531,4564,1888,1889,1890,5996,5997,5998,6022,6023,6024,6160,5963,5964,6183,6166,6167,1276,1277,5551,5552,6177,4554,4834,4867,4868,4869,5537,5538,1915,1916,1954,1955,1953,1918,1920,1914,1901,1903,1924,1927,1930,1885,1923,1963,1962,6019,6020,6021,6049,6050,6051,6163,6056,1307,6088,6053,6084,6085,6086,6087,1306,4561,4563,5987,4911,4913] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [4334,7413,7414,7415,7416,3990,3991,8172,8183,3983,7374,7383,7385,7386,8351,8343,8352,8353,8171,8346,8184,8177,7402,7406,7407,7408,8344,3764,3751,3759,8174,3769,4333,3987,4279,4288,3992,4271,4274,4275,8694,4300,4301,4303,7417,4289,4290,4291,7421,7396,7399,7393,8704,8711,8712,8702,8188,8703,8690,8691,8719,8345,7401,4309,4310,3981,3982,4269,4270,4232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [6169,6171,6172,6174,6920,6253,6254,6255,5674,5675,5892,5871,5872,5664,5663,5661,6259,6266,5708,6832,6833,6277,6279,6300,6314,5729,5730,6271,6273,6913,6921,6805,6912] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [3779,4333,4013,4014,4022,4370,4371,4012,4017,4018,7595,7569,7570,3267,3794,3806,3811,3812,4025,3778,3780,3784,3790,4357,4329,4382,7448,4383,7470,7471,4358,4364,7472,7473,7505,4050,2626,2629,3850,4048,4049,3851,2627,2628,3269,3271,4369,4368,2611,2619,4372] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [6,7,8,26,28,740,97,98,99,104,204,116,126,573,596,626,118,122,180,181,178,203,211,574,154,595,597,517,619] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4855,1782,5515,5516,5517,5557,5180,5181,1780,2052,2058,2081,4822,4823,4824,1256,1257,1238,5579,5580,1781,1800,1802,5147,5155,5178,4853,2088,2089,2090,2079,4825] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [4696,4699,4701,4700,3099,2202,3100,2207,2209,1035,1038,1099,1097,1066,2184,2195,1072,4703,1063,1065,4402,4413,3126,3127,3537,3539,2911,4404,4405,4406,4678,3125,3526,4710,4736] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [320,321,323,293,295,322,318,319,221,223,224,219,222,256,770,772,774,358,773,396,398,40,47,49,56,71,296,249] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [3324,3328,992,5025,1010,1012,1013,3333,998,1004,1037,4694,4695,1020,1021,1045,3321,3322,3070,3317,3320,3323,3068,3315] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [7067,6772,7021,7022,7045,7046,7047,7053,7048,7049,7903,7009,7011,7012,7919,7945,7946,7947,7948,7949,6972,6973,6974,6970,7912,7913,7914,7915,7916,7918,7907,7944,7902] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4624,4646,4946,4971,4974,5939,7509,3292,4975,7526,7529,5922,7514,7516,5935,4964,7528,4976,4983,4984,4993,4995,4996,3241,3255,3259,3260] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [3261,3262,3268,3299,3300,3301,7548,3309,2613,2616,2617,3297,3296,3270,2615,2596,2597,2580,2944,2960,2961,3008,2566,2567,2578,2579,2658,2980,2636] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [5914,6918,6941,6942,6944,6945,6946,6919,6921,6816,6793,6805,6806,6817,5674,5675,5690,5693,5890,5892,5708,7956,7957] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [6808,6809,6325,6327,6328,6360,6362,7956,6788,7887,7921,7964,7929,7922,7925,7927,7954,6387,6420,6422,6798,6801] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [6750,7611,7613,6731,6733,7615,6983,6985,7016,7063,7064,7078,7080,7072,7073,7077,7020,7640,7787,7751,6751,6752] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [4103,2326,2323,4105,4134,2890,2891,2897,2903,3512,4131,4163,4164,4396,4130,4132,4133,2906,2900,4101,4402,3534,4413,3127,3531,2909,4403,2907,3513,3125] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [7178,7219,7228,7250,7188,7189,7194,7206,7147,7149,7251,7253,7207,7827,7826,7198,7177,7146] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [5832,5841,5803,5806,5773,5774,5818,1757,1769,1770,1902,1763,1761,5820,5811,5814,5807,1772,5571,5572,5850] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [4650,4660,3306,3308,4641,4649,2609,3309,4362,4661,2608,2592,2594,2597,2927,2915,4388,4389,4668,4671,3305] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [1752,1899,1757,1769,1770,1902,1758,1938,1975,1980,2001,1976,1998,5811,5814,5812] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [3548,3554,3555,4174,2327,4108,3533,4137,2248,2251,3545] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [5254,5247,5257,6203,6208,6211,4957,4960,5281,4930,925,931,4927,932,933] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [8695,3973,8148,8150,7979,7981,8195,8126,8134,3975,3961] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [4574,4575,6032,8726,4559,4560,4561,8723,6057,4562] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [1398,1365,1367,1418,1566,1862,1860,8401] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [5087,1137,5090,1077,2157] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
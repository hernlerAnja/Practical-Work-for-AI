
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
        
        load "data/5OY6.pdb", protein
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
 
        load "data/5OY6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6833,7717,6832,7806,7807,7808,7809,7802,6939,6955,7040,7041,7042,7801,7290,7291,7152,6831,6829,6830,7276,7341,7345,7346,7707,7338,7732,7734,7314,7317,7733,6835,6808,6851,6803,6806,7308,7310,6834,6850,6852,6934,6938,6926,6804,7374] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2506,2510,2357,2405,2406,2407,2386,2981,3325,3327,3328,2512,2383,2385,2514,3429,3326,3338,3314,3315,2498,2897,2496,2497,2898,3352,3353,3354,2948,2953,2952,2883,2745,3421,2627,3422,3426,3324,3335,2352,2354,2355,2915,2917,2924,2921,2934,2945] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1072,119,138,140,691,86,139,692,81,83,720,1173,243,245,247,1084,614,239,89,118,92,1100,632,656,652,684,654,659,669,360,618,633,482,231,650,1079,1168,687,1101] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [4658,4610,4605,4606,4608,4656,4657,4745,4753,4757,5138,5140,4634,4636,4637,4759,4761,5544,5551,5640,5571,5572,5573,4983,5641,4869,5105,5142,5145,5118,5119,5545,5556,5645,5173,5202,5166] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [5971,6628,1468,1469,1470,5973,5898,5942,5943,5947,5899,5901,6627,6620,6621,6622,6613,6615,6614,2195,2197,1497,1496,5841,5893,5946,938,1003,1224,1225,1226,1461,1459,931,935,928,915,916,1234,1237,5881,5938,5936] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [2152,2165,2166,2160,1430,5934,5930,5697,5695,5970,5972,6659,5938,5939,5940,5941,5391,5393,5399,5392,5400,5475,5411,5414,6654,6657,6658,6660,2153,5404,5407,5964,5932,5963,5996,5395,5397] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [106,1807,1812,1077,1804,1806,1342,1344,707,709,1075,1076,711,1308,1312,1060,1313,1062,102,95,98,116,118,92,1327,1820,1330,1331,1329,1736,1737] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [7936,7669,7673,7671,7674,7892,8440,7983,8010,7933,7934,8011,8046,8140,8141,8062,8109,8111,8113,8008,7977,7981] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3287,3288,3738,3740,3633,3634,3672,3674,3690,3673,3283,3556,3557,3560,3563,3589,3600,3604,3541,3553,3555,4089,3631,3285,3767,3736] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [5818,5821,5822,5851,5849,6295,6294,5772,5773,5891,5908,5956,5958,5852,5982,5768,5505,5730,5507,5759,5775,5774,5502,5503,5504,5954,5980,5981] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6271,4622,4626,5534,4619,4634,4636,4627,5783,5794,5779,5784,6278,6264,6265,5801,5802,6197,5192,5547,5548,5549,5798,5800,5813,5815,5540,6077] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [3315,3566,3595,3580,3583,3989,3990,3576,2972,2969,2971,3327,3328,3329,3330,4057,4059,3567,4060,4065,3584,4073,3321] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [1031,1032,1035,1483,1030,1302,1303,1304,1485,1487,1259,1420,1381,1421,1515,1514,1380,1347,1351,1435,1436] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3394,3395,3396,3078,3079,3081,3109,3111,3074,2254,2258,2259,3083,3084,3085,3086,3082,3057,3054,4514,4516,4505,4511,4513,3110,3135,3136,2256,850,814,822,852,819,820,824,823,825,1143,457,458,815,2248] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [110,113,1291,102,109,98,116,118,1176,1293,1084,1299,1045,1308,1312,1061,1062] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [2195,2197,2207,1497,1506,2192,1496,1505,1493,1503,2185,2186,2198,2202,1468,1469,1470,928,915,916,917,919,2175] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2380,2383,2385,3429,3326,3338,3314,3315,3565,3545,3298,3560,3561,3325,2375,3552,2376,3324] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5111,4538,4565,5010,5112,4543,4536,4537,4542,4701,4705,5005] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [6845,6853,6857,6944,7266,7269,6782,6798,6930,6932,3014] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [8129,8122,8123,8118,8117,8119,7568,7565,7563,7571,7572,7564,8155,8793,8799,8804,8808,8796,8797,8798] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [510,626,1,4,187,504,625] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [682,1132,803,802,837,1134,729,730,731,776,1107] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [7925,6977,6826,6829,6830,7926,6832,6954,7808,7809,6952,6996] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        
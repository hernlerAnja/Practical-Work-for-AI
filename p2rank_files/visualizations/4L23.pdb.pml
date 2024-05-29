
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
        
        load "data/4L23.pdb", protein
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
 
        load "data/4L23.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8729,8730,8731,8732,8733,8748,8749,8711,8718,4079,4078,4133,8736,4132,4319,4323,4333,2774,2781,2787,4367,4338,4346,4350,4360,2785,4365,4366,4352,4354,4131,4105,9079,9090,8713,8715,8716,9077,4327,9080,4341,4342,4343,4344,4345,4075,4088,4320,4067,4609,4610,4063,2767,2768,2769,2770,2758,2766,2747,2748,2750,4604,4606,4607,4608,7918,7915,8473,8475,8740,4080,4082,8474,8476,8737,7913,7922,7923,7926,7928,7914,8449,4081] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [6628,6635,7136,7219,6641,6645,6647,6672,6639,6640,6069,6070,6644,6670,6240,6241,6259,6260,6261,6623,6624,6004,6005,6048,6545,6546,7216,7218,7200,7201,6325,7220,7221,7224,7225,7227,7111,6017,6689,7137,6714] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5123,5124,5125,5126,1330,5864,5874,5876,5875,5883,5088,5089,5882,6552,5868,6532,6549,6539,6554,6555,6562,5171,5120,5121,5122,6388,6389,4806,1329,4808,4802,4805,6331,4843,6329,6358,6361,6362,6353,4841,5172,4835,4803,4804,4810] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3421,7902,7903,3425,3427,3428,3429,3430,9452,9454,3414,9455,10360,10358,7287,7288,7289,7876,7877,7875,3431,3448,3435,3445,3446,7937,7936,7324,7325,9424,9463,10381,10383,10384,10416,10417,10385,10392,10379,10380,7314,7315,7312,9391,9390] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2591,9524,9555,9556,10263,10264,10265,2607,10261,10272,3546,3559,3570,3530,3543,5229,5231,5235,5236,5239,9562,9529,9554,9590,3378,3397,3403,3531,3398,3401,3402,3385,3199,3404,5246,3393,3395,3400,3407,3577,3578,2600,3208,3408,9532,9492,9522,9490,10330,10300,10301,10302,9530,9527,9455,10360,10361,10337,3419,3428,3414] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1040,4943,3284,4933,3286,3504,3512,4925,3240,3510,3511,3514,3515,3518,3365,3350,3352,3353,5276,5277,3505,5266,5268,1022,1023,1024,1025,4948,4950,5243,3521,3394,3522,3246,3321,3324,3325,3247,3250,3271,3274,3277,3327,3241,3243,3537,3538,5234,5264] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3412,5246,3393,3400,3402,7857,7860,7861,7863,5230,5245,3415,3416,3479,3480,3491,3496,3497,3220,3411,7853,7845,7851,7897,3505,3494,7899,5228,5229,7901,7902,7903,7900] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [3495,7899,3486,3493,3487,3469,3470,3471,3468,7918,7920,7911,7915,2761,2741,2742,2776,2777,2807,8724,2769,2770,2759,3479,7909,7922,7926,3456,8508,8509,3453,3454,3455,8510,8519,8472,8514,8515,8520,8705,3438,7906] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [5865,1330,5876,5895,5897,5898,6630,6631,6632,6633,6210,6214,6215,6216,6217,5853,2152,6655,6179,2002,2003,2117,2120,2122,1986,2124,6187,6189,6185,6186,6204,6191,2116,6653,6654,6637] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [6581,5523,5522,6575,5189,5466,935,5188,5496,5498,5497,5213,5217,5184,5207,5209,6584,5486,5161,5462] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [697,698,699,918,920,5494,5504,4,541,5528,5530,5531,1,3,5,10,673,51,5786,65,5506,5507,12,677,679,680,682,5495,5497,5469,5471,5473] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [2148,2151,2171,2173,2174,2147,2112,1345,1346,6452,6453,6463,6456,6387,6388,6390,6416,6415,2113,2115,6385,6411,6418,6419,6423,6425,6413,6414,6424,2180,2182,6516,6417,6507,6508,6509] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [7360,8461,10450,10491,8404,8405,10461,10464,9160,9188,9189,7361,10452,10455,10425,10422,10424,8458,8482,8493,8494,9155,10426,10451,10457,10489,10490,9200] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7306,7314,7304,7305,7313,8432,8482,7361,7357,7359,7360,7957,7307,7988,7989,7356,7990,7927,7928,7929,8481,8484,8448,7948,7925,7950,7951,8451,7931,7267,7933,7936,7952,7949,7955] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [1307,2331,2311,2313,2318,2324,1994,5383,5422,5423,5424,2330,5382,5846,1296,1295,1305,5081,5082,2314,2315,2316,5386,5387] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [9556,10260,10262,10263,10264,10265,10261,3546,3559,3570,9617,9581,9582,9554,9552,9590] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [3049,3281,3048,3302,3303,4920,4639,4642,4922,4926,4938,4940,4641,4643,4652,4954,4960,4963] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [8866,8880,8898,8897,9046,8852,8856,8859,8908,8989,8868,9043,9053,9048,9051] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [1,9599,30,534,536,537,539,540,541,28,9631,36,17,37,9597,9596,9595,9625] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [1319,4772,4773,4775,5062,5073,1322,4774,1321,1277,2043,5064,1272,1273,1274] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [5446,5475,5476,897,623,5437,5409,5440,5435,5441,5442,885,886,648,918,683,679,680,647,620,645,646,917,894,919] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [6304,4876,5204,7841,7858,6333,4842,5168,5195,5166,6303,5169,5167] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [1945,1720,1915,2266,1243,1245,1242,2299,2028,2019,2029,2030,1244,1246,1247,2052,1718,1719] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [8418,7986,7987,8428,8431,8421,8427,8422,7985,8032,8034,8035,7974,8007,8011,8019,8023,8026,8022,8604,7975,7973,7982,7983,8451,8452] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        

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
        
        load "data/8SBJ.pdb", protein
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
 
        load "data/8SBJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6106,4718,5454,6097,4765,4766,5879,5880,5448,5450,4715,4716,4717,4719,4720,5461,4683,4684,4685,5460,1358,1359,5938,5936,5937,4408,4397,4398,4399,4401,1907,4376,4435,4437,6094,5901,6091,6098,5877,5905] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [2354,8775,8776,9533,9534,3136,3139,3140,2338,2347,8783,8807,8808,8814,8779,8781,8784,9492,9494,9496,9497,9504,3145,3138,2937,2938,2345,8805,8806,8809,8835,8833,8834,8810,4829,4830,3281,3284,3133,3269,3297,3309,3298,3316,4823,2946,3123,3135,3315,3116,3125,3141,4840,3131,8869,3301,8842,8836,8839,8748,8750,9570] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [5808,5809,5788,5789,6729,6652,6653,6215,6193,6213,6737,6735,6730,6731,6734,6726,6728,6727,6710,6627,6232,6257,6182,6183,6184,6185,6186,6187,6188,5614,5593,5581,5592,6165,6086,6087,6088,6170,6196,6177,6190,6166] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [7312,7315,4824,7308,7300,7306,4839,3229,2955,4840,2958,3218,3234,3235,3238,4490,3243,3217,3228,3230,3232,4823,7316,7359,3150,3156,3159,3138,3153,3155,3154,7317,7318,7322,7346,7352,7355,7356,7357,3176,3160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [5092,5117,44,5091,12,15,18,29,34,36,19,20,21,4782,4783,983,985,13,602,4755,5058,5080,4778,6117,6123,6126,4801,4802,4807,4811,4813,4803,5147,5816,5116,5148,8851,6146,6129,6130] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [4542,4543,4544,1087,1071,1072,1073,1088,1089,4519,4531,3009,3012,3091,3259,3248,3250,3252,3253,3256,2974,2988,3260,2979,3095,3103,3090,2984,2981,2985,3062,3063,4861,1070] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [1942,1963,1931,1933,1940,1944,1373,1374,1375,6000,6001,6003,1445,6011,1934,1936,5935,5936,4406,4409,1905,1906,1907,4376,4377,5933,5967,5973,5970,4384,4386,6077,6058,5962,5963,5964,5965,6040,6054,6002,1968] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [3164,3165,8710,8711,8708,3166,3167,3169,3183,3186,9624,9593,9590,9592,9588,9589,9622,7331,8679,8680,9613,9614,9616,6820,6813,6814,9649,9648,8647,8719,8720,3152,3157,3173,7330,7358] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [3191,3194,7848,3192,3193,3195,7837,7849,7836,8011,7832,7843,3203,3206,2501,2502,3224,3225,2504,2518,3207,3208,2548,2482,2483,2517,8026,8024,2539] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [2515,8017,8050,8051,3943,3944,3945,2528,2717,2522,2531,3967,2713,8022,8018,8019,8020,3734,3919,3927,2509,2510,3736,2511,2526,3960,3946,3950,3933,8365,3708] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [3922,3692,3919,3920,3923,2509,2510,3736,8033,8051,7371,4202,4203,4204,7373,7375,2501,2503,2507,3664,3668,3659,3669,3674,3899,4214,4166,4215,7781,7370,7383,3666] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [8850,8848,8821,8857,8859,8860,8852,8853,77,9405,37,38,100,101,78,80,81,592,72,74,30,31,8846,33,32,5181] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [731,732,697,698,699,700,966,968,750,751,964,933,934,942,5031,5066,5068,5069,5070,675,5034,945,5006] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [3145,3152,3156,3157,3142,3146,2937,3173,8775,8774,8776,9533,9534,9593,9569,9592,8711,3166,9562,8748,9559] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [4974,4980,4981,4986,5015,5017,5018,2083,2084,4988,5432,5433,5466,1787,1790,5491,5492,5493,1336,2067,2068,2069,2064,4675,4676,1322,1324,1325,1334] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [1274,1298,1333,1805,1806,1807,1829,1830,1280,2034,1746,1335,2049,2048,2050,2051,2054,2031,2033] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [5809,5871,5873,6730,6731,6734,6745,6747,6726,6099,6166,5870,6165,5903,6086] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [2024,2044,5688,5692,5693,5694,5695,2011,2012,5699,1789,2046,2049,2069,1809,1810,1780,1759,1763] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [5108,5639,6158,5790,5794,5776,5778,5780,5777,5661,5781,5500,5660,5083] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [7969,7970,7971,8228,8229,8230,7719,7727,8147,8148,8224,8222,8231,8237,7730,7725,7726,7684,7728,7679,7683,7682] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [8169,8182,8199,8333,8291,8339,8332,8335,8336,8165,8158,8161,8341,8207,8209,8211,8279,8151,8154,8198] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [3191,3194,3192,3193,7837,7836,7361,7364,7365,7366,7382,7383,7384,3206,3231,2502,3224,3225,3233,2482] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [3056,2268,2273,2738,3374,3057,2996,3363,3055,3371] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [3227,3231,2500,2502,3224,3233,4195,7373,7375,4194,2498,7361,7364] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [7296,4470,4798,4460,4789,4763,5881,4761,4459,4762,4436,4437,4433,5852] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [5096,5122,5126,5127,5130,109,5369,5132,5342,5125,5361,5097,5098,5100,5101,57,296] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [4003,4004,3480,2225,3977,2222,4001,3975,3978,2742,2757,2763,4034,3482,3437,3438] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [1537,1538,1540,1543,1545,1594,2013,5701,5704,5713,5714,5716,5717,5715,1544,1995,1996,1997,1541,1542,5720] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
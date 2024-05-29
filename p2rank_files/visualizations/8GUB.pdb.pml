
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
        
        load "data/8GUB.pdb", protein
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
 
        load "data/8GUB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6017,5781,5782,5825,5847,5794,5793,6399,6400,6401,6405,6412,6417,6016,6018,6074,6100,6102,6055,6056,6058,7025,7026,7027,7020,7021,7024,5799,6038,6321,6323,7035,6062,7040,7028,7016,6936,6937,7018,7019,6466,6911,6318,6320,6322,6424,6416,6418,6421,6422,6491,6447,6490] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [3443,3450,9226,9228,9995,9958,9994,9996,3431,2439,2438,2455,9966,3267,3402,3258,3403,3270,3274,3275,3273,3276,9227,3298,3299,9157,9159,10021,10023,3265,5019,3418,9260,9259,9959,9258,9285,3415,9235,5008,5009,9295,9291,5012,9269,3080,3071,3449,3072,10031,10032,3281,10053,10019,10020] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [4114,4140,8426,8459,8787,4117,4118,8791,8439,8442,8421,8428,8430,8457,8458,8799,2616,2618,2617,4111,4119,4106,4105,4110,8440,8441,8797,3879,3875,3878,3904,3906,3902,3874,3907,4100,3908,3911,8776,3912,8800,4092,2629,4138,4139,2635] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [4893,4894,4895,4944,4945,4897,4898,4899,5641,4896,1253,4578,4862,4863,4608,4859,4575,4577,4579,5650,5651,5652,1254,6110,6341,6329,6332,6333,6130,6132,6316,6326,6315,5639,5645,4614,4588,4583,6104,6106,6128,6134,4616,6135,6166,6167,6309,6129] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [3092,3369,3378,3265,5017,5019,3288,3272,3275,3284,3287,5003,5018,3372,3363,3377,4669,3351,3352,3311,7645,7651,7653,7660,7661,3365,3366,3367,7701,4673,4680,4682,4671] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [3382,3386,3390,3387,3395,3122,3229,963,964,965,4712,3148,3150,3154,3147,3157,4698,4710,3384,5040,949,972,961,948,955,3393,3108,3111,3113,3115,3118,3197,3224,3225,3223,3237] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [5165,5167,5169,5194,4854,4855,5197,5156,5196,5155,2148,2155,2158,2151,2138,2139,2174,1211,1219,1220,5623,5195,1229,5662,1819,1820,1231,1217,1227,5624,5684,5682,5656,5657,5658,5661,5151] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [4957,4961,4962,859,5263,5268,5271,5296,5295,5303,861,4934,6351,6352,6357,6353,6354,6358,6361,6380,5259,6356] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [8115,10183,10184,10185,8910,10186,10154,10155,10193,8204,8113,8135,8203,8919,8104,8877,8879,8880,8105,8168,8169,8171,8195,10146,10150,10151,8124,8106,8881,10230,10232] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [6193,6191,6192,6194,6201,6229,6230,1968,1999,1969,1269,1971,1282,1281,2008,1967,1974,1975,1978,6196,6240,6199,6200,6202,4556,1267,1268,1270,1266,1276,1941,1937,1312,2001,6284,6233,1998] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [8434,2607,2608,2609,2624,2625,3328,8218,8415,7720,7718,3358,2590,2589,3341,3343,3327,2655,8230,3359] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [7138,7139,7140,7142,7143,10139,10328,10148,10149,7158,10175,10176,10177,7135,7136,7147,9109,9110,7119,7120,7126,7127,7137,7125,7130,7132,7134,7111,9100,9101,10110,10109,10289] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [884,885,801,488,888,777,877,881,882,798,768,2220,2218,2219,776,775,507,492,917,2227,2229,2257] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [10078,9101,9133,9134,3292,3300,3301,3302,3303,3312,9167,10112,10110,10084,10111,3316,7111,7118,7120,10054,10052,9158,9159,9156] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [8617,8619,8687,8752,8755,8569,8699,8757,8758,8761,8750,8751,8566,8577,8578,8763,8661,8698,8573,8590,8607,8562,8615] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [4371,4374,4375,4680,4382,4675,4373,4678,3361,3364,3365,3367,2606,2607,2608,2609,2604,2605,2603,7720,7718,3360,3359,3356,2918,4677,3358] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [7824,7825,7826,8316,8317,8318,7787,7788,7790,8333,7789,7170,7779,8334,8314,7774,7775,7783,7786,7181,8138,8141,8143,8161,8137,3855,8147,7750,7749,7777,8162] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [5642,5644,6406,6407,6408,6409,6010,5997,5993,5987,5981,5650,5653,5673,5675,5968,6410,5964,6433,6414,5966] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [6795,7011,6990,6808,7266] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [4974,6080,6081,4968,6348,4975,4976,4639,4649,4939,4940,4943,7641,4615,6111,6115,6078,6109,6110,7671] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [5956,5966,1813,5951,5954,5955,1829,1944,1947,1949,1951,2020,1979,1985,2021,2022,1953,2028,5945,5674] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [805,807,808,810,507,526,505,572,832,487,834,835,473,456,623,624,611,603,606,472,474,840] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [6173,6176,6210,7573,4587,6199,6200,6202,4556,6208,6241,6201,4599,4558,4584,4585,4562,4563,7572,4314] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [4383,4090,4093,4095,4096,4092,3862,8151,3879,3906,3859,8446,2614,2615,2616,2617,8440,8441,8443,8439,8457] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [4700,4711,4713,3153,4727,4733,4736,4740,2897,3175,4412,4415,4416,4703,3176] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [841,5209,5210,5213,818,810,607,843,844,5245,5246,5249,606] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [7720,4383,7718,4095,3834,3836,3840,3835,3844,8151,3829,7715,8186,8149,8150] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [7725,7727,7728,7729,8159,7156,8142,8158,8171,7101,7103,7116,7115,7102,7114,7755,7751,7752,7789,7790,7173,7177,7178] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [1861,1772,1736,1738,1739,1740,2092,2093,1170,1857,1168,1166,1167,2125,2127] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [2174,1209,1211,1220,5155,2148,2155,2158,2151,1120,4855,5151] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [6455,6457,6458,6459,6520,6497,6609,6648,6521,6522,6523,6961] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [2883,2877,3580,2319,4148,4151,4147,2868,2869,4122,2322,4179,4180,4181] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [5262,5287,6393,6010,5877] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [6845,6854,7578,7579,7581] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [7619,7060,6120,6124,6853] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        
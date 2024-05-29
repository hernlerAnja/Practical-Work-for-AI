
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
        
        load "data/4L2Y.pdb", protein
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
 
        load "data/4L2Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7181,7182,7183,7180,3375,3376,3377,3378,3379,3381,3382,9293,9294,10197,10199,9291,9301,9303,9263,9302,10222,10223,10220,7218,7217,7219,7175,7206,7207,3383,7210,7208,7209,10255,3397,3400,10231,10218,10219,7161,7830,7819,7827,7169,7202,7198,7199,8322,8324,7823,9228,9230,7795,3373,7797,3371,3380,3366,3387,7770,7771,7769,7794,7804,7831,7825,7820] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [4709,6287,6288,6431,4703,4708,4710,4701,4984,4698,4699,4700,1340,4985,6252,6448,5763,5775,5020,5021,5773,5774,6438,6231,6454,4738,6230,6260,6261,6228,6257,5066,5067,4730,5015,5016,5017,5018,6451,5019,6463] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [7112,7110,7113,7030,6569,6571,6588,7031,6612,5969,6527,6534,6538,6539,6540,6543,6544,5968,6443,6445,7118,6159,6160,5916,5903,5904,6523,6522,6139,6140,7115,7114] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [5124,5141,3337,3349,3350,3353,3354,3355,3345,3347,3482,3483,3529,3530,3522,3330,2543,3338,3352,3339,3359,9331,9333,10169,10200,3151,10139,10140,2559,10141,10102,10104,9394,9395,9393,10100,3511,9404,9368,5126,5130,5131,9429,3495,3498,9369,9371,9362,9363,9366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [2718,2719,2720,2721,2722,8568,8569,8570,8571,8588,2726,8557,8549,8550,8552,8556,4217,4026,4028,4214,4218,4228,4233,4237,4241,4245,4238,4255,2733,2737,4260,4262,4221,4222,4000,8919,8920,8921,8555,8916,8554,4024,4240,2712,2714,4503,4504,4505,3951,8575,3970,3974] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [7747,7754,7755,7739,7745,4793,3368,3432,3449,3352,3172,3339,5124,5141,5139,5140,3355,3345,5125,5123,3457,5147,3446,3431,3443,3448,7757,7798,3364,3367,3370,3358,3359,3363,3390,7793] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [2125,2126,2148,6316,2147,2115,2085,2084,1357,2122,2124,2154,2145,2121,6351,6352,6362,6354,1355,1356,1399,2116,1427,2118,6406,6407,6286,6287,6289,6284,4706,4707,4710,2087,2088,2089,4677,6313,6314,6315,6415,6312,6322,6323,6324,4686,4684,1362,4678,6317,6318] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [4828,1050,1051,4838,4843,4845,1052,1035,3236,3238,1059,4844,1034,1036,5172,3317,3462,3466,3467,3470,5162,3198,3199,3305,3223,3226,3229,3214,3277,4820,4832,4834,3202,3230,3464,3463,3195,3192,3193] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [3406,3407,8359,8360,8353,2662,8544,3408,3405,2711,2713,2694,2728,2758,3423,2759,2757,3447,3445,3438,3439,3420,3421,2756,7811,7813,8570,2729,8561,8563] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [7161,7830,7819,7195,7202,7198,7199,7200,7201,7203,7206,7210,7208,7209,8293,8297,7823,8285,8286,8320,8321,8322,8324,7844,8287,7884,7196,7252,7253,7254,7255,7251,7846,7849,7851,7845,7880,7843,7882] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [6474,5079,5102,5104,5108,5112,946,5083,5084,948,5114,6480,6483,6486,6503,5418,5417,5392,5361,5393,5391,5357,5056] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [4977,2304,2305,2321,5317,5319,1306,1316,1318,2298,2285,2289,5289,5745,5746,1968,5779,5318,5805,5282,5281,5278,5285,5287] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [2096,1960,2098,6077,6078,6079,6075,2166,2165,6067,2125,2126,1975,1976,1977,2090,2091,2094,2085,2155,2132,5775,5797,1341] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [5764,6448,6528,6529,6530,6531,6532,5772,5775,5796,5797,6113,6114,6115,6116,6119,6089,5794,5752,6103,6109,6536,6090,6086,6088,6084,6085] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [7255,10289,10290,10328,10329,10295,10300,10303,10291,10294,10263,8243,9039,9027,9028,9029,9030,8244,8300,8295,8326,8330,8332,8333,8319,8320,8321,8994] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [7808,7809,7810,7816,3958,8315,3974,7803,3408,2711,2712,2713,3447,3445,3438,3439,4504,4505,7811,7813,3962,3951] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [1284,1283,1333,1285,1288,1330,4667,4668,4669,4670,4957,4959,1200,1289,1332,2036,2017,1348,2037] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [9436,9437,9438,9435,28,30,9434,5449,1,4,547,548,550,9464,17,551,552,23,36,37,38,39] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [8313,8314,8572,8576,8579,3958,8315,3973,3974,3975,3977,8575,7808,7809,7816,7817,7820,7822,8312,8311] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [6456,6196,6523,6521,6522,6158,7119,7120,6159,7121,6221,6222,6224,7115,7114,6443,6445,7112,7110] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [709,710,711,929,931,5389,5426,4,5402,9,12,693,684,5399,5401,5683,5685,5364,5366,5368] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [8347,3406,3407,8360,8343,8353,7820,8579,8544,3390,3408,3405,7803,7804,8311,8348,2713,3447,3438,3439,3420,7811,8563] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [3317,3466,3467,3470,3474,3309,3198,3305,3226,3277,3192,3193,3304,3195] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [710,711,929,707,708,541,542,559,560,927,925,919,594,574,543,921,895,897,918] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [5483,5930,6170,5473,5474,6167,5482,5417,5447,5448,5449,9403,6486,6503] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [634,5370,5369,5371,5332,5335,906,907,905,896,897,929,931,928,930,659,656,657,658,690,691] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [8884,8885,8707,8705,8719,8691,8892,8698,8890,8828,8736,8747,8748,8880] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [2327,843,5272,880,5308,908,5250,2339,2343,2344,5270,5271,2325,873,840,841,847,848,877,878,879] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [2168,6552,6554,6555,7047,2155,2156,7063,6426,6545,6532] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [1640,1642,1643,1551,1552,1774,1782,1772,1773,1775,1776,1553,2218] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [6514,5384,5759,5999] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [7674,7672,7673,6948,6939,6307,7615] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
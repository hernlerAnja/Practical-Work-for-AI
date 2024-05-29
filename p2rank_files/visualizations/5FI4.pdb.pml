
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
        
        load "data/5FI4.pdb", protein
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
 
        load "data/5FI4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3544,5087,5088,9189,9191,9192,9193,9227,9882,9884,3557,3560,9881,9883,3585,3573,3580,5083,3399,3411,3412,3414,3415,3416,3417,3418,3421,3234,3407,3545,3222,3592,3213,9921,3392,2595,2602,3591,5081,5098,3409,3214,9224,9218,9253,9254,9859,9168,9160,9161,9858,9920,9919,9957,9133,9135] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [4966,5013,6195,4962,5014,4964,4967,4968,4648,4963,4965,6253,4931,4932,1375,6415,6216,6194,6418,6395,6402,6411,6412,6495,6252,4656,4645,4647,4650,6214,6215,6192,6220,4683,4685,6221,6224,6225,4652,4646,5730,6425,5726,5727,6494,6496,5735,5736,5738,5737] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [7094,7095,7097,6552,7086,7089,7006,7007,6535,5879,5910,5867,6576,7096,6122,6124,6486,6487,6103,6407,6104,6404,6491,6498,6504,6507,5932,6188,7090,7091,6409,7088] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [18,37,5410,5412,19,22,34,35,36,44,29,9236,5344,6442,5356,5380,5381,6467,5353,5354,5355,15,12,605,990,992,603,753,755,5003,5318,5029,5030,5031,5316,968,973,975,966,6447,6450,6438,5026,6444,5055,5063,5067,6451,5049,5050,5051,5411,5436,5437,6131,5446,6134] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [5080,5081,5082,7705,7703,7704,7695,7702,3426,3429,3231,3414,3417,3234,3407,4738,4740,3519,5097,5098,7743,7744,7687,7693,3506,3508,7741,7746,3493,3494,3510,3511,3430,3505,6169,3432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [5121,5125,5128,5129,4790,4792,1073,1071,1072,1085,4791,1088,5095,3518,3523,3524,3528,3529,3519,3535,3536,3530,3532,3264,3257,3260,3261,3276,4767,4781,3256,3366,3367,3339,3285,3288,3291,3292,4737,3526,5116,5119] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [3967,3976,4163,3941,8468,8470,8471,4179,4180,8788,4178,2764,8487,8475,8503,8504,2763,2769,2765,2780,4181,2776,4201,4203,4174,4182,4196,8473,2782,2785,2973,2974,3969,4155,4169] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [678,701,702,703,940,941,699,700,696,5331,734,735,738,711,974,5288,972,973,975,5289,5290,5292,949,950,952,5287,5293,5298,5329,5333,5301,5261,5659,5660,5665,5661] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [30,9235,9236,9233,9242,9244,37,38,72,74,77,80,81,82,83,100,84,98,101,5445,97,99,9245,5446] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [1353,2297,2306,2313,5708,5709,5742,1984,5768,1339,1341,1351,1342,5244,5246,5274,5275,5276,5232,5238,5234,4924] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9920,9980,9096,9948,9978,3449,9979,3433,9133,3439,9131,3442,9160,9161,3412,3415,3418,3421,3428,3423] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [2159,2134,2160,1390,1392,2157,2168,6370,6371,6250,6248,2099,1391,6278,6279,6280,6379,6282,6285,6287,6326,6317,6319,6316,2137,2138,6253,2167,2166] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3467,3468,3470,3471,3479,3482,3483,8302,8303,8290,2802,3500,3501,2736,2737,2756,2800,8460,8488,8493,8494,8495,8477,8479,8481,8296,8297,2771,2772,8486] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [6288,6327,6296,4633,4634,1397,4377,4668,7615,6262,7592,7594,4361,7612,6261] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [8620,8597,8598,8759,8764,8630,8589,8673,8710,8711,8769,8771,8758,8766,8579,8582,8593] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [9105,9093,9095,9104,10003,7176,7178,7179,10011,3462,10036,10035,7180,7183,9032,9064,9065,3442,3443,3444,3445,3440,9096,3449,3459,9977] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [4763,4762,4805,4796,4802,3295,3317,4764,4768,4769,4780,4782,4494,3040,3041,3038,3318,4481,4483,4484,4485,4771,4506,4809,4814] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3969,3968,4155,4156,4159,2761,2762,2764,8486,8511,3922,8491,8484,4450,4451,4452,2756,2758,3892,3897,3898,3907,3924,3919,4158,3926,3899] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [5360,5390,5394,5386,5389,109,5592,5358,5362,5363,5365,5637,57,54,5645,5647,5391,5396,5588] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [7550,7924,7523,7491,7510,8113,8114,7488,8064,7513,7515,7964,8077] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [7751,7753,7760,7752,7770,3468,3470,3482,3469,8290,3500,3501,2756,3507,3509,3452,3493,7741,7768,7769,7771,8291,8262] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [3938,3939,3940,3941,8468,8502,8788,8451,8500,8501,8520,8749,8774,8780,8792,8784] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [1982,1983,1952,5995,2004,2274,2265,2298,2238,6003,1984,5768,1353,1352] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [6095,6479,5347,6478,5372,5961,5962,6096] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [6486,6487,6407,6185,6188,7090,7091,6409,7094,6420] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [8128,8176,8178,8179,8180,8418,8420,8133,8136,8648,8649,8650] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
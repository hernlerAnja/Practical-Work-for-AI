
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
        
        load "data/7BW7.pdb", protein
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
 
        load "data/7BW7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5949,5660,5950,5951,5655,5656,5757,6016,5927,5654,5639,5907,5909,5910,5925,5530,5533,5745,5747,5683,5684,5501,5502,5510,5526,5486,5499,5503,5505,5489,5701,5811,5813,5446,5463,5308,5312,5317,5318,5563,5531,5532,5460,5461,5462,5443,5445,5581,5583,5449,5948,5976,6001,6004,5729,6003,6017,5944,5947,5708,5730,5706,5709,5700,6185,6154,6151,6153,6155,6272,6273,5926,5936,6132,6137] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [730,732,733,638,891,865,866,867,838,557,827,945,1258,556,924,925,926,1063,746] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [4268,4269,4273,3486,4290,4292,4294,6174,3460,3933,3447,3459,3957,3921,3923,3956,4252,3483,4253,4254,4376,3934,3817,3818,4280,4276,4340,4345,4350,3418,3419,3445,3448,3442,3443,3446,3467,3464,3472,3475,3441,3477,3435,3411,3230,3232,3417] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [3152,3153,3154,3371,3382,3393,5881,3424,5892,3383,3384,3385,3386,6124,6123,6125,3407,3422,3184,3186,6356,3173,3174,3175,6357,3431,6378,6381,6129,6383,6165,6164,6380,6140,3149,2929,2871,3151,2899,2900,2902,2897,2901,2898,2931] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [732,733,638,613,614,866,867,465,838,590,839,553,554,587,480,557,579,581,464,748,428,945,556,746] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [183,185,411,413,414,415,177,419,421,422,1774,1781,1783,1793,1782,1619,7,8,178,6,182,14,19,1602,1614,1616,1618,1567,1620,1574,1565,1566,1563,1577,1579,1791] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [7593,7594,8280,8277,7595,8275,7732,7734,7738,7756,7751,7610,7615,7612,7614,7616,7617,7575,8181,8182,8183,8201,7733,8169,8273,7576,8290,8291,8292,7723,8297,7711,7613,8293] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [6362,6364,6358,6359,6448,6449,6351,6322,6323,6319,7336,7278,7279,7282,6392,6343,6352,6253,6255,6291,6281,6390,6289,6473,6388,6389,6391,6450,7258,7263,6462,7265,6454,6460,6457,6458,6459] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [7289,7290,7307,7305,7306,8717,8720,7316,6720,7955,7956,6713,6719,6710,7925,7954,6750,7344,7346,7347,7270,7273,7285,6748,6749] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [6133,6304,6132,6081,6080,6269,6271,5806,5811,5813,6085,5809,5897,5904,5905,5906,5898,5907,5908,5786,6096] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [2461,2480,2482,2465,2684,7289,7306,2675,7925,7962,7963,7954,7956,2308,2297,2298,2299,2296,2312,2316,7998,8000,698,7987,8026,8027,8028,2341,2686,7286] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [6721,6728,8478,8516,8518,8472,8473,8474,7026,7019,7024,8517,7006,7007,8514,8515,8479,6689,6702,6691,6693,7029,7028,6725] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [8020,492,499,500,765,8531,8054,491,758,256,8507,766,8504,7982] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [690,455,456,683,685,454,687,8034,8035,8033,8043,674,680,232,233,213,215,2335,2341,2364,8001,8002] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2951,2952,2953,2950,2685,2945,7277,7278,7281,7283,6362,6363,6358,6361,3183,6353,7891,7868,7903,7869,7894,2684] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [510,240,481,336,338,241] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [3713,3714,3715,3692,4351,4352,4353,4355,3690,3687,3688,4260,4359,4360,4361,4362,4363,4367,3761,3762,3765,3767,3683,4336,3500,3501,3503,4337] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3290,3291,3329,3333,3334,3354,4323,4329,4319,4312,3399,3401,3400,3292,3255,3402,3264,3233,3265,3266,4330,4333,3413,3414,3415] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [7249,7251,7350,6757,7250,6509,6682,6680,6781,6779,6758,6703,7264,7266,7340] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [6287,6473,6909,6911,6903,6904,6907,6262,6264,6260,6285,6292,6286,6293,6296,6030,6898,6472,6477,6478,7364,6500,7365,7366] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [6631,7213,7219,7393,7215,7395,6529] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [1150,1148,1149,1152,7933,7935,1122,1129,1130,2487,2489,2490,2491,2492,2499,2497,2498,2500,2488,707,1133,1135,719,1131,1132,7909] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2532,2533,2534,1111,2535,2327,2328,2514,1133,1135,910,911,906,677,2504,1134] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [277,8566,281,8562,78,79,8590,8564,8592,273] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [564,565,562,549,809,810,548,539,1275,1276,566,1281,1282] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [7145,7217,6630,6612,6614,7199] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
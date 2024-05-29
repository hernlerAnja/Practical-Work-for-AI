
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
        
        load "data/5UK8.pdb", protein
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
 
        load "data/5UK8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6462,6265,6268,6269,6297,4703,6295,6296,4692,4693,4694,4695,4696,4977,4697,5060,5061,4732,4978,1378,5013,5772,5768,5778,5780,4975,5010,5011,5012,5014,5015,5779,1997,6260,6459,6455,6456,6439,6463,6236,6264] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [6145,6147,6148,6168,6546,6548,6549,6550,6551,6552,7057,6553,7130,7133,7137,7138,7141,6453,7135,6451,7117,6530,6448,6450,6449,6452,6535,6561,6555,6531,6542,5915,5916,5925,6628,5929,5930,7032,7136,7144,6603,7058] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [9149,9150,9121,9125,9843,9845,9847,3420,3423,3424,9117,9118,9842,9844,9846,2593,9883,2603,2610,9884,9146,9148,9175,9819,9822,3426,3221,3222,5118,5124,5125,3417,3552,3565,3568,3593,3581,3600,3553,2594,9184,9211,3230,3407,3408,3419,3425,5135,3415,3400,3599] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [7754,7755,7756,7760,3516,4798,7748,5134,3512,3513,3425,3242,5135,3415,3501,3502,3518,3519,3522,4785,3527,4784,4796,3514,5118,5119,7805,3437,3440,3443,7807,7763,7764,7765,7766,7770,7804,7794,7802,3422,3434,3438] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [4030,4218,4226,4231,4232,4237,4240,4236,8521,4261,4262,2982,8538,8516,8518,8523,8553,8554,8520,3970,3989,4032,3982,3986,3985,4031,8541,2766,8536,2774,8525,8534,8535,8537,2779,2780,2781,2787,4221,4216,4219,4222,2767,2768,2769,2770,4210,4249,2785,4247,4241,4245,4004,2748,4499,8561,8277] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [7779,7780,7227,3448,3450,3451,3452,3470,7228,7229,9049,9048,3467,9940,9974,7168,7787,3449,9046,7806,7777,7782,7778,3457,8985,9018,9966,9999,7235,7236,7237,7200,7225,7230,7231,7234,9058,9057] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [5385,5386,5387,5412,44,5384,18,12,20,21,5077,5078,986,988,964,753,605,6488,5073,5082,6491,5106,5108,5098,5050,6482,6486,6511,5411,6494,6495] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [3475,3476,3478,3490,8341,8343,8340,3479,3487,2710,8352,7809,7814,7812,7813,7829,7830,7831,7832,8510,8543,8544,8545,8336,8346,8309,7802,3515,3517,7821,7823,2759,2761,3508,3509,2741,2742,3491,2807,3492,2805,8529,2776,2777,2770] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [3960,3955,4461,4221,4222,2768,2769,2770,3970,8541,8538,3966,4499,7819,7821,8276,8277,8312,8311,8309,8310,8542,8545,7818,7831,7832,3962] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [8486,8738,8500,8735,8736,8770,8709,8711,8766,8587,8628,8707,8498,8501,8570,8757,8629,8737,8712,8410,8394] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [678,700,968,5326,5329,945,948,5363,5364,5365,5393,5395,5675,5711,735,736,737,738,5361,971,5336,5703,966,969,734,701,702,703,936,937] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [1073,1088,4838,3272,4814,3269,1085,1087,1089,4839,4837,3268,1072,3296,3532,3536,3543,3544,3537,3540,3531,3533,3534,3265,5153,5156,1070,1071] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [6292,6294,1394,2105,2103,2141,2137,2138,2142,2163,2164,2131,4704,6295,6371,6359,6360,6329,6331,6322,2172,6324,6321,6428,6442,6429] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [37,38,99,101,100,9190,9199,9202,9201,9755,9192,77,78,80,81,82,83,84,86,92,595,72,74,30,5476] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [5750,5751,5811,5310,5312,5313,2297,2314,2316,2317,2310,5271,5272,2329,2330,1354,1355,2302,1988,4970,1341,1343,1344,5784,1351,1353] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [5757,5768,5769,5777,5780,5800,5802,6099,6122,6123,6124,6097,6537,6538,6539,6540,6536,6118,6125,6128,6138] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [6332,6340,7653,7655,4680,1399,4681,6371,6369,6368,6370,4427,4428,4429,4430,7676,6306,4715] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [3426,3429,3436,3457,3221,3441,3420,3423,9115,9117,9118,9883,9049,9942,9943,3450,3447,9084,9086,9909,9911] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [1955,1956,6040,6042,6048,1987,5810,2302,2008,2241,2242,2301,2226,1589,6049] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [5801,5802,2114,6087,6088,2112,1980,1994,2109,2141,2143,2139,2142,2107,2110,2148,2171,2183] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [7880,7853,3962,7882,7929,8436,8439,8440,8275,8277,8288,3978,3981,7876,7877,7922,7926,7890,7891,8287,8267,8438,7892,7885,7886] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [3647,2525,3652,3656,3659,3010,3277,3280,3348,2520,3339,3341] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [3373,3268,3347,3374,3296,3352,3269,3299,3263,3265,3375,3537] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [7194,7195,7196,3469,7226,3453,3470,7228,3468,7192,7840,7813,7828,7829,7839,7778,7803,7806,7220,7225] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [1581,1582,1583,1672,1673,1929,1931,1804,2234,1930,1670,1802,1805,1806,1803,1837,1810] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [6592,6772,6594,6596,6773,6738,6634,6736,6658,6659,6660,6629,6630] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [4210,4249,4250,4252,4247,4216,4222,2767,2747,2750,4507,4495,4548,4498] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [8466,8468,8470,8683,8682,8681,8223,8225,8170,8171,8227] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [3966,4499,4485,4508,3955,4461,4221] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [5986,6139,6523,6008,5378,6007,6140,5818,6522] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [10079,10080,10081,10084,8835,8840,8843,8826,8829,8833,8889,10052,8847,10055,10056,10043,10048,10053] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [6212,6213,7764,5119,5111,5092,5093,7760] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [3802,4280,3000,3800,3023,3024,3015,2469,2470,2473,2474,2475,4273,2471,2472,3827] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        
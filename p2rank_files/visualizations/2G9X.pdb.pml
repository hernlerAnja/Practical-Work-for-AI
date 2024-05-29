
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
        
        load "data/2G9X.pdb", protein
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
 
        load "data/2G9X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [89,91,92,93,701,650,667,669,670,147,97,95,96,98,146,641,642,248,694,688,677,678,686,664,1163,1070,1058,1059,1065,508,509,1158,1159,1086,1087,644,265,405,108,263,264,100,107,1164,1166,101,643,645,646] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [7790,7787,7788,7789,7791,7798,7356,7357,7761,7766,7754,7755,7757,7760,7725,7347,557,2,4,5,41,22,31,192,228,42,242,539,542,530,634,531,5081,5096,5100,1,5082,5084,7759] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [5606,5607,5678,5578,5590,5221,4628,5579,5206,5209,5214,5679,5680,5683,5686,5028,5029,4667,4665,4617,4616,4618,4620,4621,4627,4768,5170,5182,5187,4613,4666,5190,5198,4611,4612,4609,4614,4615,5162,5165,4784,4785,5164,5166,5160,5161,5585] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [7208,7878,7210,7214,7215,7216,7217,7876,7877,8058,8723,8732,5772,5773,5775,5793,5795,5733,5734,5742,5743,7884,7886,7844,7224,7225,7226,7259,7847,7885,7887,7222,7218,7196,7519,5503,7509,7840,7841,5730,7518,5763,8059,8038,8718,8730,7911,7912,7913,5758,7942,5756,7944,8031,8006] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [3466,3467,3468,3469,3440,3445,3470,4522,4524,4526,561,562,4521,564,3404,3434,3436,3438,4561,4539,4541,4542,4543,4551,4549,4712,3402,4550,3406,5060,5062,3035,3036,4748,5059,5154,4562,5050,5051] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [1251,1252,1253,1236,1238,1243,1247,2887,3559,3553,3582,3554,3555,3586,3591,3592,2902,2903,2904,2905,2937,2901,1255,3197,3198,1209,1213,1214,1222,1223,1275,1273,3564,3565,3566,3563,3623,3684,3707,3709,3710,3711,3712,4423,3686,3618,3682,3685,3188,1210,3717,2893,2894,2895,2896,4397,4409,4411,4399,4402,4401,3557,3738,3736,3737,2889,2881] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [518,6994,6993,7345,7346,7350,7347,6989,6991,6992,7010,7011,7005,7353,7363,7352,7358,7362,654,655,653,651,656,659,534,1115,1116,1103,222,226,7378,230,233,684,683,1109,229,516,481,483,484,1145,2348,2349,1128,889,6995,6962,7333,7341,6947] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [2689,2690,5629,5179,5176,5203,5204,5183,5036,5038,5054,5053,5171,2670,2671,5636,5637,5638,5623,5635,5174,5664,5665,2672,2674,2675,3041,3042,4746,4749,4742,4750,4753,4754,5648,6670,5001,5003,5004] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [1440,1450,1390,1426,1427,2189,2190,2183,2191,1835,1832,2410,2418,2424,2425,2197,2198,2426,2427,1444,2409,2199,1841,1874,1846,1848] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2958,2616,3547,3549,3784,2986,2952,2955,3792,2599,2745,3788,3782,2924,2951,2928,3531,3883,3536,3905,3844,3832,3847,2617,3878,3884,3861,2574] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [8204,8205,8226,8107,8113,7249,8105,8153,8152,8154,8109,8103,7852,7245,8165,8182,6893,6895,6896,7869,6920,6924,6938,7279,7272,7273,7276,6937,8168,7066,7270,7307,8163,6928] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [4880,4885,4886,4891,4892,5701,4874,4877,4878,4642,7496,7554,7498,4857,4860,4912,4914,5803,5801,5805,7532,5800,5705,5703,5704,5708,5821,7523,7555] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [360,364,354,367,371,365,366,372,392,394,3202,1181,1185,1193,1285,1188,357,358,1283,3211,1280,3175,3177,336,337,338,340,3233,3231,3234] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [3596,3601,3642,4087,2475,2476,2477,2478,2479,2480,2487,2488,3631,3641,3639,3628,3629,2435,4084,4085,2489] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [8375,7960,6798,6799,6800,6801,7962,7963,8407,6752,6756,7952,7948,7949,7950,6810,8374,8406,8402,8405,6766,6769] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [2160,2164,2161,2163,2150,2156,1823,1979,1980,2172,1771,1978,2126,2127,2128,2129,2151,2008,2149,1821] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [2195,2212,2419,2417,2188,2444,2449,2450,2451,2456,2457,1469,1470,1499,2232,1475,2233,2458,2223,2229,2228,2221,1471,1472] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [343,344,346,352,3397,300,315,316,3433,3434,3435,3436,3437,3396,578,579,3406,4542,4543] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [5036,5037,5038,5054,3024,2670,2671,2642,2641,2669,2626,3019,3020,2625,2673,3025,3026,3037,3012,2684,3041,3042,4749] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [4820,7756,4835,4836,5098,5100,7719,7716,7717,7722,7718,7754,7755,23,4872,4863] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [5494,5495,5459,5461,5463,6882,6883,6852,5484,5485,6848,6841,6843,6844,6814,6815,5483,6816,6818] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [963,973,975,939,941,943,964,965,974,448,2527,2529,2531,465,2562,2561,2522] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [6770,6771,6772,6553,6776,6778,6789,6740,5992,6516,6544,6549,6550,6533] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [6092,5237,5238,5581,5583,5868,5847,5582,6141,6137,5879,5863,5866,5880] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [4219,4225,4229,4255,4257,3805,3817,3828,4291,4292,4284,4290,3806,3807,3808] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [218,7377,7402,7392,7393,7394,7399,7375,7390,7391] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [274,618,60,600,619,58,59,158,11,12] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [4239,4471,4472,4453,4234,4237,4266,4273,3748,4272,4439,4337,3749] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [5035,5037,5038,5054,3024,5048,5050,5042,2626,2625,2675,4988,4989,3027,3026] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
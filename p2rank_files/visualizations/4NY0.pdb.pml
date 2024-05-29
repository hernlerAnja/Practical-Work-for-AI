
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
        
        load "data/4NY0.pdb", protein
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
 
        load "data/4NY0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1909,1910,1915,1916,1917,1934,1919,1925,1931,2405,4604,4584,4585,4627,4603,1935,1958,1929,1930,5057,1937,2390,4599,2388,4588,5076,4593,5064,1924,2389,2391,2395,2407] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [9880,9862,9873,9874,9875,9876,8789,8792,8529,8531,8534,9892,9825,9827,9061,9063,9023,9024,9025,9026,8772,8773,8436,9890,9062,10473,10475,10474,8511,8510,10467,10497,9843,8785,8786,8787,8779,9841,9844,9003,8996,9832] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [3434,3626,3658,3688,3435,3687,3665,3686,4487,4489,3441,3447,3196,4503,4524,4494,3449,3451,4536,4538,4535,3474,3475,4505,4506,3724,3725,3193,3096,3098,4537] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [1054,1055,1056,1855,1866,1867,1017,996,1836,1019,957,991,1885,1868,1869,524,527,427,429,1018,778,782,765,766,772,989,504,2487,2488,2490,1825,1834,1837,1818,1820] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [7193,7204,6357,6393,6104,6355,6394,7158,7190,7192,7163,6295,7172,7174,7175,6334,6327,5765,5862,5865,6103,5767,7205,7206,6120,7207,5842,6116,6118,6110] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [6318,6522,6343,6778,6569,6780,5504,5460,6317,5477,5471,5478,5470,6762,6763,6764,6765,6735,6766,6737,6558,6557,6567,5441] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [3648,2807,3674,4093,4084,4092,2810,2808,2809,4091,4094,4095,4096,4097,2806,3680,2816,3715,3705,3706,3708,3644,3679,3675,3676,3673,2835,2772,3853,3889,4109,4111,3900,3649,3850] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [2607,295,2608,5724,5728,7913,262,263,264,5701,5703,2595,7910,5716,6201,5714,6150,6151,5705] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [3417,3396,3397,3680,3716,2811,2812,2813,2814,2816,3715,2725,2728,2735,2806,2827,3416,3418,3687,2752,2750,3098] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2964,3053,10600,10601,10602,10587,10579,10593,10599,5231,5230,5268,3056,3059,5234,5273,5276,5277,3058,2930,2931,2932,2933,3222,3069] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [1426,139,103,1220,1427,140,166,122,108,1422,1424,1425,1440,1184,1005] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [10581,8819,8820,8383,10582,5264,10579,2964,8393,8397,8370,8377,8386,8390,10600,5272,8870,5276,5277,2932] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [2607,295,2608,261,262,263,264,389,2604,2598,2599,2603,387,390,7924,7925,7930,7931,7932,7918,7910,553,2565,382,384,286,400] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [8086,8073,8063,8066,9054,9017,9018,9025,8088,8090,8756,8773,8755,8145,8154,8143,8152,8144,8149,8734,8735] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [5421,5420,6349,5475,6066,5480,5485,6356,6385,5767,6085,6086,6087,5404,5394,5397] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [1046,1426,138,139,167,979,81,1010,1011,79,975,136,137,147,141,1036,1002,1006,1007,1037,1003,1005,1422,1424,1425,1184,1039] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [748,749,59,728,56,144,145,147,142,143,66,158,137,81,1010,1011,79,83,1046,1047] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [9431,9432,9447,9449,9191,9434,9435,9012,8986,8987,8124,8129,8173,8111,9227,8146,8147,9433] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [6174,7360,6176,6181,6183,7179,7181,7132,7133,7187,7189] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [3172,3173,3193,5159,3171,4552,4554,4537,5156,5137,5135,5136,4536] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [4425,4426,4463,4464,4512,4427,4518,3503,3505,4520,3507,4690,4692,3497,3508,3512,3513,3514,4434,4435,3494] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [7804,7805,7806,5841,5842,7206,7221,7223,7224,5860,5862,7825,7828,5840,7798,7211,7215] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [9764,9772,9773,9763,9858,9837,9801,9802,9836,9856,10028,10029,10030,8843,8845,8852,9765,8850,8851,9855,9848,9850] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [10163,5249,5261,8828,10018,10182,10590,8826,10161,10165,10169,10172,8810,10016] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [1794,1795,1757,1765,1766,838,845,1849,1851,1848] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [2642,2508,542,543,545,546,2235,2477,2479,519,570,544,562,2639,2641,2622,2623,2638,2233,2658,2659] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [5311,4902,4904,5328,5177,5146,3239,3212,3214,3213,3211] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [7820,7846,5880,5881,7815,7842,7817,7980,7571,5908,5882] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [6915,6887,6882,6848,6886,6885,6821,6786,6787,6829,6478,6924] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
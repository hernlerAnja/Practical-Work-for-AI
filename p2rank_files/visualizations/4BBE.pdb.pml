
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
        
        load "data/4BBE.pdb", protein
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
 
        load "data/4BBE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [171,1276,784,186,188,1190,1271,1272,1275,1277,776,777,780,1189,170,331,332,129,130,131,132,136,137,2497,2498,2495,2496,1279,187,1188,316,726,727,582,749,752,753,731,330,476,1268,1286,509,135,134,745,743,760,1173,785,812,1159,169] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [3129,2567,2696,3107,3570,3106,3569,2566,2568,2711,3118,3111,2556,3146,3147,3156,3157,3160,3132,3133,2510,2512,2514,2515,2516,118,116,117,3140,3123,3125,3230,3165,3189,3192,3164,2511,2517,2518,2554,2555,2545,3550,3655,3651,3656,3657,2712,2856,2961,2962,3666,2851,2853,3663,2888,2886,2889,3539,3554,2546,2547] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [5948,5949,5950,5536,5537,5540,5544,4897,5342,5491,5509,5513,5512,5520,5076,5498,5503,4889,4890,4891,4892,4895,4896,5505,4894,5545,5572,5919,5934,6031,6028,5341,6036,5091,5092,5236,6037,4948,5090,5487,5269,5486,4925,4926,4947,4899,4946,4898,4935,6032,6035,6038,5268,6046] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [8313,8299,7924,7270,7271,7917,7920,7925,8416,8417,8412,8415,7310,7309,7311,7276,7277,7721,8330,8408,7892,7893,8328,8329,7274,7275,7883,7885,7272,8426,7472,7616,8419,8411,7470,7471,7866,7867,7327,7328,7326,7649,7648,7722,7871,7456,7889] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [6842,6836,3249,4139,4118,4120,4456,4462,4464,6844,6497,6519,5628,5629,6476,5653,3294,5631,3282,5666,5671,5672,5673,5674,5675,5659,5662,3273,3279,4119,4121,3286,3291,3293,3295,3244,3251,5624,5626,6499,6500,6501,5623,5630] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [9418,9422,8168,8171,8172,9411,9426,6611,8197,8198,8199,8513,6613,6614,8200,8201,8206,8170,6745,9424,6772,8174,6612,6750,8742,8745,8739,9402,9405,9407,8766,9414,9386,9401,8738,8740,8741,6747] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [1418,7162,7163,1437,1440,1438,1458,1508,1411,1541,1567,1535,1539,1914,7804,7805,1472,1936,1937,1549,7777,7779,7780,1443] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [3267,3237,3239,3240,95,3152,3154,3238,3199,118,96,100,101,3140,3147,3145,3228,3229,3230,3225,123,126,7135,181,99,196,340,341,358,147,148] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [3812,3809,3810,2549,2551,3681,2785,2787,2788,2789,3811,3673,2855,2811,2813,2817,2816,2783,2814,2548,2550,2818,2821,3697,2786,2535,2536,2542,2544,2729] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [341,703,7133,7134,7136,196,197,47,49,52,646,629,67,77,81,95,96,91] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [5166,5167,5169,5109,5163,5164,5165,5161,4924,5197,5198,4916,5113,5130,6192,5191,5193,5196,6077,4922,4915,4917,4921,4928,4927,4929,4930,4931,6061,6053] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [8417,8431,7308,7310,7306,7307,7309,7311,8275,8418,8432,8439,7304,7489,7573,7302,7305,7547,7549,8433,8441,7296,7301,8440,7472,7615,7577,7578,7543,7571] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [8215,6784,8214,6782,6783,7662,7673,8186,7677,7679,7681,6796,6797,6968,6970,8185,7676,6967,6922,6921,6944,6956,6963,6961,6960,6962,6923,6924,6925] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [8637,8936,8942,8943,8928,8929,8301,8302,7942,8636,8843,8889,7940] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [2472,2475,2576,2577,2457,2471,2427,2428,2431,2721,3081,3083,3026,2461] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [164,349,403,475,166,168,170,332,171,1278,1277,433,1292,1293,1291,438,437,407,162,165,167,1301,1135,1299,1300] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [3284,3285,5642,3303,5665,5683,3312,3336,3610,3311,3262,3602,5716,5717,5692,5982,5991,5684,5685,5691] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [4129,4168,4169,4183,3876,3877,4182,4083,4176,3541,3542,3180,3182] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [7843,7481,7351,7231,7235,7337,7221,7207,7217,7769,7188,7191,7187] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [1502,1635,1638,2187,2189,2190,1476,1477,1668,2046,1827,1828,1998,1999] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [8775,8778,9327,9330,9139,8968,8617,9186,8642,9138,8616,8808,9329] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [6301,6232,6305,6696,6697,6673,6217,6218,6268,6299,6295,6198,6197,6200,6202,6203] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [3852,4294,4316,4317,3817,3818,3838,3888,3925,3915,3919,3921,3822,3823,3837] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [6742,6701,8154,6699,6704,6706,9457,9480,9481,9483,9492,9489,6733,6734,6764,6765] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [3254,3256,3257,5670,6856,5682,3258,3267,6870,6873,7116,7119,6880,6882,5707,6855] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [220,3586,276,277,2681,2682,3112,3115,2991,86,87,3120,3583,94,3142,109,3124] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [6428,6949,6950,6229,6236,6237,6262,6395,6398,6587,6588,6758] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [6767,7706,7707,8152,8154,8378,8128,8129,8131,8122,6768,7696,7699] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [4208,4420,4048,4570,3857,3849,3856,3882,4566,4568,4569,4018,4015,4415,4379,4378] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [2489,2600,2466,2467,302,740,2657,2656,2651,2655,2474,762,763] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [7811,7824,7825,1945,1947,7556,1922,1921,7513,7514,7518] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        
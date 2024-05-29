
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
        
        load "data/6XL4.pdb", protein
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
 
        load "data/6XL4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1258,1255,1256,355,356,357,374,373,465,467,189,190,208,188,489,1240,488,1268,682,684,685,353,343,521,522,600,494,601,604,607,606,493,463,461,466,1243,1245,1227,1228,1229,1235,1237,1132,1230,1234,1236,1118,1148,155,156,161,162,163,164,1247,705,1147,698,699,700,340,719,338,159,341,717,157,206,207,160,586,585,591,745,746,749,753,722,723,754,778] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [8338,8339,8362,8361,8332,8333,8359,8340,8343,8348,8350,7335,7337,7294,7480,7482,7316,8199,7297,7296,7301,7304,7308,8415,7785,7787,7788,7709,7710,7694,7695,7703,7704,7707,7623,7624,7625,7478,7784,8384,8354,7566,7600,7852,7856,8221,8222,8235,8331,7881,7285,7291,7857,8224,8225,7336,7825,7849,7822,7826,8250,7802,7803,8251,8330,7688,7689,7288,7284,7286,7808,7820,7465] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [3103,3111,3135,2567,2517,2522,2523,2524,2521,3079,2518,2520,2697,2568,3104,3106,3505,3110,3585,3475,3476,3478,3489,3076,3080,3081,3062,3504,3056,3057,3584,3592,2551,3593,2550,2714,2710,2569,2528,2532] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [5801,5802,5815,5062,5917,5918,5919,4870,4871,4872,4873,4877,4876,4880,4881,5911,5779,5804,5805,4884,4868,4916,4915,4917,5060,4864,4866,5270,5271,5830,5382,5910,5383,5831,5045,5400,5385,5388,5381,5941,4894,4896,4898,4899,4888,4889,5429,5432,5436,5437,5461,4865,5405,5402,5406,5407] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2730,2731,3610,3611,3612,3613,3615,2782,2783,2784,3592,3587,2712,2714,3616,2710,3039,3041,2963,3042,3024,2818,2823,2822,2824,3608,2846,2845,3620,2878,2879,2964,2850,2851,2854,2820,3586,3588,3594,3602,3604,3597,2948,2949,2957,2958,2961,3056,3057,3584,2942,2943,2697,2568] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [7053,2335,5393,5032,5033,5031,710,7075,2313,2314,1163,1162,732,733,714,731,7055,707,320,325,326,327,328,718,7046,7052,5415,5416,5397,5401,7054,321,308,2332,2306,5390,5394,5030,5398,5025,5013,2312,2315,2318] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [47,6986,6987,6988,6989,7024,5870,6945,6946,253,265,268,271,274,97,99,275,278,7025,5860,281,282,283,5508,5510,5532,5570,5572,5573,6937,6940,6941,6942,6943,6944,5531,292,5506,5568,5569,5859,5541] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [2677,3064,9434,3071,3090,3068,3067,9463,9440,9441,9447,9460,9455,3520,2683,2684,2685,2682,3072,2678,7835,7836,9446,9442,9443,8266,7814,7817,4654,7810,7813,4683,4680,7451,7452,7453,7450,7445,4660,4662,4663,4666,4661,7446,3089,3088] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [7400,7404,4549,4550,4552,7403,3205,3209,7228,7176,4597,4551,4553,4554,4545,4548,4594,4595,3146,3533,3534,7416,3145,7382,4630,4632,4633,7397,3544,3245,3246,3247,3243,3242,3244,4593,3182] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2284,1187,2285,4997,4980,4983,4977,1176,1177,890,889,825,852,848,854,888,886,887,788,789,2203,2201,2202,2204,2205,2206,2249,4756,2200] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [2614,9371,9373,9374,9347,9348,9375,2632,2636,2629,2635,2459,2408,9377,9413,9410,9412,8290,2649,7891,7892,7925,7951,7953,7954,7955,9328,8280,7989,7990,7991,7992,7993,8279] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [5248,5241,5681,5683,7272,7273,7274,7271,7278,5676,5713,5651,5649,6750,5678,5677,6721,6722,7285,5247,7106,7108,7101,7105,5258,6749,5652,5653,5654,5655,5656,5256] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [548,549,595,596,7031,7034,6999,7030,7041,7029,7038,7039,7042,709,550,544,551,539,554,579,594,592,1213,589,30,2345,2340,7072,7074,7068,7071,7070,2352,2344] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4649,4647,4650,4679,4680,4682,9468,9472,4678,8316,4646,7651,7652,7653,7812,7654,7667,7663,7656,7657,7662,7682,7692,7699,7700,7159,7697,7698,4637,4638,4676,4639,4607,4608,4610,9479,9473,9476] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [5231,5232,5233,7084,5222,5278,2299,2334,5896,2301,5392,2298,2302,5279,5277,5297,5262,5272,5237,2291,2259,2331,7080,7088] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [9426,9427,9429,9430,9387,2907,2905,2906,2908,2910,2911,2936,2946,9458,4685,4688,4693,4692,4696,3066,9460,9462,9456,9459,3570,2952,2953,2896,2971,2951,2391] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2487,2722,1038,1039,533,534,535,1032,2739,2740,1034,2489,2579,2580,1037,2719,2720,2721,2723,3018,2727,2718,2738,2560,2561] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [2654,7876,7878,7918,7919,7920,7840,7882,7883,6814,6815,7929,6749,6784,5655,5656,6783,7128,6752,6756,7833,7881,7849] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [3938,3939,3650,3651,3652,3974,3965,3967,3946,3665,3943] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [2355,2358,2360,973,941,948,951,915,574,575] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [6008,6018,6019,6027,6148,6150,4897,4899,5967,5968,5764,5765,5947,5971] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [5656,5624,5631,5634,7118,5598,7128,7111,7112,5258] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [5078,5940,5964,5206,5207,5934,5936,5937,5938,5957,5958,5368,5149,5148,5150,5175,5950,5146] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        

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
        
        load "data/3BHT.pdb", protein
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
 
        load "data/3BHT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3492,3493,4549,4553,4556,4554,3459,3468,3489,3491,3456,3457,3458,3460,3461,3427,576,577,580,581,5099,5100,5101,5105,5114,5116,5110,5115,3500,5089,5098,4,4581,4582,4751,4579,3429,3432,4592,4570,4573,3044,5090,4787,4788,3053,3054,4593,5193] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [5624,5617,4649,4652,5618,5629,5209,5226,5645,5229,5646,5246,5245,5253,5260,5286,4697,4641,4698,4639,4640,4646,5221,5223,4807,4643,5199,5200,5202,5204,5205,5719,5717,5718,5722,4824,5723,5725,4820] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [671,93,679,687,728,668,99,149,150,151,102,642,644,260,651,95,97,665,94,1160,509,510,645,1159,130,132,105,1087,1088,1059,1060,702,277,275,401,646,647,1071,1066,1164,1165,1167] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [7926,7955,7957,8070,8071,8051,8736,8745,8743,8731,7924,7925,5798,7952,7966,8044,8045,8041,8020,8757,5802,5807,5795,5797,7229,7230,7231,7232,7217,5812,7891,7890,7221,7222,7224,7215,7898,7899,7900,7897,5814,7526,5811,5832,5772,5773,5781,5782,7525,5834] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [1253,1254,1256,2905,1249,3580,3761,3576,3577,3614,3615,3612,1224,1237,1239,1240,1244,3215,3216,2919,2920,2921,2922,3589,1211,1210,3586,3587,3588,983,984,1209,1214,1215,1223,3759,3646,3730,3709,4452,3641,3644,3732,3733,3734,2915,2907,2911,2912,2914,4440,4438,4431,4426,4428,3740] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [655,657,660,1101,1102,1104,1116,535,652,684,7385,238,241,242,245,482,484,485,1146,1129,1145,515,517,2358,7001,6996,6997,6998,7017,7018,7019,519,7369,7370,7002] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [2684,5677,6693,6694,5703,5662,5687,5218,5233,5659,5674,5053,5448,4792,5215,2708,2709,2703,2704,2707,2688,2683,2692,2693,5075,5210,5213,5704,5042,5043,5044,3060,5093,4785,4788] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [1,10,46,204,254,240,540,541,542,543,531,532,635,7800,7779,7811,7363,7364] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [1883,1850,1851,1855,1856,1857,2206,2208,2423,2422,2198,2192,1391,2199,2200,1841,2429,2207,1436,1428,1430,1432,1444,1448,1454,2437,2438] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [7881,7883,8126,7256,8239,8165,8166,8116,8167,8120,7865,7873,8217,7870,7876,8218,8195,6944,8181,8175,7073,7277,7314,8122,8138,7279,7280,7283,7286,7252,6935,6931,6945,8178,6928,6902] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [4108,4111,4104,4107,2500,2503,2504,2505,2507,2493,2495,2497,3654,2487,2489,2491,3662,3663,3664,3665,4076,3651,2446,3652] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [3815,3570,3572,3807,3805,2942,2946,2617,2634,2635,2976,3004,3870,2969,2970,2973,3867,3884,3864,3865,3855,3928,3854,2626,3906,3907,3554,3559,3565,2592] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [6813,6804,6806,6807,6808,6805,6758,6759,6764,6803,6773,8388,7973,7974,7975,7976,7965,7961,7962,7963,8419,8421,8422,7930,8420,8387,8415,8418] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [4923,7501,7562,4919,4924,4925,4951,5740,4930,4931,4913,4916,4917,4953,5752,5579,5839,5842,5844,5744,7530,7539,4665,5747,5871,5742,5745,5743,5746] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [348,340,3419,3420,312,579,577,581,592,321,339,342,3421,3456,3457,3458,3429] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [2173,2136,2159,2165,2174,1989,2137,2181,1779,1988,1987,2170,2172,2138,2135,1829,1832] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [388,361,390,3191,3252,1194,1306,1307,1184,1286,1282,1284,1281,3220,3229,368,1182,1189] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [3530,3528,413,446,3526,3527,3529,3531,3533,436,434,435,441,3013,449,3541,3543,3544,2619,2588] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [5532,5502,5498,5500,5523,5533,5534,5524,6821,6859,6889,6890,5522,6823,6825,6822,6824,5007,5021,5024,5025,5027] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [350,353,367,356,368,3195,333,360,361,3252,3229,3249,3251,3193] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [3830,3829,3831,4319,4320,4321,2770,4258,4254,4284,3840,3851,4286,4313] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [6772,6777,6742,6745,6747,6778,6030,6031,6779,6784,6786,6568,6573,6574,6577,6058,6785,6540,6557] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [4923,7562,4919,4924,4896,4895,4913,7503,7561,7505] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [1482,2197,2428,2430,2204,2462,2466,2467,2469,2449,2460,2461,2221,1476,2238,1473,1478,1479,1503,2232,2477,2241,2237] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [2580,2549,2579,976,974,975,2545,964,965,462,444,940,942,944] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [8591,8589,8162,8140,8142,8563,8564,8559,8561,8624,8626,8141] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [4259,3801,4330,4364,4317,4319] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [5542,5767,5769,5772,5773,5781,5782,7516,7525,5768,7526,7860,7898,7899,7900,7897,7853,7854,7857] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [6354,6333,6187,6325,6468,6498,6188] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [7729,7730,7731,7767,7743,7740,5137,7770,4859,4857,4873,4875,5139,4902,4911] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
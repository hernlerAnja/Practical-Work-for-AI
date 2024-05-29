
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
        
        load "data/4ZTM.pdb", protein
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
 
        load "data/4ZTM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3138,3177,3185,3150,3151,3155,4186,3154,3174,4191,4192,4194,4184,4185,7084,7090,7967,7353,7966,7350,7930,7472,7473,7493,7477,7474,7089,7481,7088,7334,7346,3175,7935,7929,3131,3133,7927,7928,5338,7921,7499,7500,3034,3473,3187,3461,3469,3471,3149,7320,7321,3459,7306,7307,7314,7315,7329,7330,3127,3134,3125,7684,7952,7681,7683,7953,3024,4165,4172,4179,5336,4193,3076] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [901,913,949,950,914,918,937,938,940,948,917,944,894,895,896,897,5671,7593,7591,1956,1961,1963,1949,1962,4850,1968,1969,1970,1971,5100,5238,5711,5712,5217,5218,5118,5119,5116,5117,5664,5697,5698,5663,5666,5667,5244,5222,5245,4854,4851,4855,4856,5226,1230,974,976,1224,1229,946,797,839,888,1232,1234,1236,1235,890,5072,5073,5080,5081,5087,5084] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5368,5369,5372,5373,5403,5367,5687,5689,5691,5394,5396,5397,5405,5431,5679,7622,7623,7624,7627,7628,7658,7611,7604,7605,7606,5670,7607,5677,8663,8664,883,7932,7935,5350,5351,5356,7925,5349,5352,5252,7933,7934,7942,7659,7549,7944,7946,7506,7507,7508,5675,6420,6421,6422,5392,6423,6414,7649,7651,8669,8670,8672,7686,3120,3134,6415,3122,3118] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2521,2528,2529,2530,2532,3037,3069,2531,2535,2582,2583,2584,3038,3040,3044,2871,3430,3432,2872,3431,3508,3507,3509,2484,2988,2989,2990,2992,2685,2686,3078,3045,3108,3116,3407,3396,3408,2542,2551,2570,3415,3515,3516,2563,2565,2536,2537,2539,3397,3009,3011,2533,2534,3013,2997,3016,3024,3036,2605,2485,2488,2670,2986,2987] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [4729,4731,4732,4733,4728,4730,4734,4781,5287,5334,4680,5258,5263,5254,5255,5262,5648,5649,5650,5205,5206,4782,4783,5208,5110,5725,5726,5109,5111,5207,4884,4752,4754,4737,4736,4738,4739,4740,4751,4769,5633,5734,4885,5625,4735,5227,5229,4685,4687,4802,4686,5248,5242,5231,5234,4869,5204] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [7461,7463,6970,6972,6973,7015,7016,7103,7017,6967,6968,6974,6927,7980,7491,7903,7904,7905,7981,6975,6976,6977,6978,6980,6981,6987,6988,7888,7989,7118,7486,7470,7482,7465,7517,7542,6969,7581,7589,7880,7503,7504,7509,7510,7489,7497,7551] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [259,265,807,808,832,1171,1160,1170,1159,253,254,255,800,803,1195,1194,1193,776,779,780,781,841,752,307,408,754,635,753,755,1271,1270,532,306,264,275,276,409,1178,1272,1279,272,273,262,263,257,393,760,749,750] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [5086,5087,5096,5475,5078,5088,788,789,771,773,1216,1217,767,1218,1220,6699,787,790,797,380,375,379,374,762,5426,5684,5693,5697,5698,5429,5428,897,5472,5495,5531,5532,5533,5473,5474,6663,6664,6665,6640,5455] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [6760,7058,6762,7059,7060,7069,3175,3176,3178,4492,4493,4494,4489,4490,4491,7358,7369,7364,7366,7367,7370,6780,6758,6759,6763,6761,6778,6735,3171,3174,7082,7083,7084,7097,7473,4225,4226,4483,4206,4207,3162,4190] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2266,2267,2268,2269,2270,2271,2260,937,933,934,939,941,927,4825,4824,4826,4834,4848,4849,1983,925,4850,1967,1971,2002,1984,2003,5133,5136,4518,5132,4519,4520,4522,4538,4540,5135,4521,4523,997] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3025,3026,7322,3453,7730,7312,7313,7729,7727,7728,7750,8912,8914,3454,3455,3456,3457,3004,7786,7787,7788,8913,8948] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [8646,8647,8648,853,855,1947,1675,1653,1660,8629,7563,7565,7566,1928,8354,8361,8369,8376,1668,856] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [8609,8611,1714,1694,1708,1709,1712,1695,8430,8368,8422,8421,8423,8396,8409,8648,8598,8606,8354,8361,8369,8376,8636,8637,8638] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1938,8376,1947,1675,1653,1660,8375,8394,8395,8396,8409,8413,8410,1695,1721,1667,1668] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [6119,6360,6362,6120,6173,6172,6147,6127,3916,3918,3917,3932,3935,3931,6160,6181,6399,6112,6390] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [2697,2768,3529,3530,3531,2727,2705,2726,2728,2733,2734,2560,3539,2731,2684,2686,2973] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [3918,3898,3944,6146,4161,3891,3890,4133,6147,6164,3943,3883] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [3090,3093,3883,4169,4170,5310,6399,6112,4168,6398,3092] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [7853,7870,7888,6989,7986,7987,7988,6988,7889,7984,7985,8009,8010,8011,6996,8001,8002,8005] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [7266,7814,7816,7257,7258,7259,7288,7286,8033] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
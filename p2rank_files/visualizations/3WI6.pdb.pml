
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
        
        load "data/3WI6.pdb", protein
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
 
        load "data/3WI6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7454,7072,7477,7474,7475,7459,7471,6962,6917,6918,6909,6910,6911,6915,6916,6960,6961,6913,6946,6939,7087,7088,7089,6931,6928,6950,6921,6922,7854,7978,7979,7980,7971,7870,7842,7970,7972] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [2480,2481,2435,2433,2592,2997,2996,3394,2979,2429,2430,2431,2994,2609,2482,2607,2974,3494,3495,3496,2448,2451,2470,3503,2438,2442,3366,3504,2436,2437,3022] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [9692,9149,9151,9152,9199,9310,9712,10117,10101,10217,10218,10227,10219,10089,9697,9709,9713,9535,9715,9327,10226,9154,9155,9156,9198,9200,9160,9166,9153,9147,9148,9740,9323,9325] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [247,358,197,199,1156,740,583,745,763,757,760,371,1256,1257,1266,1128,1258,373,375,741,1259,1264,248,246,203,204,202,208,214,195,196,1265,788] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [12659,12663,13147,13170,13187,13190,13192,13181,12654,8412,8414,12656,12247,12245,13193,13199,13206,8417,13154,8638,8641,8648,8649,8650,12638,12639,12594,12640,8407,8409,8410,13157,12636,12646,12647,12648,12637,12649,12635] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [12467,12468,12469,12475,12476,12477,12339,11560,11942,11947,12470,12471,11450,11448,11449,11563,11569,11410,11416,11406,11409,11575,11577,11573,11990,12367,11963,11962,11959,11397,11398,11403,11404,11405,11399,11401,11964,11965] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [4684,5264,5608,5745,5746,5236,5237,5636,4690,4723,4724,4849,4834,4675,5232,5233,4678,4679,4680,4672,4673,4676,4712,5739,5736,5737,5738,5239,5059,5216,5221,4850] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [1436,1447,1452,1946,4173,4174,3933,3936,3938,4163,4164,4165,1936,1959,1970,1979,1981,1427,1413,1421,1425,1426,1445,1428,1429,3934,1382,1383,1443,1444,1446,1032,3941,1034,1036,1472] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [10406,10404,10944,10947,10949,12906,13134,10927,10938,13142,13141,13131,13139,13166,9995,10956,12911,12914,10397,10398,10412,10413,10903,10904,10909,13143,10908,10911,10382,10385,10386,10387,10389,10374,10388,10390,12904,12907,10342,10343,10347,10348,10407] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [8143,8142,8157,8158,8159,8699,8156,8654,8152,8154,8155,8161,8162,8166,10659,10660,10891,8139,8151,10898,10900,8145,8148,8149,8150,8655,10899,8096,8140,8141,10667,10664,8694,8697,8700,8706,7748,7750,8186,8688,8160,8664,8658,10896,8661,8653,8677] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [5861,5862,1693,1695,1923,5863,5908,1698,1700,1696,5907,5909,1703,5901,5906,5905,1932,1920,1928,1930,1931,5916,5920,5923,5927,5928,5932,5921,5514,5952,6462,6468,6456,6459,6461,5925,1955,6439,6426,6421,6423,6415,6416,6420] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [3662,3663,3664,3665,3667,3666,3683,3684,3676,3681,3678,3679,3272,6403,6175,4223,6180,4221,4224,4230,4237,3690,4178,4185,6411,4201,4212,4188,6410,6412,3674,3685,6183] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [5295,5299,5648,5294,5680,5683,5356,5391,5392,5309,5334,5335,5682,5412,5389,5390,5646,5697,5388,5409,5414,5419,5421] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [10161,10163,10164,9872,9873,9869,9890,9893,9895,9870,9888,9889,10178,10179,10152,10175,9771,9810,9811,9770,10125,9773,9775,10127,9785,9896,9900,9902,10129,9837] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [10536,11164,10510,10554,10555,10538,8063,8079,10092,10094,9741,10093,8065,10084,9752,9754,9756,9758,11166,11167,9761,9793,10509] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [5143,5144,5145,5146,5147,5148,4637,4638,5142,5128,5193,4586,4639,4580,4594,4842,4858] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [7547,7653,7655,7622,7590,7532,7623,7624,7573,7625,7626,7572,7649,7643,7646,7537,7914,7917,7880,7882,7533,7931,7916] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [12562,8289,8931,8917,7555,8907,8912,8914,12576,8307,8308,12560,7518,7520,7836,7837,8262,8263,7516,7845,7846,7847,7503,8291] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [3440,3167,3170,3202,3057,3404,3406,3455,3438,3441,3469,3052,3067,3092,3177,3179,3173,3146,3093,3147,3148,3149,3150] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [3813,4440,4441,3075,4438,3036,1349,1351,1364,1365,3038,3040,3786,3787,3370,3361,3023,3360,3815,3832,3831] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [12442,12146,12150,12152,12377,12379,12035,12438,12428,12061,12411,12413,12414,12087,12060,12175,12120,12122,12123,12119,12138,12139,12140,12143,12021,12025,12020] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [3589,5278,6678,6679,6057,6073,6074,6055,3587,3603,6029,5280,5282,6028,5612,5265,5602,5603,5317] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [1593,1594,1575,5829,5831,1131,1132,5845,789,2196,802,804,2198,2199,841,1122,1123,1548,1549,806] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [833,1234,1166,1168,1217,1231,909,941,932,911,912,858,859,927,928,934,908,939,929,964,1200,1202,1203,819,821,823,818] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [13215,8595,8596,8597,8598,8599,8422,8442,8435,8441,8414,13207,13213,13209,13211,13240,13241,13243,8621,8440,8594,8640] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [1267,375,497,1269,1270,1271,1268,473,462,374,390,465] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [13407,13424,13410,12004,12760,12343,10326,12334,12006,12804,12805,11991,12342,12786,12788,12759] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [7366,6832,6833,7432,7384,7385,7386,7080,7096,7097,6824,7431,6875,6876,6877,7380,7381,7382,7383] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [10047,8071,8072,8081,8082,8073,8085,8114,8115,10048,10050,10418,10419,10455,10046] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [9425,9184,9326,9342,9678,9417,9414,9412,9419,9449,9451,9693,10232,10220,10221,10228,9327] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [2952,2616,2617,2903,2905,2951,2900,2891,2901,2902,2904,2906,2396,2489,2344,2352,2397,2395,2884] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [10877,10885,10882,10844,10871,8720,8722,10883,10884,10845,10846,10847,10848,10849,8719,8721,10692,8698,10664,8716,8750,8748,8747,10670,10672,10690,10685,10890] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [2608,2609,2958,2960,2836,2959,2975,2731,2696,2699,2707,2624,3508,3509,3507] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [5564,5565,5566,5938,3639,5937,3596,3612,5575,5582,5974,3595,3606,3597] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [4938,4949,4850,4851,4973,4936,4937,4943,4944,5747,5751] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        
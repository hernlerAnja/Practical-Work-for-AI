
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
        
        load "data/4UX8.pdb", protein
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
 
        load "data/4UX8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7420,7422,7424,7442,7443,7476,7477,7507,7448,7445,7450,7451,7472,7382,7782,7378,7379,7380,7370,7537,7376,7817,7514,7515,423,7516,7806,7809,7788,7796,7536,7808,7807,335,7480,7483,7484,827,828,370,372,808,810,826,320,421,422,342,353,419,332,326] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [8696,8697,8722,8734,8723,8724,8725,8727,8615,8587,9181,9180,9152,9175,7384,7386,7387,7388,8616,7391,7414,7412,7413,7410,7411,7819,9179,9176,8670,8661,8663,8672,8695,8698,8704,8706,8705,8691,8693,7777,7776,7389,7732,7730,7731,7733,8664,8665,7738,8611,8612,8614,8754,8765,9215,9213,9174,8764,8640,8641,8642,7704,7707,7708,7739,7740,7741,7701,7702,7651,8673,8674,8681,8682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [2940,2943,2944,2975,3228,3394,3058,2784,2785,3492,3509,3375,3379,3508,3470,3473,3477,3391,3392,3486,3398,2926,2927,3225,2930,3224,3226,2789,2803,2783,3524,3161,3377,3160,3231,3230,3513,2805,2924,2922,2963,2964,2967,2966,2933,2974,2962,2995,3005,3471,3472,2764,2753,2754] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [6510,6513,6514,7079,6796,6947,6949,6945,6798,6964,7078,6353,6354,6355,6730,6359,7083,6373,7094,6492,6494,6496,6497,6500,6794,6795,6800,6801,6731,6545,7062,6961,6962,7056,7043,6968,6628,7047,6375,6537,6533,6534,6544,6323,6536,6565,6575,7040,7041,7042,6503,6532,6334,6324] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.396,0.902]
select surf_pocket5, protein and id [11597,11622,11630,11586,11620,11621,11623,11616,10725,10727,10726,10728,10701,10698,10737,10744,11618,11540,11541,10555,11565,11599,10560,11595,11598,10658,10687,10688,10550,10551,11588,11590,11659,11647,11650,11512,11567,10569,11648,11649,11652,11631] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.286,0.278,0.702]
select surf_pocket6, protein and id [10679,10678,10708,10709,10234,10259,10261,10265,10268,10541,10526,10527,10538,10715,10263,10483,10271,10272,10706,10707,10294,10303,10544,10525,10232,10676,10236] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.416,0.361,0.902]
select surf_pocket7, protein and id [11078,11104,11041,11043,11070,11074,11860,11034,11045,11576,11575,11862,11863,11865,11867,11868,11072,11869,11873,10596,11573,11555,11556,11581,11046] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.357,0.278,0.702]
select surf_pocket8, protein and id [7753,7783,7309,7790,7613,7601,7602,7751,7207,7208,7619,7597,7600] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.506,0.361,0.902]
select surf_pocket9, protein and id [10347,10409,10432,10401,10368,10367,10375,10376,10707,10711,10295,10462,10461,10431,10730,10713,10731,10301,10302,10303,10305,10291,10297,10716] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.427,0.278,0.702]
select surf_pocket10, protein and id [1100,1260,1280,1253,1255,1264,1269,46,66,44,69,71,1239,197,219,74,77,193,187,190,1295] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.596,0.361,0.902]
select surf_pocket11, protein and id [3614,3616,4823,4825,4830,4809,3767,4834,3789,3647,3763,4865,3760,3757,4670,4850,4839,3639,3641,3636,3644] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.498,0.278,0.702]
select surf_pocket12, protein and id [6570,6609,7030,7032,5551,6569,6580,6991,6584,6599,6600,6602,6321,6322,6308,6542,6540,6541,6586,6583,6573,7042,5580,6607,7028] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.686,0.361,0.902]
select surf_pocket13, protein and id [3039,3460,3010,3013,3014,3016,3029,2751,2752,3032,3003,3472,2010,3000,2971,2999,2972,2970,3462,1981,2738,3037,3458,3421] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.569,0.278,0.702]
select surf_pocket14, protein and id [774,926,927,772,773,921,922,923,924,925,789,1116,78,79,945,905,61,907,86,1115,1117,81,84,405,404,402,791,386,397,385,377] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.776,0.361,0.902]
select surf_pocket15, protein and id [6905,6906,6926,6928,6927,6705,6724,6840,6704,6859,6861,6863,6866,6901,6904,6896,6862] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.639,0.278,0.702]
select surf_pocket16, protein and id [10309,10316,10319,11537,10314,10308,10315,10313,10660,10664,10661,10662,10663,10272,11536,10657,11543,10709,10666,10667] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.867,0.361,0.902]
select surf_pocket17, protein and id [10966,10969,10971,10963,10965,12862,12866,12867,12868,10972,10956,11396,11376,11390,12875,11389,11391,11354,12856] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.690]
select surf_pocket18, protein and id [3335,3134,3135,3154,3358,3289,3291,3292,3293,3270,3334,3331,3296,3326] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.843]
select surf_pocket19, protein and id [8044,8046,8038,8040,9943,9950,9937,9941,9942,8041,8031,8451,8047,8465,9931,8429,8464,8466] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.620]
select surf_pocket20, protein and id [3648,3649,4496,4497,3631,3651,3654,3656,4492,4493,4494,4495,4491,4342,4344,4343,4515,4359,4686,4685,4687,3947,4361] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.753]
select surf_pocket21, protein and id [8153,8179,8651,8116,8149,8118,8120,8121,8630,8648,8650,8631,8656,8948,8145,8935,8937,8938,8940,8943] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.549]
select surf_pocket22, protein and id [12876,12878,11222,11218,11317,11357,11361,10801,12422,10773,12825,11319,11320,11322,12828,10774,10904] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.663]
select surf_pocket23, protein and id [8297,8436,8432,9903,8392,7848,7876,8394,8395,8397,9900,8293,7849,7979,9497,9951,9953] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.478]
select surf_pocket24, protein and id [3992,10348,10349,3993,3941,4380,3940,3942,3905,3921,3902,4378,4398] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.573]
select surf_pocket25, protein and id [4878,3664,3665,3666,4657,3673,3674,3675,3670,3692,4568,4887,4576,4575,4607,4635,4634,4864] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.408]
select surf_pocket26, protein and id [1294,1308,1317,1065,1064,1087,103,104,105,100,95,94,96,1005,1006,122,998,1037] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.482]
select surf_pocket27, protein and id [6736,6675,6738,6758,6679,6739,6748,6745,6747,6643,6622,6635,6637,6640,6639,6685,6686] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.337]
select surf_pocket28, protein and id [3073,3169,3166,3168,3188,3070,3175,3177,3178,3105,3109,3115,3052,3065,3067,3069,3116] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.388]
select surf_pocket29, protein and id [1161,875,1825,1838,1839,1840,1841,1842,1843,1829,1834,1837,1619,1835,1845,1849,873,1180,2155,2157,2160,2156,2161,9144,9145,9147,9119,9121,9123,9122] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.290,0.278]
select surf_pocket30, protein and id [12776,12777,12778,12779,12952,10875,12467,12443,10873,10851,10852,10825,10832,10833,10853,12440,12444,12445,12446] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.420,0.361]
select surf_pocket31, protein and id [12069,12070,12072,5727,5725,5730,5731,4731,5395,5409,5410,5411,5412,5413,5408,4443,4445,4750,5189,5399,5404,5405,5419,5407,5415,12044,5726,12046,12047,12048] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.361,0.278]
select surf_pocket32, protein and id [9618,12770,12771,9616,12744,12747,10062,10057,10060,10064,12738,9645] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.510,0.361]
select surf_pocket33, protein and id [8287,8252,9326,9327,9320,8289,8318,8321,9329,7840,7841,7868,7871,7867] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.431,0.278]
select surf_pocket34, protein and id [12982,9813,12570,12989,9819,12985,12987,9845,9846,12543,12541,9822] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.600,0.361]
select surf_pocket35, protein and id [10765,10766,11243,11246,12254,12251,12252,12245,11214,10792,10793,10796,11177,11212] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.502,0.278]
select surf_pocket36, protein and id [10007,10008,9852,9854,7950,9542,9851,9518,9521,7948,7900,9519,9515] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.690,0.361]
select surf_pocket37, protein and id [12776,12777,12779,10875,12932,12443,12467,12933,10873,10825,12440,12444,12446] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.573,0.278]
select surf_pocket38, protein and id [6816,6391,6393,6420,6421,6859,6860,6861,6851,6852,6853,6817,6398] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.780,0.361]
select surf_pocket39, protein and id [3289,3290,3291,3246,2821,2823,3247,2850,2828,2851,3283,3282,3281] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.643,0.278]
select surf_pocket40, protein and id [6730,6661,6674,6943,6670,6947,6945,6925,6927,6731] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.871,0.361]
select surf_pocket41, protein and id [3161,3355,3377,3160,3357,3373,3375,3091,3104,3100] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.686,0.702,0.278]
select surf_pocket42, protein and id [6703,6705,6840,6717,6839,6700,6714,6715,6716,6706,6707,6710,6834,6835,6828,6829] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.835,0.902,0.361]
select surf_pocket43, protein and id [3133,3135,3130,3145,3146,3147,3269,3270,3258,3264,3265,3259,3136,3137,3140,3144] 
set surface_color,  pcol43, surf_pocket43 
   
        
        deselect
        
        orient
        
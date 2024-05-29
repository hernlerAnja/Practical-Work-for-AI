
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
        
        load "data/5X2F.pdb", protein
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
 
        load "data/5X2F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3159,3160,3521,3551,3176,3522,3523,3524,3631,3525,2588,2589,2591,3535,3498,2595,2596,2600,2602,2604,3499,2622,2624,2772,2773,3637,3638,3639,2771,3661,3184,3152,3155,3630,2583,2584,2587,9309,9310,2571,2572,2577,2578,2579,2580,3212,3826,4047,3526,3827,3768,3769,3770,3792,3774,3778,3795,3796,3797,3763,3767,3765,3812,4098,4100,4097,4107,3128,2575,2623,2756,2755,2765,2769,3087,2573,3125,3111,3550,3108,2993,2994,3104,3105,3106,3107,2998,3090] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [719,698,705,344,1143,1144,699,700,717,207,208,157,159,161,206,588,701,1223,702,753,754,1114,1128,156,162,163,165,167,168,1224,746,749,778,722,682,1231,359,360,361,357,172,1230,1232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [6010,5617,6089,6090,5980,5994,5583,5588,5590,5217,5569,6009,5454,5455,5573,5610,5613,5618,5642,5036,5034,5035,5041,5581,5586,5038,5230,5545,5563,5564,5058,5233,5234,6097,6098,5565,5042,5080,5044,5079,5081,5046,5047,5050,5051,5054] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [8501,8406,8502,8510,7644,7646,8508,8509,7452,7453,7493,7457,7440,7447,7448,7450,8020,8023,8422,8027,8028,8392,8052,7441,7993,7997,8421,7979,7996,7629,7444,7442,8487,7863,7864,7975,7956,7972,7974,7628,7627,7632,7638,7491,7492,7642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [9564,9566,9534,9537,47,9602,253,274,289,271,275,278,8159,8161,8162,8163,8164,9518,8122,8123,283,8098,8128,9512,291,8062,8063,8096,8097,8160,8450,8132,8451,9603,8460,98] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4805,4806,5197,5202,5571,7171,7177,7180,7181,3113,3116,5597,7183,5578,4811,4812,4813,4814,4819,4827,7197,7199,4831,4834,7179,5572,5574,4801,4832,5203,5204,5205,5580,5582,5579,2743,2736,2741,2742,2744,5596,3139,4818,3117,3120,3138,3121] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [5141,4748,4784,4785,3579,3580,5152,4746,4747,4749,4715,4716,4710,3590,5144,5147,5148,5162,3232,5156,3195,5164,3230,3194,4706,3288,3289,3290,3291,3292,3293,4705,4709,3229,3251,3252,3253,3257,3264,3330,4977] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [2310,7553,7556,7559,7560,7574,1183,2270,2307,2309,2241,2271,2272,2273,7576,825,827,885,886,887,888,889,890,2230,852,848,858,854,859,7332,7538,2231,1173,788,789,1172] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [709,9619,9650,9653,595,596,615,9620,2369,708,554,593,1209,589,592,9609,9648,9646,550,548,549,2365] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [2337,2340,2331,732,2341,2343,7609,7610,7616,7617,2339,1159,733,2359,7982,7984,7981,7614,7615,710,714,9650,9652,9649,9631,9632,9645,9630,9624,7988] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [7166,7164,7167,7196,7200,4840,4845,4849,2956,3002,3003,3021,7156,7163,7124,2960,2954,2955,2957,4844,4848,3115,3616,2985,2998,2999,3001,2995] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [2359,7982,7984,2331,2339,324,331,332,9631,9632,9630,9624,9633,710,714,329,707,330,9652,9636,8006,8007,325,7988] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3484,3796,3797,3920,3918,3697,3701,3778,3790,3741,3895,3896,3835,3664,3665,3667,3489,2606,3695,3696,3666,3694] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [9658,2357,2360,7982,7984,2324,2326,2316,2284,7872,7873,2327,7891,9662,7983,8487,7825,7829,7830,7871,7865,7868,7869,7824,7826] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2554,2545,2547,2555,2567,2632,2634,2540,2544,2635,2782,3054,3060,2781,3066,3067,8301,7809,7823,7826,8274,8276,8278,8311,8312,8313,2548,7822,7834,2503,7291,2539,2538,7290] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [8735,8737,8716,8606,8572,8576,8599,8613,8614,8535,8536,8538,8537,8566,8567,8568,8367,7473,7475,8368,8370,8355,8358,8653,8714] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [2703,6038,5720,5721,5712,5751,5752,5716,5723,7149,7150,7060,7063,7067,7070,5747,5750,5749,2690,2693,2695,5688,5690] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [2568,2571,2572,2577,2578,2566,2581,2586,8267,2565,2567,8246,9336,9337,8244,8242] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [4799,4801,4832,4835,4802,5417,7209,5416,5421,6075,5456,5446,4789,4790,4791,4828,5464,5463,5460,5462,4909,5482] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [7975,7800,7956,7958,7974,7642,7862,7876,7797,7880,7798,8501,8510,7644,7646,8508,8509,8503,8504,8511,8531,8532,8514] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [2380,2383,2385,575,948,941,2386,2387,973] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [187,172,175,179,189,190,1092,1232,361,1116,1117,1128,1118,1129] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2797,2798,2799,8295,9310,8266,9308,8303,2594,9288,9289,9290,8293,8294,8296,8750,8753,8755,8763,8291] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [2981,4857,4858,4860,4856,3374,3376,3344,3351,3354,3316,3317] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [1753,1624,1626,1709,1904,1907,1748,1518] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [4118,4011,3977,4251,4392,4394,4240,4397] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
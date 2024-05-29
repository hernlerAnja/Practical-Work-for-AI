
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
        
        load "data/6VQL.pdb", protein
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
 
        load "data/6VQL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2959,2983,3321,3322,3329,2568,3429,3430,2423,2424,2430,2431,2567,2944,2950,2951,2954,2958,2992,3346,3345,2416,2552,2464,2465,2466,2900,2901,2902,2904,2906,2418,2419,2421,3022,3030,2370,2411,2412,2415,2413,2417,3421,3422,3423,3424,3427,3428,2786,2903,3311,3310,2442,2445,2434,2435,2438,3294,2447,2927,2931,2932,2911,2930,2938,2925,2923] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [292,293,253,1252,1253,1254,1176,740,742,396,294,392,394,395,249,250,380,622,763,768,736,737,738,739,255,257,258,264,265,1160,1259,1260,1261,723,786,766,767,787,790,1177,759,761,774,247,199,200,202,204,205,854,828,863,866,206,209,246,819,245,252,794,795,1152,1153,818,877] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5131,5155,5194,4603,4604,4606,4608,4609,4651,4615,4602,4557,4598,4600,4596,4597,4601,5202,5164,5116,5122,5123,4650,4649,5130,5490,5589,5590,5489,5497,5591,5592,5596,5598,4749,4750,5597,5126,4961,5104,5513,5514,4734,5072,5073,5074,5075,5076,5078,4616,4619,5462,5478,5479,4620,4623,4634,4627,4630,4632,5099,5102,5083,5095,5097,5110] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3368,3370,3367,8443,8445,8444,870,2533,8453,2534,2537,2918,2922,2934,2912,2913,2915,2939,3359,3363,2940,2941,868,862,8431,8424,8452,8451,2538,2539,206,209,863,2487,2924,2925,2486,3360,3362,3393,3394,3408,3406,3407,2914,2791,2794,2762,2759,7739,2748,2775,7728,2745,7480,2740,2741,7453,7454,7404,7398,7405,7409,7410,7412,7417,7421,7422,7441,7443,7451,7452,7399,7400,7401,7301,7737,7740,7734,7416,7726] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [1238,1239,5271,5272,5273,754,749,5240,5241,5554,5555,595,597,598,599,5120,5552,758,362,365,366,367,6255,628,629,630,5262,5264,631,750,5260,6264,5261,5543,5549,5541,5548,361,15,5295,5265,14,579,5561,627,770,581,584,611,577,578,580,1207,1202,5219,5220,1190,1193,1224,1225,606,5110,775,1198,776,1199,1200,1201,6256,777,760,5267,5237,6262,6263,6249,6261,5316,5293,5294,5217,5224,3032,5213,5162,6242,3041,3026,6254] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [6784,6785,6786,6790,6791,6831,6832,7336,6833,7304,7311,7312,7699,7698,7774,7775,6792,6794,6796,6797,7328,7335,6803,6804,7674,7675,7682,6788,6789,7264,7276,7280,7284,7285,7142,7291,7283,7303,6743,7278,7254,7255,7257,7259,6931,6932,6933,7258,7776,7046,6934,6935,7777,7782,7783,6819,6919,7253,7240,7345,7383] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3068,3069,3098,3099,4075,900,904,905,935,936,937,888,926,928,3384,3386,3387,2948,2949,882,883,884,3371,3366,3373,893,899,881,775,1195,1197,1198,3048,2938,1217,1218,783,784,785,1216,774,1206,1215,1204,1207,3046,3047,3092,3125,3100,3101,3088,3375,3376,1896,1898,1889,1890,3052,3057,3064,3063,3041] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2763,7291,7277,7292,7293,7294,7720,7723,6906,7271,7724,3168,3169,3171,3167,3191,4280,4303,4304,4305,2753,3229,2754,3227,3228,4302,3170,4335,6901,7266,6889,2761,2762,2770,2771,2759,3375,3380,3389,3393,3376,3394,3395,3123,3148,7301,7394,7401,3122,3145,3147] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [644,5265,38,643,336,39,60,337,41,43,5260,646,647,5261,5263,335,359,361,374,360,641,6545,6552,345,6277,6295,5316,6551,6554,6555,6556,5248,6276,5256,5257,5290] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2938,315,2487,2924,2925,2366,2485,2486,2399,2391,2398,2290,2305,199,200,201,204,203,219,2501,2502,2499,220,221,225,760,761,774,2539,206,2385,2386,2387,313,327,329,330,142,232,233,139,309,310,311,2367,2370] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [8730,8736,8737,8739,8740,8741,7438,7441,7444,7440,7437,7470,7501,2811,2806,7446,2201,2807,2531,2532,2533,2204,2507,2509,2517,2808,2202,2222,2223,2546,2810,7429,7431,8465,8485,8484,8449] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [597,598,599,5111,5112,5535,5090,4715,5085,5537,5539,590,1031,5538,1022,1027,1029,1059,1060,589,5094,5096,4721,2122,2123,2124,1005,5110,1002,1003,1004] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1125,1160,1259,1260,1261,258,264,265,268,270,272,276,489,277,411,1274,1283,269,526,396,294,394,395,412,486,723,413,1141,1142] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [6815,6934,6935,6951,7778,7779,7781,7782,7783,7795,7796,7799,7010,7803,7805,6819,6807,6808,6811,6932,7046,6952,7240,7012,7004,7005,7011,7675,7664,7682,7647,7663,7644,6797,6803,6804,6833] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [3841,6008,3819,6007,3799,3791,3792,3840,6017,6018,6021,4049,5973,6239,6240,3006,6237,6238,6221,4048,5178,5176,5179,3007,6227,4050,4051,3784,3004,3777,4032] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [959,606,607,1005,957,958,979,985,1206,1210,1211,1220,1224,1225,1226,1207,5220,597,598,599,961] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [4749,4750,4765,4767,5597,4861,5610,5611,4819,4820,5596,5598,4627,4630,4632,4821,4825,5620,5462] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [5981,5980,6030,5988,6008,3818,3819,6029,3828,3829,3832,5973,6240,6221,5966] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [1871,1872,1873,7357,7359,8166,8428,8429,1855,7360,8174,1600,840,1606,1607,1874,843,842,8427,1615] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [5295,5561,5562,5548,5557,5560,5316,5293,5294,5318,5319,4945,4946,5339,5563] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [1641,8387,1640,1642,1651,1652,8412,8410,8166,8429,8181,8159,8165,8174,8227,8226,8201] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3311,3546,3810,3567,3569,2975,2974,3322] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        
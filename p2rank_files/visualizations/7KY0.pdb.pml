
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
        
        load "data/7KY0.pdb", protein
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
 
        load "data/7KY0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5358,5372,5376,5800,5801,5241,5406,5771,5772,5353,5880,5054,5881,5785,5886,5889,5055,5351,5355,5240,4853,4901,4902,5038,4862,4865,5051,4888,4866,5402,5431,5407,5375,5399,4850,4851,4856,4859] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [7685,7688,7689,7690,8113,7671,7719,8114,8194,7713,7715,7712,7340,8193,8195,7356,7357,7666,7720,8084,8199,8098,8062,8200,8201,8202,7175,7554,7153,7152,7744,7158,7159,7203,7164,7202,7204,7168,7171,7155,7683] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [1151,1231,1232,1152,1122,1136,157,162,207,155,156,161,208,361,206,1239,168,167,171,172,1237,702,344,703,159,591,704,705,751,753,757,758,782,726,727,750,723] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [3517,2521,2520,2522,2571,2572,2573,2527,2528,2956,2957,3596,3516,3597,3487,3501,2533,2725,2726,2537,3602,3603,3115,3116,3118,3122,3123,2525,3147,3088,3093,2709,3074,2524,3091,3092,3095,2961,3067,3068,3069] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [5774,5938,5963,5964,5965,6303,6299,4862,5431,5423,5430,5459,6251,6248,6245,6249,2006,6252,1972,1973,1938,1944,1946,1948,1993,1994,1995,4864,1974,1975,1939,6199,5977,6259,5961,5962,5978,5772,5943,5946,5949,5953,5957,5775,5776] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [5023,5364,5367,5360,5363,5018,9280,9286,6941,6947,6949,6950,6953,7320,6951,5385,5386,5814,7673,7676,7680,7681,7325,7698,7699,9288,5019,9289,9290,9292,6967,9308,6969,9287,6968,7326,7327,7328,5025,5371,5384,7321,5024,5026,7225,7684,7697] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [2594,331,2695,2696,2697,2346,4665,3079,4646,4647,4645,4648,4639,718,736,737,2330,735,4667,714,1165,2325,2326,2694,2324,2331,2318,2327,324,329,4643,312,330,332,711,719,722,3102,3101,4651,3083,3084,3087,325] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [4965,4968,4969,7814,7815,7818,4972,4986,7755,8142,8143,7754,7824,4741,4947,4959,4962,9258,9259,9220,9223,8153,9189,9190,9193,7852,7856,7853,7855,7851,9174,9183,9184] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [2412,2618,2636,2639,2257,2258,2228,2231,2296,1180,1181,2657,2648,2633,1191,894,891,893,2212,852,853,2205,2202,2209,888,889,890,931,862,793,826,829,827] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [527,528,1244,1241,1243,492,496,469,1277,360,378,377,1254,1255,1260,1284,1234,1235,1236,1252,1263,1238,1240,1239,1283,1285,184,689,688,465,467,470,471] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [5902,5904,5933,5922,5890,5055,5888,5354,5337,5176,5054,5177,5071,5118,5114,5119,4881,5141,5145,5893,5072] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [4626,4622,4624,4631,4632,4634,4635,600,619,601,30,554,552,553,555,557,558,543,599,713,583,593,596,597,2357,2364,568,1217,2352,2355,4668,563,569,4661,4664,4665,4663] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [3598,2892,3609,3608,3618,2724,3053,3070,2726,2743,2893,2835,2834,2742,2552,3620,3649,2540,2545,3604,3596,3069] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [5501,5502,5511,7288,5507,7249,6884,7041,7043,6919,5830,5441,5442,5829,6920,6881,6882,5840,6854,5539,5540,5541,5542,5543,6883,7267,7270,7271,7095,7274,7264,5475] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [2919,2347,2301,2310,2311,2314,2303,2271,2965,2966,2984,2342,2343,2344,4673,2922,2923,2928,2929,2933,4676,3078,2948,3582,2913,2916,2917,2918,2920,2908,2958,2961,2962,2964] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [5202,5203,5204,5201,4724,9234,5207,6975,5217,6978,9275,9276,9273,9305,9306,9309,9264,5866,5246,5232,5242,5249,5250,9233,5248,5362] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [9317,7505,7510,7514,7515,7516,9314,7525,7517,7520,7026,6936,6970,7675,8179,7559,7562,7561,7563,6933,6934,6937,6966,6967,6894,6895] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [527,1244,1247,1233,1241,1243,360,361,1234,1235,1231,605,610,525,604,608,688,704,589,590,591,596,595,702] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [4910,4912,4913,5062,5063,5064,4816,4817,4818,4822,4821,4846,537,538,539,1042,1043,7,551,29] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [1238,1240,180,1239,175,191,168,167,171,172,194,1237,208,361,1136,1100,179,1125,1126] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [977,952,953,955,1186,919,945,2078,578,579,2367,2368,2369,2055,2056] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [4421,4420,4386,7140,7141,3283,3341,3342,3310] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [4912,4913,5062,5063,5064,1053,1054,4821,519,538,539,1042,1043,7,520,1038] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [8196,7355,7356,7667,7374,8218,8225,7180,7183,7185,8221,8201,8203,8214,7489,8215,8216,7570] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [7915,7917,8148,7540,7541,7914,7881,7907,7939,9018,9017] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [3616,3598,3612,3614,2892,3609,3606,3608,3053,3070,2725,2726,3596,2969,2970,2973,3069] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [6278,1883,1884,1885,2038,2039,2002,2001,1964,6252,6250,6279,1851,1856] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [4902,4862,4865,4888,4866,4869,4874,5785,5886,5889,5055] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [8582,8583,8716,8666,8475,8441] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
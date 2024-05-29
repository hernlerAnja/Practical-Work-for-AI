
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
        
        load "data/6WXN.pdb", protein
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
 
        load "data/6WXN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7811,8339,7373,7374,7527,8346,8347,7523,7526,7793,7796,7525,7543,7795,8369,7833,7856,7857,7834,7835,7860,7864,7865,8258,8259,8229,7508,7509,7830,7828,7510,7809,7810,8338,8340,8341,8356,8358,8351,8367,7660,7661,8363,8364,7626,7630,7724,7729,7738,7739,7742,7632,7744,7745,7659,7635,7604,7601,8357,7346,7352,7353,7372,7349,7347,7350,7889,7355,7357,7358] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [5888,5889,5494,5859,5860,5861,5862,5968,5969,5873,5863,5864,5081,5460,5464,5874,5977,5976,4928,4930,5098,4931,6038,5837,5440,5442,5477,5478,5487,5490,5495,5469,5463,5471,4896,4902,4903,4904,4908,4909,4898,4899,4900,4947,4948,4912,4913,4921,4935,4916,4949,4920,4897,4901,5519] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [171,150,151,154,155,158,1079,1093,1193,1197,1057,1108,1109,1196,184,334,185,336,337,338,183,140,138,139,144,145,1189,1188,142,321,678,330,659,660,655,661,662,1054,1082,1083,167,1217,1218,1220,1221,1222,1225,162,163,642,684,685,683,707,708,710,714,715,739,680] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [3505,3506,3111,3104,3105,3107,3112,3136,2522,2521,2527,2528,3476,3585,3586,3593,3594,2721,2566,2568,2529,3490,2525,2567,2704,2523,3056,3057,3058,3039,2717,3077,3080] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [7490,7495,7498,7072,7078,7081,7491,5472,5473,5474,7084,9419,9420,5066,9412,5061,9421,9418,5451,5455,5456,7842,7843,7844,9424,7825,7827,7818,7822,7826,9438,9441,7101,9425,7080,7098,7079,7821,4968,4970,5068,5459,7496,7497,7829,5067,5069,7478] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [2268,2232,2270,2271,2613,1148,2205,1137,1138,2628,2631,2634,2652,2649,2202,2206,2207,2413,2465,847,848,849,850,851,749,750,809,784,786,788,813,846,2178,2186,819,2635,2636,2637,2639,2233,2235,2177,2180] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [482,483,484,485,1201,1213,1214,1217,1219,1220,645,354,427,449,452,426,428,628,629,389,1238,1239,1241,1249,567,643,646,565,454,455,458,424,1206,1208,547,1188,1190,1191,1196,334,336,338,1198,660,662,552,562,546,561] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [4665,4666,4667,308,2689,2690,2691,2692,2321,3066,3068,2292,2298,669,671,2302,675,694,2684,2685,693,2299,2300,670,4687,4669,301,309,306,307,4659,4668,668,672,2296,3065,3072,3091,302,3090] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [932,933,934,524,535,536,909,931,930,912,1143,1154,1156,1158,1142,1153,902,1157,2325,525,1155,2312,1144,2331,2337,875,4887,4890,4891,4893,4892] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [558,554,556,557,1174,553,576,550,574,575,663,667,661,13,500,505,508,509,510,511,514,515,512,540,4644,4613,4651,4612,4652,4654,4655,4860,4614,4615,2326,2328,2329,2330,670,4688,520,4684] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [2396,2954,2955,2285,2288,2245,2284,2973,2314,2317,4693,2287,2318,2320,3066,2911,2912,2902,2906,2907,2908,2909,2937,2953,2897,2951,2947,2950,4696,3067,3571] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [5033,8287,8288,8298,7969,7959,8000,8001,9304,9311,9301,9302,7898,7900,5009,9390,9391,5012,5023,5024,7936,5015,7960,7961,7963] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2879,2880,2959,2962,2964,3040,3042,3043,2852,2851,2819,2821,2824,2944,3056,3057,3058,2949,2958,3614,3615,3617,2846,2847,2849,2825,2737,2738,3585,2719,3593,3587,3588,3605,2881,3604] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [9404,9405,5337,9408,5330,5334,5336,5280,5320,5325,5328,5954,7109,9437,7106,9436,9440,5291,5295,5294,5300,5285,5289,5290,7111,7114,7115,5301,5356,5333,5447,5450,9407] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [5860,5861,5862,5873,5863,5864,6308,6086,6087,6368,6055,5837,6052,5874,5511,5547,6358,6350,6357,4909,1968,4920,4913,4916,6360] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [5918,6992,7440,7458,6987,6988,7419,7289,7237,7050,7434,7431,7437,7263,7441,7444,7288,7243,7006,7014,7015,6979,5917,5631,5928,6994] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [3248,3243,3244,3245,3247,3216,269,3182,3184,3219,3206,3207,4551,3208,3210,4558,4637,4638,3535,266,3545,251] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [3351,7333,7334,7335,3388,4338,4340,4341,4368,3326,3327,3328,3329,3353,3356,2922,2923,2916] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [3299,3331,4715,4727,2932,2933,3306,3272,4708,4711,4713,4714] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [4892,4896,4902,4903,4904,1993,1996,4906,4909,4910,4890,4891,4893,953,4911,4942,4897,1995,2002,932,933,934,931,930,929] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [2538,2541,2545,2546,3490,3491,3454,3594,2721,2537,2554,2550] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [494,508,511,507,965,4860,12,5395,1000,5401,5106,5107,4824,5388,5394,5402,4853,4857,4861,4869,4868] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [4401,4433,4370,4372,4375,4432,4431,4374,7924,7923,7963,5034,7937,5023,5024,7936,7938,5022,5038,4402,4727,4726] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [5330,5325,5328,5954,9440,5443,5447,5450,5329,9407,5355,5354,5356,5333,5439] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        

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
        
        load "data/2OIB.pdb", protein
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
 
        load "data/2OIB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1213,5331,576,1181,1214,1227,1228,5385,5669,5671,1215,591,760,1188,1189,1190,738,741,1191,754,753,361,583,581,582,5222,5232,590,991,5384,614,5375,5377,5383,5409,564,5373,595,607,611,568,359,733,734,735,739,355,5372,360,356,5667,5659,5665,567,575,565,5411,560,1195,1196,1199,1209,921,1200,945,947,942,943,941,965,970,971,5379,5382,5336,5381,5347,5353,5349,5352,6407,6408,6409,6395,6402,6416,6414,6415,6417,5332,5318,3079,3081,5323,5325,5274] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [5613,4753,4721,5705,5706,5707,5709,5715,5719,5730,4710,4711,4712,4713,4717,4718,4719,4751,4752,4715,4716,4839,5208,5629,5184,5185,5187,5195,5068,5070,4693,5211,5209,5206,5721,5189,5190,4853,5188,5314,5228,5234,5238,5266,5242,5243,5265,5214,5235,5630,5264,5276,5302,5306,5267,5605,5222] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [910,912,884,885,888,889,918,913,3138,3135,3136,1937,1946,867,3147,3422,3430,3432,3172,3173,3174,865,872,7587,7595,866,920,1193,1195,1196,919,945,947,1202,1203,1205,1207,2995,3094,3434,768,769,1186,3418,883,1206,3111,3112,3115,3116,3146,3433,3110,3099,3093,5318,3092,3037,3095,3086,3088,4169,4167,4168,4170,4160,4161,4162,5310,5316] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [3406,3407,3408,3410,3414,3454,7607,854,7613,852,8700,2576,2960,2961,2965,7650,7625,7626,7629,7630,8727,8726,8729,7649,8707,8714,3440,7608,2806,2810,7944,7946,7948,2803,3441,3455,7936,7942,2802,7661,7662,7656,7658,7660,7606,7609,7947,2841,2842,7652,2838,7686,2791,7648,7684,2987,2581,2582,2968,8719,8720,8721,2980,3452,2828,2834,2787,2794,2795,7688,7935,7941] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1241,770,1165,1166,771,750,747,742,778,265,1141,1149,1242,256,253,211,251,252,254,255,259,260,262,745,744,731,721,723,725,726,374,388,390,1247,1248,1249,1250,257,287,264,286,288,1243,1258,1244,604,758,812,800,802,842,764,774,779,850] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2977,2978,2997,2998,2999,3001,3005,3393,3392,3469,2832,2948,2950,2951,2953,3468,2595,2478,2971,2507,2508,2509,2474,2475,2476,2480,2985,3029,3006,2481,2483,2495,3368,3470,3478,3376,3484,2609,2610,2611,2972] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [359,733,734,735,355,368,625,628,630,631,5372,329,331,353,615,5375,5377,5408,5373,5374,5376,38,42,43,44,45,46,627,47,64,63,19,738,6415,6417,5360,5369,6413,354,5352,5353,5362,340,6430,6429,6448,6706,337,338,5407,5432,6716,6712,6715,6717,6713] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2809,7500,7501,7924,7502,7479,7495,7920,7042,7482,7484,7499,3218,4445,7094,4446,3215,3216,4412,2800,2801,7928,7929,7932,3240,3243,4387,3238,3274,3275,3276,7093,7474,7088,3440,7608,2806,2808,2810,7509,7946,7948,3441,7600,7609,3423,3436,3422,3148,3171,3172,7602,3170,3442,3169,3192,3198,2817,2818,3195,3427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6967,6968,6973,7541,7543,6971,6979,7882,7883,7890,7871,7488,7491,7492,7493,7906,7907,7512,7515,7519,7520,7122,7464,7466,7123,7346,7465,7982,7983,7243,7467,7984,6989,6990,7992,7998,7472,7107,7461,7462,7345,7020,7021,7553] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [2552,2561,9030,8742,8760,8761,9018,2296,2855,2274,2854,2574,7651,2575,8729,7645,7646,7649,8725,7637,7639,2857,2858,9024,9027,9028,9029,7709,9025,2251,7653,7678,7679,2550,2558,2551] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1669,1670,8478,8425,8426,1687,1683,1684,1685,1689,8705,8411,8655,8666,8668,8661,8670,8663,8433,8418,8479,8453,1643,1649] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [989,991,574,2186,2188,1011,582,5223,5224,5651,5653,5654,5655,1048,2163,1049] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1628,1642,1643,1650,1695,1696,8466,8467,8470,8452,8465,1670,8426,8432,8433,8451,8453,1872,1883,1885] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [824,826,8703,8705,8426,7568,8418,7565,7567,1628,1635,1643,1650,1904,1921,1922,1919,827] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2296,2855,2274,2854,2276,2552,2561,2857,2858,2589,2574,7651,2575,7653,2551,2553] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8289,8294,8286,8287,8297,7778,7773,7774,7775,7776,7780,8285,8284,7812,7779,7805,8083,8082,8923,8926,8928,8317] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [2746,2747,3303,3525,3529,3543,2774,2744,2776,2721,2742] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [911,896,937,2235,2241,2243,2246,2245,938,898,1977,905,908,1978,1958,1942,1959] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
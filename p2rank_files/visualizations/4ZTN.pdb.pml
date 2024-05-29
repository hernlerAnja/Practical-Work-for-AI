
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
        
        load "data/4ZTN.pdb", protein
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
 
        load "data/4ZTN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5751,937,5126,5129,5249,5703,5705,5736,5737,5750,898,910,911,914,946,947,915,945,885,891,892,893,894,794,836,1229,1231,1233,1232,1227,971,973,5082,5083,5090,5091,1219,1222,1221,5098,5094,1955,1956,1957,7632,7638,4865,1963,4866,1962,1965,4860,5710,5711,5713,7639,7640,1943,1950,5275,5269,5276,5702,5259,5253,5257,4864,5248,5706] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [7989,7991,7658,7669,7670,7671,7992,7993,7651,7554,5709,5716,5714,7653,7654,7652,5439,5443,5728,5381,5382,5398,5387,5726,5730,5283,7696,7698,7699,7706,7731,7981,7674,7675,7705,5403,5404,5399,5400,6458,3106,3108,6459,6451,6450,7979,7555,7972,7982,5383,7733,5427,5423,5425,8716,8703,5470,5718,5719,878,880,8717,894] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3028,3033,3057,3096,2524,3428,3032,3403,2999,3004,3012,3024,3025,2522,2525,2576,2577,2523,2529,2530,2578,2679,2533,2536,2546,2564,2547,2997,2664,2527,2528,2974,2975,3427,3504,2680,2859,2860,3503,2977,3505,3006,3411,3512,2976,2978,2980,2979,3054,3066,2482,2515,3104] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7008,7009,7145,7529,7004,7006,7057,7058,6996,7007,7003,7537,7538,7391,7517,7952,7951,8027,7392,7028,7059,7014,7016,7017,7027,7010,7011,8028,7935,8029,8036,7531,7550,7551,7556,7565,7564,7927,7544,7536,7557,7589,7005,6963,7506,7507,7508,7510,7511,7512,7160,7161,7598,7628,7636] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [7519,7524,3126,3142,3143,4196,3138,3139,4190,4195,7127,7130,7131,7132,7528,4188,4189,8013,7540,3131,4176,4183,4197,7965,7966,7968,7978,7546,7547,7969,7973,3120,7976,5367,5369,7368,7999,7365,3121,3465,3467,3469,8014,7362,7354,8000,3122,3113,3115,3119,3064,3468,3137,7400,7520,3165,7397,7126,3162,4198,3178,3182] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1192,1167,1175,1267,1268,245,251,252,253,254,257,285,299,267,400,401,268,1269,1276,236,243,246,247,248,249,297,298,773,385,749,751,757,777,778,1191,746,747,750,632,752,529,798,800,804,828,829,838,776,796,797,202,200,868,876,1168] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [5688,5765,4791,4792,4793,4894,4895,5239,5241,5287,5289,5293,5294,5318,5689,5664,4751,4758,4760,5273,5285,5266,5267,5260,5265,5286,4742,5258,5246,4743,4879,5235,5236,5237,4738,4739,4740,4694,4695,4696,5120,5764,5121,5238,5240,5766] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [785,786,787,5096,5097,5098,5105,5089,1213,1214,1215,1217,784,794,5511,5512,5513,5514,6701,5088,5541,6735,5736,5737,5106,5494,5465,765,768,770,371,764,759,5534,6700,366,372,6675,6676,5571,5572] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [7401,7411,7414,7416,7417,7520,3163,3164,3166,3167,7405,7126,7139,7101,7102,3159,3162,3150,4230,7125,7111,4210,6771,6790,6794,6795,6797,7413,6796,6798,6816,6814,4495,4496,4497,4229,4487,4493,4498,3230,3205] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [3449,9000,9001,7775,7776,7777,8967,8965,7797,7835,8966,3013,3014,3012,3015,2650,2651,2634,2640,2645,2646,8942,8941,2996,2992,3451,3452,3453,7834,7833,2987,7359,7360,7773,7756,7757,7377,8000,7376,7367,7368,7369,7733,7999,3022,3469,3122,3113,3115,7732,7730] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [936,2265,924,964,2260,2262,2263,2264,2254,934,931,5142,5143,4528,4529,938,5146,4834,4835,4836,4844,4858,1961,4859,922,1977,1978,1996,1997,5145,4530,4550] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [8698,8684,8701,8691,8692,1668,1669,852,1703,8483,1704,1706,1708,1702,1688,1689,8659,8651,8657,8658,8662,8664,8414,8407,8429,8421,8422,8475,8474,8449,8462,8476] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [5736,5723,5732,5737,5106,5494,5466,5468,5465,5467,894,887,5098,5105,794,1233,5514] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [7612,8414,8429,8422,7610,7613,1654,1662,852,1941,8699,8701] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [6208,6278,6396,6398,3936,6217,6229,6155,6156,6400,6385,3939,3941,6356,6357,6426,6148,6163,6183,6209,3922,3920,3921] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [2554,2555,2557,2696,2697,2700,2703,2715,3525,3526,3527,2961,2753,2756,2712,3511,2549] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [8449,8462,8463,1932,1669,1647,1654,1661,1662,1941,1689,1714,1715] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [4172,4173,4174,5341,3895,3887,3078,3080,3081,6148,6433,6434,6435] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [2316,2335,2884,2885,2270,2271,2269,2317,2318,2314,2315,2644,2621,2629,2630,2620,2333,2643,2645] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3948,4165,6182,3947,6197,6200,3895,3880,3894,3887,3902,3922,6183] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7303,7307,7333,7305,7306,7863,7279,8080,7313,7335] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        

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
        
        load "data/6WA2.pdb", protein
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
 
        load "data/6WA2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1144,1114,1115,1224,148,154,155,159,160,163,164,167,353,179,1128,1232,1231,172,701,336,722,1141,1143,695,696,151,152,149,198,199,147,200,677,349,351,1223,1117,1118,1092,742,743,744,745,749,774,750,718,719] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5164,5715,5716,6080,5319,6198,5166,5130,5317,5318,5138,5142,5145,5117,5302,5679,5681,5165,5311,5315,5643,6081,6082,6083,6084,5133,5137,5147,6344,5114,5115,5119,5120,5126,5152,5125,5129,5740,5684,5708,5709,5710,5711,5662,5685,6107,6109,6110,6190,6197,6094,5660,5663,6058] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [7829,7828,7830,7831,8157,7833,7692,7693,7694,7834,7843,7658,7847,7846,8597,7661,7666,7670,7677,7643,7648,7654,8225,8229,8230,8254,8195,8198,8224,7642,7645,7646,8222,8223,8608,8704,8705,8706,8711,8712,8076,8174,8175,8062,8176,8703,8170,8164,7997,7999,8161,8158,8160,8732,8734,7673,8735,8077,8080,8082,8156,8162,8623,8624,8594,8181,8721] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [3690,3660,3661,3662,3663,3674,3770,2700,2701,2703,2706,3664,2745,2746,3689,3241,3242,3769,2697,2693,2694,2695,2882,3240,2705,2709,2895,2897,2898,2899,2725,3778,3777,3223,2710,2713,3320,3289,3291,3295,3296,3288,3261,3264,3265] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [7817,7818,5693,5694,5695,7816,8190,8209,7715,8194,8187,8191,7810,7815,7811,5287,5288,5289,5290,5673,5676,5677,5680,5270,8207,8208,5282,6125,7388,7394,7395,7396,7398,7417,8184,8186,8183,6123,9809,5669,5670,5671,5672,9838,9816,9817,9815,9818,9821,5686] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [1700,1117,1426,1708,1118,1119,1427,1374,171,1387,1392,1398,1368,1369,1370,1727,1729,1705,1412,1413,1414,1730,1731,1736,1360,1367,1362,1365,1752,1742,7002,1115,164,167,802,765,1648,1698,1697,766] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [2868,2869,323,3260,2870,3256,3252,2453,4868,714,710,728,729,2431,704,706,2433,4889,705,2767,322,321,324,711,4860,4866,2862,2425,2435,2867,3253,3257,3249] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [7295,7276,7292,5810,5811,7269,7324,7739,7322,7323,7266,5851,5852,6138,6148,5751,6139,7778,5750,5847,5848,5849,7366,7769,5785,5787,7754,7757,7760,7761,7767] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [2869,323,3260,3256,3250,3252,3251,2453,3705,4867,4868,710,704,706,2433,4889,3274,3275,322,321,324,707,711,703,4860,316,4866,4870,2425,3249] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [2827,2812,2819,2821,2335,2338,2403,885,886,2319,844,850,883,2312,821,845,2309,2316,2830,784,818,819,882,881,854,855,1173,2404,1183] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9801,9802,5558,5559,5577,9762,9805,5575,5576,5661,5551,5555,5554,9834,9804,9835,5664,5668,5671,9837,6175,5511,7422,7430,5510,7425,5557,5541,5515,5521] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [3248,3755,3090,3091,3131,3093,3095,3096,3101,3243,2417,2418,2420,2421,3135,3137,3138,3139,3134,3157,2378,2449,4891,4894,4899,4906,2454,3250,3251,2451,4897] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [6664,6693,6377,6665,6379,6380,6333,6334,6718,6714,6702,6393,6667,6340,6335,6337,6353,6325,6329,6332,6358,6364] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [4836,4838,3729,4770,4773,260,263,266,281,267,4800,4803,245,4799,3430,3432,4749,4747,4751,4754,4764,284,4750,3331,3330,3428,3718,3719,4839] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [8328,8324,8327,5232,5247,5250,8265,8264,8301,8334,9719,9722,8365,9703,8337,9696,9697,9693,8362,8364,8652,8653,8663,8361,8363,8366,8335,9787] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [136,137,7450,141,5955,5992,5526,5535,5520,5527,5960,5931,5930,5928,5932,5957,5537,5933,5934,7449] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [9855,9840,9843,9846,8025,8026,8030,8055,7412,7410,8069,8071,8072,8073,9848,9852,9853,7414,7416,7383,8689,7371,7372,7413,7384,7381,8091,8065,8068,8177] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [6043,6044,6226,6225,6228,6046,6048,6484,6355,6307,6485,6486,6463,6363,6230,6356,6305,6260,6259,6351,5148,6253,6254,6255,6256] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [1389,1397,1089,1396,1340,1341,1497,1080,1518,1520,1082,1519,1077,1290,1294,1293,1378,1257,1258,1260,1259,1262,1287] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [4853,4856,545,702,611,592,593,591,1209,549,550,555,547,575,697,589,585,2459,2462,4888,4886,4882,4885,4884] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [9512,8506,2700,8469,2687,2689,2693,2694,8445,9513,8444,8470,8471,8474,8034,8476,8446,8448] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [680,582,596,597,694,1223,517,518,519,600,602,1241,1243,676,677,682,349,351,678,583,695,696,1225,1226,1231,1253,1236,690,684,685] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [5660,5663,5482,5566,5568,5483,6199,6209,5484,6202,5485,6189,6191,6192,6197,6207,5651,5646,5644,5317] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [5732,6083,6084,6085,6393,6667,6340,6335,6337,6353,6666,6334,6392,6614,6358] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [6022,6026,5477,5486,6233,5453,5484,6206,6208,6211] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1077,1516,1518,1588] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
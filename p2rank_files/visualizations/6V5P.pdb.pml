
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
        
        load "data/6V5P.pdb", protein
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
 
        load "data/6V5P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [151,715,721,750,753,701,723,725,1152,1151,147,148,149,152,782,9415,757,758,1122,1123,1125,353,1127,1232,1238,1240,1239,1136,154,157,159,160,163,164,199,198,200,351,336,695,696,1231,172,349] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [7476,7477,7478,7481,7482,7485,7486,7487,7675,7520,7521,7522,7667,7671,7673,7489,7658,7657,7494,7498,7493,7501,8696,8018,8545,8450,8546,8553,8554,8439,8440,8441,8414,8017,7503,8067,8071,8466,8072,8436,8037,8040,8041,8064,8465,8437,7470,8096,7471,7473] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [3673,3644,3674,3753,3754,2678,2684,2685,2687,2681,2679,2729,2866,3231,3245,3252,3227,2730,2875,3207,2879,2883,3225,3226,3761,3658,3762,2689,2690,2694,2865,3304,3272,3273,3275,3279,3280,3248] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [5690,5691,6084,6085,6055,6165,5642,5656,5660,5661,5659,5715,5088,5089,5090,5092,5682,5683,5686,5638,5141,5290,5619,6069,6171,6172,6173,5123,5294,5121,5276,5635,5277,5617,5618,5095,5096,5101,5140,5139,5621,6164,5637] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [321,4848,703,704,707,710,2450,706,4874,4876,2432,1167,2449,4873,323,2853,221,322,711,714,316,324,3258,3259,317,3240,2452,4854,4855,4856,4858,3689,4860,3257,2751,736,737,717,2846,2424,2430,2433,2434,2436,2854,2851,3241,3233,3234,3235,3236,2852,3244] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [7259,7644,7646,8025,8029,8032,8033,8036,7265,7268,5669,5670,7271,5668,8051,7645,7543,7626,5264,5265,8049,8050,9748,9750,5257,5258,5262,5263,5651,5644,5652,5653,5655,5162,9738,9744,8028,9766,7266,7267,5645,5647,8479,9745,9746,9747,8026,8027,8481,7643,7638] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [1374,9394,9395,1369,1371,1435,1433,1400,1403,1382,1386,1385,1395,1420,1372,160,164,1124,1125,1126,167,171,1706,1694,1698,1705,1716,1656,1434,1709,1713,810,773,774,1123] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [9717,5201,5216,5222,5225,5204,5207,5214,8107,8105,8141,8143,8145,8166,8170,5186,5209,5212,5032,9679,9680,9681,4980,9647,9651,9648,9641,9642,9625,9632,8204,8206,8207,8208,8494,8495,8504,8203,8205,8245,9716,8172] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [7172,7202,7150,7153,7156,5798,7146,7147,7163,7169,5823,5825,5826,5827,6124,5726,6114,6113,5725,5822,5824,7237,5785,5795,7588,5789,7597,7606] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [3712,284,3703,3416,4826,3349,3353,3351,3412,3415,3384,3380,3411,3413,266,4742,4757,4758,3378,3374,3377,4732,4735,4739,3314] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [829,852,858,889,891,892,893,894,2805,2402,2814,1191,2339,2796,792,793,1180,1181,890,862,2318,2308,2311] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [4874,4877,705,4870,4873,2463,2458,4872,2461,702,560,2466,549,550,555,556,1217,4801,4840,4841,4844,546,592,593,4802,544,545,591,611,22,585,547,575,589,588] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [5532,5533,5534,5552,5643,5526,5529,5530,5516,9721,9722,9730,9731,9734,9733,6150,7293,7296,9767,5646,9760,9762,5486,5487,5488,5491,7298] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [2453,3235,2420,3075,3739,3077,3079,3080,3085,2407,2408,2416,2417,3141,3118,2552,3119,3121,3122,3123,3115,2377,4879,4882,4885,4887,4891,2448,2450,2446,2449] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [7212,7243,7251,7252,7255,7913,7914,7915,7911,7897,7907,7254,8024,7910,7932,7933,7288,8027,8531,9772,9775,7284,7285,7867,7866,7868] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [8661,8712,8663,8819,8700,8579,8580,8581,8582,8584,8609,8610,8611,8612,8586,8402,8404,8841,8842,8719,8616,8615] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [8689,8690,8688,9074,8696,8728,8749,8733,8734,8714,8720,8709,8439,8440,8441,9030,8088,9020,8748,9019,9022,9023] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [9799,7882,7891,7893,9800,7876,7883,8316,8287,8288,8289,8286,8312,8313,134,135,136,137,141,148,8310,8348,9798,9793] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [5501,5906,5908,5909,7321,5907,6963,6962,2666,2667,6936,5495,5905,5935,5937,5931,5932,5502,5930,2672,2673,5967,2664,2671,2668] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [1506,1507,1090,1527,1443,1085,1088,1528,1386,1397,1405,1298,1302,1337,1404,1265,1268,1266,1267,1295,1270,1297] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [734,741,750,753,820,779,780,9448,782,9414,9415,777,783,8290,9441,821,2819,2821,2823,819,9444] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [695,696,697,1231,1249,351,353,1233,1234,1239,1241,602,517,518,678,680,519,1251,349,1244,1262,1261] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [2364,2365,2569,2367,2621,2797,2798,2790,2775,2402,2814,2337,2400,1191,2793,2796] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [4877,705,702,727,584,1217,585,575,589,588,583,611] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [1252,1253,1255,1248,1068,487,1276,1277,1061,1064,511] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [7911,7907,8024,7910,7933,7906,7288,8027,8531,8043] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [9393,9394,9395,1369,1376,1377,1378,8340,160,162,164,165,166,167,168,8337,8338,8855,8857,8859,8866] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [2697,3658,3762,3622,3648,2690,2694,2883,3647,3646,2709,2711] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        

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
        
        load "data/5FLF.pdb", protein
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
 
        load "data/5FLF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1368,1361,430,1269,1369,2592,234,241,242,243,244,245,2600,2602,2603,2604,2865,1233,1553,1554,1532,2824,2839,2840,2866,247,248,229,235,239,238,246,249,250,455,2593,233,452,453,454,465,414,264,265,426,427,428,429,673,790,559,525,531,503,524,526,530,534,536,506,507,494,495,496,480,481,3866,3868,1391,1381,1382,1383,1385,1390,529,1530,1533,1534,1535,3871,2854,3870,833,834,870,1285,220,1284,832,812,815,215,217,207,209,212,213,214,806,808,211,840,843,1255,1258,2825,2812,836] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [2607,2608,2610,2611,2573,2574,2575,2624,2623,2568,2570,3154,2773,2586,2585,2567,3608,3609,3179,3172,3207,3234,3198,3200,3184,3196,3197,3033,3176,2606,2793,2609,2612,2785,2571,3579,3685,3692,3688,3689,3557,3593,3693,3690,3691,455,2589,2593,233,453,454,465,3582,3584,466,469,3583,2594,2596,2597,2605,2603,2604,2598,2601,2885,2787,2788,2789,2918,3705,3706,2895,2862,2889,2890,2893,3709,3714,3715,3713,481,3887,3888,3866,2888,3707,2886] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [8168,7774,7802,8177,8182,7139,8146,8173,8466,8467,8304,8445,8282,8280,8281,7357,7359,7360,7491,7358,8197,7490,7194,7195,7196,7345,7140,7142,7739,8295,8298,8303,7771,7801,7764,7767,8198,7746,7743,7158,7161,7166,7168,7169,7177,7178,7179,7180,7165,7170,7173,7175,7157,7182,7467,7181,7362,7365,7434,7457,7461,7462,7460,7377] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7411,7412,7437,7438,6140,6142,6137,6141,5139,7426,7165,7172,7174,7176,8450,8443,8446,8448,7164,4907,4910,4917,4919,4921,4909,5171,5137,5096,5097,5122,5123,5148,5876,5974,5976,5972,5973,5832,5998,5999,5857,5858,7400,6161,6139,6160,7397] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2290,2289,6911,6912,6913,6944,2140,2137,2138,2139,2199,6884,6914,6915,6918,2072,2100,2102,2106,6879,2315,2073,2075,2077,2074,6882,6886,6885,2110,2111,2113,2288,2266,2325,2107,2216,2220,2221,2222,2254,2257] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [4892,4903,4904,4906,4910,4920,5056,4939,4940,4885,4887,4941,4884,5070,5071,5315,5432,5891,5454,5892,5457,5478,5474,5475,5072,5448,5450,5485,5853,5512,5974,5975,5976] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [7430,8318,8319,8394,8396,8401,8410,8411,8412,8413,8414,5141,8439,8442,8305,8447,8448,8449,7429,6121,6122,6123,5140,8415,8136,8579,8581,8458,8459] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [2887,3729,3730,3871,2857,3869,1520,2858,499,1514,3833,3834,3835,3849,1508,3836,3817,3863,3547,3832,4001,4002,3860,3716,3867,3868] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [9617,9468,9633,9447,9466,9467,9443,9979,10407,10484,10485,10491,10492,10021,10378,10408,9991,10000,10018,9858,9975,9632] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [5192,5193,5822,6012,6013,6089,6090,5999,6105,6113,6102,6110,6115,6116,6136,6127,6152,6153,6143,6144,5140,5163,5170,5138,8437] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [4558,4561,4563,4564,4562,4579,3482,3480,3481,3483,3484,4015,4016,4018,4014,4050,4571,4553,4026,4029,3790,3452,3454] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [497,1536,1537,1507,1509,1223,1392,1405,1406,1482,1483,1503,528,1495,1498] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2278,2279,2280,2281,2282,2244,2246,2247,2248,2249,2251,2255,5290,5694,5657,5661,5683,5685,5299,5300,5695,5693,6912,2258,6938] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [9147,9150,8047,8629,9132,8594,8595,8597,9137,9143,8606,8607,9142,9140,9154,8080,8049,8079,8078,8051,8599] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [2219,2229,2230,1692,2241,2227,2245,1167,1164,1682,1165,1684,1681,2234,1136,1138,1166] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5763,5765,6288,6289,6836,5764,6291,6848,6831,6837,6844,6852,6834,6835,6323,6299] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1322,1097,1320,1321,1324,1339,881,882,1015,1071,1040,1042,1043,1041] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [6762,6763,6604,6335,6470] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [10859,10989,11134,11136,10977] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [3998,4000,4035,4034,4070,3542] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [4195,4197,4488,4490,4491,4318,4062,4331,4343] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
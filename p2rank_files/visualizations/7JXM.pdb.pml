
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
        
        load "data/7JXM.pdb", protein
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
 
        load "data/7JXM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3077,3081,3082,3446,3476,2559,3460,3556,3461,3106,3075,2507,2518,2519,2506,2512,2513,2514,2515,3449,3450,2711,2712,3561,3562,3563,3564,2522,2530,2538,2540,3424,2523,2524,2526,2531,2511,2508,2510,2557,2558,2695,3074,3047,3050,3051,3052,3475,2708,3555,3027,3028,3045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [5860,4821,4825,4862,5014,5015,4817,4819,5756,5851,5852,5859,5757,5720,5745,4822,4826,4827,4829,5746,4840,4834,5742,5772,5378,5402,5370,5373,5377,4810,5743,4860,4813,4861,4998,5341,4811,5771,5324,5011,5347,5343,5346,5348] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [7124,7125,7126,7128,7129,7137,7175,7176,7131,7132,8091,8120,8201,8105,8209,7673,8200,7690,7678,7672,7313,7136,7140,7141,7177,8208,7326,7726,7719,7722,7727,7751,8121,7695,7718,7692,7697] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [758,1122,753,757,782,156,1152,750,723,726,721,1151,727,728,159,160,157,206,207,208,162,163,361,1136,1231,1232,1239,1240,344,353,703,704,357,359,685,741,732,734] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [8229,8231,8232,7330,8208,7153,7346,7347,7379,7438,7440,7152,7344,7362,7328,8213,7496,7465,7461,7436,7439,7466,7467,7494,7495,7577,7580,7573,7574,7579,7326,7655,7657,7658,8203,7673,8200,8202,7559,8219,8220,7564,7565,7156,7154,7155] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [6352,6229,6231,6361,6373,6374,6235,6224,6225,6252,6223,6367,6238,8826,6254,8872,6372,6309,6151,6205,6397,6210,6239,8696,8825,8864,8862,8863,8865,8820,8821,8859,8697,8847,8694,8899,8900,6344,6345,6346,6347,8801,8822,8834,8797,8835] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [688,525,526,498,501,608,610,611,689,470,492,467,465,357,359,378,377,1244,1263,496,361,1231,1233,1234,1239,1241,1250,1251,1249,704,705,590,595,596,604,605] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [7307,7293,7221,7223,7587,7033,7034,7215,7216,7218,7220,7222,7219,7217,7665,7664,7012,7583,7584,7585,7590,7013,7014] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [2675,2597,2598,2600,2603,2605,2680,2689,2942,2394,2395,2396,2602,2416,2604,2939,2940,3020,2415] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [616,618,707,254,619,247,249,251,252,253,338,696,43,44,45,46,615,64,65,711,324] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [4697,4698,4699,4700,4907,4908,4719,4903,4905,4906,5235,5236,5238,5316,4992,4718,4978] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [5188,5187,5198,5199,5818,5820,5806,5816,5817,6950,5805,5807,6972,6917,6918,6919,6971,5565,5572,5597,5539,5575] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [1848,4059,4060,1890,1891,4020,1824,1827,3992,1856,1859,1860,1861,1862,1924,1823,1855,3941,4021,3936,3964,3966,3965] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [6485,6486,6461,6480,6481,6482,6354,1713,6525,6460,1710,6523,6524,6356,6489,6490,6494,1590,1618,1595,1597,1718,1717,1675,1604,1740,6339] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [7861,7863,8160,9248,9249,7832,7858,7860,7862,7831,7798,7822,7821,9164,7760,7762,8149,8150] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [360,361,1135,1136,1137,1240,167,168,171,172,206,208,162,163,165,180,187,175,179,1100,1125,1126] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [5513,6814,6815,6816,6817,6824,5472,5474,5475,5476,5483,5412,5482,5413,5446,5447,5451,5449,5510,5512,5509,5511,5514,6840,6843,5800,5811,5801,6908] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [184,185,186,187,183,393,410,1260,1262,1263,496,688,689,470,467,465,469,471,377,375,378] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [1738,1739,1740,1590,1601,1718,1517,1589,6480,6481,6482,6525,6522,6523,6524,6519,6526,6532,6489,6490,6494] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [8011,8012,7489,7508,7507,369,127,200,8007,8023,219,199] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [7966,8974,7939,7941,7942,8003,7967,156,142,144,149,7531,7538,7968,7971,7973,146,8944,8945,9330,9332,7943,7944,7945] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [853,852,891,893,894,831,793,1180,1181,1191,2274,2275,862,889,826,827,829] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [3515,3218,4525,4531,3505,3504,3187,3213,3214,3176,3186,3215,3217,3155,3150,3151,3153,3177,3116,3255,3117] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [945,579,952,977,2350,955,2346,919,578] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [5681,5867,5869,5684,5873,5114,5115,5148,5688,5139,5146] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [5188,5189,2493,2497,2501,2503,2500,5198,5182,6971,5595,5596,5597] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [8572,8573,8657,8434,8656,8465,8849,8850,8851,8852,8853,8431] 
set surface_color,  pcol27, surf_pocket27 
   
        
        deselect
        
        orient
        
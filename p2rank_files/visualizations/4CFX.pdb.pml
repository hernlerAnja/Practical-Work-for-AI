
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
        
        load "data/4CFX.pdb", protein
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
 
        load "data/4CFX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4751,4695,4698,4700,4701,4703,4705,4712,4713,5281,5283,5285,5288,4697,5296,4869,5263,5264,4870,5262,4752,4868,5261,4731,4706,5127,5258,5268,5260,5259,4853,5304,5305,5312,5316,5317,5319,5682,5711,5710,5689,5694,5782,5783,5784,5787,5788,5790] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [147,99,100,90,93,146,89,95,96,98,101,705,713,720,107,528,669,1111,686,689,1112,662,659,660,661,248,527,664,264,265,665,1183,1184,1188,1095,1083,1191] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [4609,4636,4646,4647,4797,5175,3516,3517,3518,3084,3493,5149,5152,5252,3074,3083,4833,4834,5148,5160,5157,5173] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [1250,1265,1270,1259,1271,1496,1503,2500,1497,1243,1245,1504,1482,1470,1472,1262,2472,2473,2477,2474,2482,2501,2519,2521,2522,2493,2497,1256,2547,2481] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [40,42,192,7683,189,228,242,574,8121,8122,8123,4,576,8098,41,28,31,549,558,561,550,552,7682,7673] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [8403,5862,8243,8244,8245,8272,8275,8277,8367,8370,8371,8369,8211,7534,7543,8402,8404,9107,8210,8246,8208,5875,5876,5879,7536,7548] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [534,535,670,673,1170,553,2402,1143,1125,1128,1153,1140,7336,7337,229,7689,500,502,503,691,678,702,7321,7322,7317] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [6485,6470,6471,6473,6834,6835,6519,6479,6484,6486,6518,6842,6843,6827,6833,6050,6051,6526,6527,6013,6080,6091,6070,6014,6017,6067,6071,6074,6062,6058,6504,7063,7061,7062,7064] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [1459,1463,1452,1919,1920,1869,1871,2236,1475,2476,2477,2478,2475,2228,2242,2243,2244,1880,1885,1886,1887,1492,1471,1481,1468,1472,2234,2235] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2944,3799,4494,4496,4498,4487,3772,4482,1278,2935,2949,1277,2937,2941,2942,2943,3631,3762,3797,3798,3672,3765,3602,3605,3606,3635,3639,3640] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [3581,3960,3592,3961,3598,3982,3853,3879,2793,3855,3851,3938,3901,3902,3910,2664,3034,2641,2665,3006,3916,2616,2651,2655,2657,3586,2972,2999,2997,2976,3861,3003,3000] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [1278,1280,1277,1247,1248,1261,2985,3245,2950,3246,1233,1234,1238,2951,3606,3639,3640,3641,3576,3614,2953,1008,3613,3615,1239,1235,3569,3236] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [28,31,8058,8060,19,22,29,30,8059,5183,8121,8122,1,2,3,4,5179,5188,5193,5194,5197,5198,5185,8086,8089,8093,8092,8057] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [8518,7263,8543,8587,8516,8520,8521,8505,8506,8507,8186,7250,7264,7605,8565,8566,7596,7599,7602,7633,7571,8203,8466,7392,8462,8456,8460,8455,8458,7255] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [5091,5099,5101,5768,5769,5741,5724,5727,5752,5292,2723,5133,5272,5290,2716,2718,5743,2721] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [3482,3485,3454,3484,3486,3457,4626,4627,3424,331,308,597,300,596,298,297,344,3444,3445,3481,3450,343,3447,327,332,4635] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [5424,5426,5462,5427,5430,6705,6695,6217,6212,6214,6216,6948,6950,6699,6706,6693,6694,5450,5452,5453] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [6412,6654,6797,6767,6675,6259] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [3514,3515,3516,3517,581,583,4609,4636,4607,3493,3485,3486] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [4176,3691,4173,4174,2530,2527,4172,3688,3690,4138,3677,3678,3680,2490,3645,2517,2518,2520,2489,3647] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [488,7273,7321,7322,7667,7318,7271,7272,534,535,536,537,7689,487] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [5875,5876,5879,5897,5899,5837,5838,5846,5847,8210,8246,7550,7552,8220,7548,7549,7851] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [1859,1860,1861,2217,2209,2206,2208,1809,2023,2024,2025,2195,2219,2207,2201,2210,2172,2173] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [4735,4724,4727,4869,4870,4885,4887,4962,4963,4982,4886,4891] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [7777,7792,7772,7793] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [7119,8250,8293,8294,8295,8296,8781,7116,8283,8285] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [8815,8816,8819,8848,8818,9196,9198,9199,9195,8656,8658,8627,8872,8626] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [7474,7503,7504,7506,7507,7508,7892,7893,7932,7930,7931,7933,7920,7925] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [5856,7077,7075,7076,7081,7118,7100,7120,6102,6103,7107,7146,5843,5845] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
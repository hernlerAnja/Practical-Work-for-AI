
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
        
        load "data/5TQY.pdb", protein
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
 
        load "data/5TQY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6372,6375,5872,5873,5877,5878,5883,5909,6413,5875,6344,6373,6667,5331,6346,6271,6351,6350,6270,5301,6315,6316,5310] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [1647,1652,1673,1674,1676,1651,611,1617,1645,602,632,1616,1572,1714,1174,1210,1571,1179,1184,1176,1173,1178,1968] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [5919,5987,5988,5926,5928,5976,5978,5986,5896,5977,5241,5914,5196,5891,5893,7481,7476,7477,7480,5243,8688,5192,5242,8685,8687,7471,7473,5193,5203,8652,7510,7467,7468,5245,7469] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [546,543,544,542,2772,3953,3986,3988,3989,497,493,494,504,1220,1227,1197,1278,1277,1279,1287,1288,1289,1192,1215,1218,1229,1194,2782,2777,2778,2781,2811,2768,2769,2770] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [7535,7566,7539,7540,5248,7538,5249,5270,7595,7596,7568,7287,7543,7545,7546,7548,5224,5236,5253,5226,5229,5269,5268,6298,6304,6307,7541,6308,5256,5257,7295] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [6167,6171,6155,5930,6156,6160,6163,6168,6172,6175,6276,5929,5973,5969,5972,7483,7481,7482,7443,7480,7446,5926,5928,5976,7484,6294] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [1577,2782,2784,1457,1456,2781,2783,1468,2744,2747,1472,1464,1469,1473,1476,1227,1230,1274,1277,1270,1273,1229,1231,1461,1595,2785] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [2836,2844,2847,2840,2842,2849,2839,2841,2867,2869,2846,1599,557,558,554,525,527,530,537,549,550,2896,2897,570,571,1608,1609,569,1605,2588,2596] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [7488,7524,7490,7498,8777,8778,8809,8834,7331,7329,7359] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [2630,2632,4135,4110,2660,4079,2789,2825,2791,2799,4078] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [1919,1892,1835,1836,1119,713,714,715,1871,712,1093,1080,1082,1086,760,1118,716] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [6534,6535,5779,5792,5410,5411,5412,5413,5415,5459,6591,5817,6618,5414,5818,5781,5785,6570,5426] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [595,593,588,591,592,617,590,622,899,900,901,902,920,488,489,561,624,460] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [6107,6105,6443,5954,6080,6079,5828,5831,5947,5948,5861,5663,6042] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [2622,2624,2649,2724,2661,2625,2755,2765,2790,2791,2792,2756,2757,2626] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [7489,7491,7324,7325,7455,7454,7456,7464,7490,7323,7360,7348,7423,7321] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [1248,1408,1162,1249,1255,1343,1381,1744,1406,1380,964,1132,1129] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [9301,8047,8049,8051,8187,8151,8152,9344,9343,8122,8126,8150,9299,9300,9341] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [3488,3451,3452,3453,4600,4601,4602,3423,3427,4642,4644,3348,3350,3352,4645] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [3232,3274,7915,9193,9194,7859,7880,7885,9163,7883,9192,9195,9170,9172] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [5159,5188,5598,5599,5600,5619,5601,5290,5291,5292,5294,5289,5321,5323,5260] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [5450,5122,5125,5449,5451,5406,5407,5464,5461,5465,5467,5469,5455,5632,5635,5640,5133,5098,5099,5101] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [936,707,765,751,750,752,423,426,933,434,766,768,770,941,402,762,756,400,399,708] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [654,676,795,796,718,1108,936,707,765,838,937,767,769,791,705] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [3242,9221,9222,9255,3280,9225,3275,3276,3270,3272,3269,9256,9258,3304,9224,9226,9227,9229,9232,9295] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [5353,5375,5404,5406,5464,5466,5468,5494,5495,5490,5417,5807,5447,5537,5636,5635] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [6730,6731,6817,6801,6936,6780,6733,7169,6973,6747] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [2118,2100,2031,2032,2034,2081,2237,2102,2274,2048,2470] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [3799,4243,4244,4247,4249,4213,4273,2974,2914] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [7673,7613,8498,8948,8972,8912,8942,8943,8946] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [3216,7931,7932,4496,4503,4495,4494,4493,4471,7973,3183,3184,4473,4464,7906] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [9395,8111,8114,9371,9374,9373,9392,4674,9368,9370,4677,4679,4680,4681,8115] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
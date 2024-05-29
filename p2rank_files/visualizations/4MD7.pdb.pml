
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
        
        load "data/4MD7.pdb", protein
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
 
        load "data/4MD7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6852,6854,6787,6788,6793,6794,6799,6800,6808,6809,6812,7718,7719,7866,7867,7703,7731,7892,8018,8025,7732,7733,7734,6825,6838,6826,6816,7048,7884,7891,6827,6829,6958,6853,6957,7192,7193,7194,7860,7856,7865,7356,7758,7858,7859,7730,7743,6789,6791,7353,7759,7387,7372,6972,7329,7330,6974,7883,7327,6973] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [626,627,630,632,666,664,633,674,628,1226,601,634,957,1200,307,605,240,246,254,249,251,635,636,637,282,308,197,199,201,252,255,227,673,672,3052,3058,3060,3062,6846,3053,961,958,959,960,7291,7272,7273,7274,6992,6995,7005,7006,6996,6997,6999,6813,6815,1236,1234,1237,6805,6811] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [3800,3829,3831,3417,3832,3833,3834,3835,3836,3873,3871,3415,15410,3467,3456,3465,3468,3462,3470,3498,3524,4425,3825,3826,3827,3828,3865,4159,4399,3863,4156,4157,3804,6257,6259,6261,15401,15402,15210,15251,15404,15397,15400,15411,15216,15218,15220,15677,15678,15679,15696,4436,6249,4435,6251,6252,3866,4158,4160] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [10161,10663,10661,10662,10664,10564,10563,10535,10548,10130,10132,10134,9997,9999,10665,10666,10669,10673,10135,10679,9596,9658,9762,9594,10177,9593,9659,9643,9777,10671,10536,9605,10538,9891,9657,9599,9602] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [6009,6018,5419,5425,5426,5458,5420,5992,5752,5750,5751,5753,12883,12882,5124,5749,5459,5424,5456,5427,5428,5429,12616,12615,5397,4658,4659,4664,4666,12884,4656,4668,6026,6028,6029,12591,12606,12456,12607,12902,12901] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [6895,6918,6935,7211,7214,7336,7339,6909,15563,15564,6728,16026,7213,15575,15537,16058,16059,14959,15565,15566,16024,16028,16051,6933,6934,6939,7332,7337,6931,6739,6950,7219,7220,7222,6696] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [15258,15259,15243,15198,15199,16135,16137,16138,15375,15376,15377,16270,16271,16136,16148,15204,15205,15202,15597,15599,16261,16263,16163,16164,16264,16265,15732,15734,15363,15362,15758,15196,15761,15777] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [12405,12462,12463,12464,12397,12398,12403,12404,12409,12407,12410,12580,12582,13340,13353,13341,13342,13343,13471,13474,13476,12937,12939,12940,12802,12804,13470,13368,13466,13468,13469,13369,12994,12966,12567,12981,12982] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [2552,2793,2194,2195,2198,2221,2227,1900,2228,2229,2230,2258,2259,2220,2226,2550,2551,1926,1925,1459,1460,1465,2554,1467,10096,1457,2260,10075,10078,10079,10077,2553,2810,2819,2827,2829,2833,9809,9810,9811,9801,9802] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [9617,9643,9779,10671,9630,9614,9605,9794,9795,9792,9621,9818,10670,10672,10688,10696,10697,9632,9634,10523,10508,10524,10823,9890,9852,9853,10664,10548] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [12659,12422,12426,12431,12435,12437,12439,12657,12658,12623,12600,12695,13493,13495,12584,13475,13476,13477,13494,13313,13328,13329,13353,13341,13342,13344,13501,13502,13628,12448,12597,12419,12410] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [16108,16270,16271,16272,16123,16124,16136,16139,16148,16288,16289,16296,16297,16135,16137,15379,15214,15217,15226,15205,15230,15231,15232,15234,15453,16423] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [1438,1439,1501,1541,1543,2857,2859,2852,2855,1570,2949,2854,1569,2884,2847,2663,2664,2665,2666,2628,2630,1542,1498] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [5427,12616,12615,5068,5014,5016,5018,5066,5071,5424,5464,5465,5466,5425,12606,12456,12607,12609,12415,12423,12425] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [9801,9802,9618,9620,1864,9610,1815,1867,1872,1869,9616,2257,2225,2226,2267,1817,1819,2265,2268,2266,2228,9651,9803,9804] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [4886,4888,4905,4927,4928,4929,5357,5351,5352,5353,5358,4910,5964,5971,5975,6001,5977,5963,6003,6004,5962] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [1687,1689,2802,2804,2158,1729,1728,1730,1706,2765,1711,2763,2764,2772,2776,2778,2154,2805,2153,2152,2159,2156] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [807,808,130,791,1121,1156,1120,1116,1125,1129,799,811,814,912,1025,798,1122,1124] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [3327,3328,3285,3287,3764,3304,3762,3740,3760,4370,4378,4382,4371,4384,4388,4408,4411,4410,3766,3759,3765] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [3346,3348,4224,4312,4353,4355,4309,4315,4324,4328,3998,3990,3997,4006,4007,4320,4321,4323] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [6056,4740,5829,6083,6148,4768,6080,6046,6051,6053,6054,4769,4700,5864,5863] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [1170,1171,1172,1179,1183,93,102,103,111,1209,1211,69,71,112,561,565,88,1185] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [10522,10211,10863,10829,10849,10212,10851,10524,10830,10539,10541] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [4234,4269,6230,4270,4555,6334,6335,6333,4461,4458,4487,4463,4465] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [6933,6934,15540,14995,7337,7338,15537,15528,15535,16059,14959,14997,6935,7336,7339,15508] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [1071,3031,3134,1264,1266,1259,1262] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [9494,9833,9471,9473,9835,10104,10102,10103,9861,9862,9868,9870,10050,10083] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [12667,12638,12640,12276,12278,12675,12666,12888,12908,12299,12907,12855] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [2009,2130,1677,1638,1643,1669,1670,1672,1675,1641,2034,1637,1627,1676,1674,1671,1673] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [12083,12096,14667,12079,13778,13795,14620,14645,14665,13247,14656,14662,14668,13791,13792,13818] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [7905,7937,7939,7959,7960,6608,6599,6626,6628,7907,6616,6638,7906,6637,7039,7040] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [4842,4874,4876,5329,4871,4840,4829,4837,4868,4869,5233,4873,4875,4870,4872] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
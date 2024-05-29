
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
        
        load "data/3DOG.pdb", protein
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
 
        load "data/3DOG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4785,5163,5164,5166,5681,5682,5685,4668,4669,4770,5608,5609,5680,5580,4786,4787,4630,5688,4623,4618,4620,4622,5172,5031,5162,4614,4615,5200,5208,5209,5211,5216,5223,5248,4611,5249,5192,5167,5168,5587,5592,5581] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [1062,1050,1051,693,686,107,108,147,264,1158,100,96,98,101,145,89,91,92,93,94,95,146,670,678,397,633,634,637,638,632,500,501,642,1151,265,263,659,1078,1150,1079,248,656,662,1155] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [3473,4528,4524,4526,5078,5079,5061,5062,5064,5077,3029,3038,3480,3039,3448,3469,3470,3471,3472,4553,4750,5156,4562,4564,4714,4764,4563,4543,4544,4523,4541,4545,3405,3407,4552,3409,553,562,561,567,556,3436,3437,3438,3439,3440,3441,550,554,5052,5053,5056] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [7714,7295,523,531,7304,7305,7746,42,192,28,228,7733,7734,7740,7735,7737,7738,7739,532,534,1,22,31,522,526,533,626,40,41,2,4,547] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [1244,1245,2890,3713,3741,1243,1228,1230,1235,4405,4412,4414,2896,2899,2892,2897,3556,3557,3624,3560,3740,3592,3621,3635,3595,3689,3710,4427,3714,3675,3720,4426,4400,4425,1247,3200,3201,1202,1205,1214,1201,2904,2905,2900,3567,3568,3566,2908,1206,1215,2906,2907] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [6939,6960,6958,6959,7326,1107,1108,226,229,230,7310,7311,465,473,476,6942,475,647,1136,1137,6940,6941,645,646,1095,461,506,508,510,526,643,2349,1120,486,1092,1093,1101,676,675,233,648,651,655,236,234] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [7467,5775,5777,7156,7170,7171,7826,7158,8671,7832,7833,7834,7861,7822,7173,7163,7165,8005,8006,8007,8680,8678,8670,5773,5774,5795,5769,5745,5731,5735,5736,5744,5797,7981,7986,7982,8666,7859,7860,7890,7892,7979,7980,7974,7976,5758,5760,5765,7466,5732] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [1382,1419,1432,1442,1840,1866,1867,1868,1862,2414,2421,2429,2430,1824,1827,2175,2182,2183,1833,2189,2190,2191,2181,1839,1436,1425,1859,1838] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [2692,2693,5170,5173,5178,5181,5176,5667,5637,5638,5625,5205,5206,5040,5038,2673,2671,2674,5640,2675,5003,5006,5005,5650,6624,4744,4748,4751,4755,4752,4756,3044,3045,3060] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [6746,6748,7910,7911,8354,8356,7909,8322,7907,7908,8323,7898,7900,7897,6749,6755,6758,6745,6747,6700,6704] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [8153,8111,8113,8101,8130,7218,8050,8055,8057,8061,8100,8102,8051,8152,7224,7800,7810,7808,7193,6841,6843,6844,6876,7196,7811,7816,8174,7818,8053,7805,6885,8116,7014,7255,6872,6886,7227,7221,7220] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [4882,4887,4893,4894,5703,4644,4876,4879,7444,7442,7502,7500,7507,7512,4858,7446,4862,4859,4914,4916,5805,7503,7471,7480,5706,5707,5807,5802,5705,5710,5823] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [3534,3539,2602,2961,3886,3545,2619,3795,2989,2955,2958,2927,2928,2930,2954,3552,3785,3550,3881,3887,3864,3908,3845,3847,3834,3835,3836,3844,2620,2613,3850,2577] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [346,349,363,352,356,357,364,1173,1175,1176,1177,1181,1297,3178,3180,329,332,3176,384,350,3214,3236,3237,1272,3234,386,1275,3205,1277] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [3599,3643,3644,3645,3630,3631,3634,3632,2438,4090,2480,2482,2483,2479,2481,2434,3604,2485,2488,4056,4084,2489,4088,4087] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [459,460,461,508,509,510,526,465,6942,6943,6944,6940,6941,7298,6951,6953,7300,7301,7306,7311,229,7293,7294,7295,7296,523,6939,6894,6895,6910,7281,7289] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [1815,2148,2152,2156,1972,1971,1970,2164,2166,1814,1762,2153,2155,2142,2118,2121,2119] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [3820,4232,3831,4227,4228,4258,4259,4262,4293,4295,4294,3809,3810,3811,4287] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [6308,6395,6396,6403,6296,6288,6285,6369,6428,6312,6398,6150,6151] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [344,300,559,3436,3438,570,3399,336,308,3430,338,335] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [457,933,935,931,440,966,2534,2527,2530,2532,2526,965,967,2496,955,956,957,2564,2565,2525] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [6473,6474,6457,6458,6466,5962,5972,5949,5911,6465,6687,6695,5983,6464,5938,6696] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [8071,8075,8077,8078,8076,8561,8559,8560,8083,8086,8526,8524,8498,6986,6987,6992,6993,7021,8087,6988] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [5485,6762,6763,6764,6765,5497,5461,5486,5487,5496,6766,6830,6831,6798,6800,4970,5463,5465] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [2422,2420,2180,2187,2204,2453,2460,2452,2221,1464,1467,2215,1470,2459,2224,2445,2469] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [6683,5994,6686,6688,6503,6504,6470,6487,6720,6724,6726,6507,6021,6498,6718] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [7953,7986,8692,8693,8666,7979,7955] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [3027,5040,5038,3023,2673,2674,3040,3044,3045,2687,3028,3015,4751,3029] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [8067,8068,8560,8570,8557,8559,8558,8556,8077,8043,8047,8604,8499,8605,8534] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [3510,3511,3512,2604,3509,2573,442,445,2593,2594] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [8392,8393,8449,8214,8215,8447,8785,8786,8771,8768,8769,8776,8425,8787,8421,8457] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [6860,7264,7773,7774,7775,7776,7777,6859,6866,7263,7778,6862,6838,6839,6870,4975] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
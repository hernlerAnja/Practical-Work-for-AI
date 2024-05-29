
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
        
        load "data/4BGG.pdb", protein
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
 
        load "data/4BGG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5110,5111,7205,7206,7209,7202,4991,7220,7020,7210,7216,7244,5096,4921,5098,5099,5100,5103,5104,5107,5155,5156,4955,7032,7033,4922,4929,4930,4931,4932,4933,4934,7029,7031,7021,7060,7094,7095,7096,7097,4898,5173,4990,4992,7242,4989,7102] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [3358,3370,2452,3331,3347,3348,2922,2551,2553,2665,3459,3460,3463,2555,3466,3612,2425,2426,2427,2428,2429,2430,2431,3609,3611,2786,2937,3386,3387,3458,2991,2995,2996,3024,3359,3361,3618,3631,2396,2397,2398,2400,2395,2954,2956,2960,2963,2987,2988,2958,2537,2538,2547,2918,2450,2451,2539,2936] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [6946,6944,7266,7787,7788,7173,7714,7715,7364,7689,7687,7331,7335,7716,6942,6841,6843,6842,6790,6791,6793,6930,7285,7298,7300,7302,7304,7328,7307,7308,7280,7311,6816,6817,6818,6819,6820,6821,6822,7690,6795,7699,7795,7688,7789,7792] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [469,222,619,1083,221,620,601,236,230,234,133,134,135,605,82,83,85,87,1084,643,646,671,84,637,639,707,109,111,1056,1045,110,112,113,114,1155,1055,1067,678,679,238,1160,1163,1156,348] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [4723,4745,4746,4747,4697,4725,4726,5696,5067,5624,5233,4838,5227,5229,5261,5264,5625,4694,5269,5297,5596,4693,4698,4699,4695,4696,5231,5236,5295,5608,5701,5704,5585,5586,5597,4948,5698,4854,4850,4852,5195,4846,5697,5209,4837,4836] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [1485,1511,1486,1514,1515,1487,1488,1477,6625,6626,5953,1213,5950,1211,5933,1224,1523,1547,2206,2217,2223,2226,2227,2228,1513,908,909,916,917,986,924,928,932,2229,912,2233,2234,910,6628,6631,6627,6612,6613,1228,6620,1226,1227,1225,920,921,2238,2241,1484,1521,6623,6624,6618,6619,5894,6024,6026,5996,5938,5945,5942] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [7814,7794,7660,7955,7699,7795,7676,7677,7938,7007,7008,7813,6813,6816,6817,6819,6821,6988,6946,7942] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [5785,5786,5794,5783,5790,5791,7901,7911,7912,7913,7910,7902,7914,7918,4902,4903,4935,4939,7068,7069,7038,7042,7034,7035,5743,4961,4962,4964,5744,4963,6997,4936,4938,5728,4930,7025,4926] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [2758,2759,2752,2769,3431,3432,3433,3161,3183,3184,2753,839,840,842,867,1130,1127,1128,1129,442,816,3127,3130,3131,3133,3129,3160,3164,817,3156,3157,3159,785,809,810,813,814,787,788,4597,4566,4567,443,445,2294,2296] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [7945,7937,7946,7947,7990,7994,7649,7650,7907,7908,7909,7646,7906,8157,7645,8063,8024,8023,8126,8064,8078,8079,8128,8130] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [3740,3756,3804,3806,3578,3739,3321,3320,3607,3621,3697,3699,3670,3622,3700,3833,3316,3666,3656] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [5555,5558,5559,5817,5825,5789,5826,5827,5874,5876,6034,5870,5554,5943,5944,6005,5959,6007,5903,5904,5901] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [5569,5608,5609,5704,4716,4717,4720,5585,5586,4721,4723,4725,5822,5703,5714,5722,4908,4909,5818,4893,4854,5723] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [1448,1524,5990,5986,1445,1428,5763,5754,2183,2184,2189,2190,2191,2196,2197,6655,6657,5491,5495,5499,5527,5752,5764,5982,5487,5490,6017,5479,5480] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [1438,1455,1018,1439,1014,1501,1503,1505,1017,1277,1013,1320,1321,1322,1369,1398,1399,1532,1533] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [7673,7675,7677,7956,7691,7351,7353,7683,8254,8375,8376,8443,8445,8446,7355,7690,7692,7689,7966,7957,7970,7985,7972,7973,7974,7987,8459] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [5592,6131,5284,5286,5288,5601,6262,5584,5586,5599,5600,5865,5836,5846,5850,5852,5853,6265,6278,6264,6194,6195] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [3363,3354,3361,3362,3014,3015,4055,4056,4123,3346,3348,3649,3650,3648,4125,4126,4139,3632,4131,3646,3661] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1043,1045,1331,1360,1057,1058,1059,1060,1824,1362,1754,697,698,1822,1755,695,1347,1348,1349,1838] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [5990,6025,5989,2196,2197,6655,6656,6657,6652,6023,6017,5480,5482,6013,6015,6016,6658,6049,6667] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [1448,1524,1468,1469,5990,6026,5996,2189,2190,2191,2196,2197,1494,1485,1486,1488,5953] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [2968,3404,3418,3399,2966,2951,3420,2946,2942,2943,2944,2945,2755,2757,2762,3400,3402,3403,2747,2774,2787,2788] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [109,1028,1044,1045,1330,110,112,1067,1163,108] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [5215,5239,5241,5242,5224,5041,5043,5036,5038,5641,5640,5055,5068,5069,5217,5218,5219,5220,5216,5028] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [470,625,626,651,652,627,629,1100,471,1099,438,440,457] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [3203,3233,3234,3237,3226,3227,3812,3814,3815,3816,3229,3848,4507,4518,3810,3822,3824,4529,4539,4524,4527,4528,4535,3201,3204,4534] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [8838,8840,8841,8846,8850,8146,8835,8172,8113,8139,8140,8136,8138,7564,7562,7560,7561,7568,7569,7538] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [7286,7287,7288,7290,7295,7310,7312,7313,7161,7134,7142,7731,7144,7732,7174,7175,7774] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [4620,5095,5089,4652,5202,4790,4793] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        

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
        
        load "data/6P5P.pdb", protein
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
 
        load "data/6P5P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [767,1583,1560,645,1572,1578,606,607,629,1561,610,614,1039,1184,1191,1599,1186,1187,1679,752,644,1237,1239,1600,2897,586,590,592,2894,2896,1238,593,595,597,598,1209,1212,2882,768,769,1678,1681,1684,1685,1686,1687,1584,622,624,625,785,891,1545,886,887,889,1700,1702,1701,1709,870] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [9920,9915,9918,9908,12013,12014,12016,10815,7763,9926,9923,9927,9928,9929,12012,10394,10395,10398,10417,10400,10415,10416,11995,9921,9922,7139,7795,8819,8820,7324,7745,7753,7754,7751,7752,10816,10817] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [10871,10872,10874,10793,10873,10794,10875,10878,10766,10432,12060,12062,10433,12048,12054,12064,10879,10881,10378,10380,9838,9946,10381,9961,9837,9839,9784,9780,9800,9786,9787,9789,9963,9962,9801,9823,10407,10408,10385,10403,10233] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [3720,4341,4723,3722,5950,3718,5948,4371,4696,4724,4801,4802,4803,4804,4319,3884,3776,4318,4323,4808,4811,3724,3900,3777,3726,3775,3738,3739] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [708,713,726,714,721,724,725,1621,2850,5806,5807,4759,2847,2848,2849,729,733,732,1204,1200,1222,2846,5809,5810,5811,4790,4746,4747,4748,4749,4740,4135,4139,4142,4324,4180,727,4327,4332] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [7367,7368,7701,7316,6772,6773,6774,6895,6896,6719,8958,6717,6715,8956,8961,6898,7806,7807,7810,7809,7813,6897,6721,6726,6727,6735,6758,6724,7816,6736,7320,7343,7332,7338,6881,7342,7341,7728,7729,8960,7808,7168] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [6850,6853,6855,6856,6858,6861,6862,6837,6843,6848,8911,8913,6806,7753,10829,7751,10827,7351,8909,8910,10841,6863,7333,7329,7330,10204,10196,10197,10200,10201,10859,10860,6857,10262,10242,10389,11921,11922,11923,10807,10808,10810,10815,10811,10224,10386,10390,10394,10410] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [3846,3853,3861,3865,5900,2752,5901,5902,5904,1633,1635,3859,3864,4746,4747,4748,4354,3840,3866,4333,4336,4353,4338,4332,1048,1621,1622,1614,1616,1647,2755,2756,2757,3860,1010,1666,1195,1216,1665,1200,1613,1617] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [7816,6914,7019,6736,6758,7690,6898,7814,7815,7712,6897,6895,6896,7829,7832,7828,7831,7830,7837,7838,7674,7015,7016,7017,7018,6751,6753,6754,6999,6739,6744,6743] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [10895,10880,10894,10739,10903,10879,10881,10754,10755,10896,10777,10778,9963,9979,9962,9801,9809,9813,9816,9818,9819,9804,9808,10080,10081,10082,10083,10084,10086,10064] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [9291,10108,10110,10138,10147,10148,9302,9326,9327,9349,12243,12258,9306,9309,386,388,10102,10103,10105,383,385,10120,9284,9296,10179,12268] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [4913,4833,4809,4810,4811,4826,4827,4824,4825,4832,4001,4018,4019,4022,4021,3751,3754,3756,3747,3761,3739,3900,3917,3901,4020,3757,3746,4000,4002] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [709,710,726,1066,1068,9192,3123,3124,3125,688,1078,1079,501,745,746,1064,689,690,1077,728,4181,4198,6132,727,4130,4131] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [3244,3247,3229,4057,4056,3234,4076,4085,4084,4086,3265,3287,6081,6083,6098,3222,6108,4040,4041,4042,6075,6514,6515,6530,6516,4046,4048] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [3841,3842,3857,3858,3819,3821,4211,6129,6131,6130,3876,3878,4196,4198,6132,3633,3818,3820,3822,4210,4209] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [3517,3520,7045,9138,9140,6244,7038,7043,7037,7055,7039,6219,6226,6236,7073,6240,7081,7114,7082,6284,6241] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [914,97,102,952,953,954,133,155,90,108,112,916,3077,9582,115,117,909,9580,908,907,944] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [7193,7177,7178,7195,7197,6855,6856,6873,6875,9922,6857,10258,10260,10262,10242,9920,9940] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [11880,11894,11900,11901,11907,11913,11919,11915,6845,6846,6848,11921,10199,10213,10215,10216,10218,10632,11922,10204,10205,10206] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [728,6134,4181,6132,727,4129,4130,4131,6131,4106,709,710,726,1066,746,1064] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [9913,8777,8791,8797,8815,9908,8814,8812,8798,8804,8828,7148,7150,7151,7153,7566,7567,8810,7141,7139,7140,8818,8819,8816] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [6838,6839,6816,6818,7207,7208,6855,6875,6630,6819,6815,6817] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [5939,4394,4731,4359,4401,4434,4435,4421,4422,4423,5852,5857,5862,5868] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [8947,8948,8949,7432,7356,7431,8861,8871,7390,7418,7419,7420,7391] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [9429,9422,9418,12205,10312,10315,9455,9457,12151,12134,12143,12145,12123,12127,12193,12124,12196,10311] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [1118,1121,2961,2957,2958,3036,3037,3039,235,3027,228,224,3030,263,261] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [1005,1012,1011,1021,1022,1024,1438,2753,2755,1019,3848,3849,3851,2728,2714,2749,2735] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [6390,7250,9020,9021,9024,6353,6391,6392,6364,9090,9093,9030,9031,9099,9102,7247,6357,6354] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [9198,9199,146,147,148,9230,9201,9202,3111,3112,3108,3113,9228,9229,9237,9239,140,138,139,132] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [9695,10271,10272,10273,9880,9940,9903,9904,9883,9884,9881,9882] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [11964,10497,12051,10421,10495,10484,10485,10458,10461,10462,10483,10456,11974] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [2706,2709,2708,2710,2665,2702,2690,2717,2719,2659,2661,2654,2645,2669,2662] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [1291,1301,1262,2884,2885,2798,2808,2886,1267,1264,1227] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        
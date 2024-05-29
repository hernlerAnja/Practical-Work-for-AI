
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
        
        load "data/7S25.pdb", protein
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
 
        load "data/7S25.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4285,4284,4793,4794,4795,4796,4797,4702,4679,4808,4778,4675,3701,3737,3739,3689,3690,3691,3692,3700,3724,3722,3723,3738,3680,3686,5895,5905,4337,5903,5901,3850,4301,3684,4289,4307,4311,4312,4703,5904,4351,3687,3867,4033,4032,4782,4784,4786,4788,4791,4623,4785,3983,3866,3883,3985,3986,3987,3988,4647,4648,4798,4799,4800,4801,4803,4804,4633,4837,4820,4836,3704,3708,3709,3711,3720,3716,3718,3981,3984,3967,3968,4827,4638,4636,4020,4023,4022] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [6907,6908,6909,7075,7110,7833,7834,7836,7838,7839,7820,6767,7326,7327,6779,6780,6781,6892,6726,8905,7717,7349,7352,7353,7354,7744,7745,8907,8908,7372,7835,7837,7718,6734,7377,7378,7379,6728,6729,6731,6722,8893,8899,8909,8914,8916,6743,6765,6733,6742,7331] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [814,815,816,1742,1743,1744,1745,1746,686,688,799,1234,633,687,636,638,640,641,635,629,649,650,1233,1651,1652,1284,1285,1286,1624,2801,2778,2794,1256,1260,1261,1250,2790,2792,2784,2787,1727,1238] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [9073,9085,9091,9122,9090,9092,9074,9075,9076,7218,7219,6636,6824,6825,6826,6848,6822,6823,6847,6841,6885,6886,6867,6868,6278,6279,6300,9077,9078,9079,9080,9149,9108,9110,6613,6629,9111,9112,6667,6196,6264,6270,14,16,18,19,20,9157,9158,9159,21,9156,9123,9124,9125,9115,9116,9119,9118,6204,6206,6195,6202,9180,9189,9182,9153,9148,9152,9254,6197,6198,6199,6271,57,58] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [3095,3098,3099,3100,3047,3048,3097,3058,111,186,3049,3051,3053,184,185,3054,3124,3126,3133,177,178,3157,173,169,170,171,543,1124,729,731,733,1125,1126,792,3052,536,537,540,572,574,3063,3081,3090,3091,3094,3083,3123,520,3085,3086,747,3087,573,3068,3069,3070,3071,732,748,755,730,754,3131,3127,3128,103,109,113,773,775,793] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [9890,9892,10691,10767,9764,10692,10300,9709,9762,9763,11092,11094,10299,10324,10326,10664,10667,10325,9705,9711,11090,10126,10273,9875,10274,10278,10301,10296,10022,10766,10676,10057] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [17,13,4177,4176,3782,3784,12,3,4,3783,3625,4160,4162,4164,4161,4166,6148,6149,6150,3826,3842,3844,3824,3804,3806,3843,6147,47,48,49,36,4175,3594,3587,3588,3591] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [6377,11103,8975,8976,8980,8982,8983,9360,9452,11099,11100,11102,11104,11095,9399,9009,9010,11105,6341,9324,6365,8972,6415,6416,6366,6369] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [3028,990,991,3013,955,956,958,961,963,3006,3011,3475,3477,962,957,959,960,146,172,137,154,157,192,155,3474,3489,3490,1000,1032,130,135,136,999,1001] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [4042,4084,4050,4051,3188,4006,4007,4009,4012,4014,6109,3243,6087,6092,6094,4083,4052,3181,3197,3223,3186,3204,3205,3206,3207,3208,438,426,424,423] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [7084,6285,9039,6230,6243,6247,6248,6250,7125,7093,7092,7094,6265,6239,6223,9032,9037,9515,7054,7049,7048,7051,7053,7055,7056,7050,9500,9502,9054] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [8773,8774,8779,8782,8696,1674,1676,8785,8788,1665,1666,1668,2652,1682,1683,1695,8789,8791,1714,2650,1669,1114,1115,1095,1239,1244,1242,1247,8698,2661,7484,2647,2656,2658,8795] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [3236,3237,106,3228,3229,3258,3154,3160,3162,3163,3221,3223,3164,82,6145,6128,6129,6146,43,44,45,6132,75,83,42] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [1510,1513,1537,1508,8836,7765,1042,1048,8816,1051,1052,1070,1072,1483,1486,1487,1059,1037,8839,8821,8837,8838,8826,8833,8814,2608,2609,2501,8815] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [1187,1209,1210,824,1175,1189,1190,2872,2873,2874,807,696,697,602,556,557,578,2834,2839,1160] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [10040,9995,9996,10041,9231,9233,10072,9222,9226,9230,9206,9212,9213,10031,11170,9998,10000,10001,10003,9268,11185,11168,6519,6532,11163] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [824,1188,1172,1190,2871,678,697,837,838,855,864,867,671,672,669,670,2870,679,681,680,2839] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [10155,10276,10279,10284,10135,10281,10282,10287,5827,10715,10716,10705,10714,10154,9855,10288,5832,10153,5829,5817,9867,9849,9851] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1165,1168,301,303,2976,2895,2898,2900,2967,2905,2923,260,275,1176,1177,2889,2890,2894] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [10618,10759,10760,10022,10763,10765,10766,10617,10673,10020,10055,10014,10015,10018,10019,10009,10012,10007,10049,10604,10048,10561,10610,10614,10615,10616] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [9253,9254,9247,6197,6198,6174,6175,6176,6200,9283,6165,6168,9262,9261,11208,11205,11206,9179] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [3311,6057,3352,3354,6045,3326,3353,5976,5975,5986,5979,6048,6003,5970,4219] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [8819,8822,8823,8824,8895,8896,8897,7367,7409,7752,8807,8809,2625,2626,2627,7404,7402,7432,7441,7443] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [10153,4725,10166,11215,10165,10149,10150,10151,9867,9831,9849,9851,9869,10155,10154] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [4325,5893,4360,5892,4390,4323,5815,5818,5820,4365,4367,4399,4401,5805,5803,4710,4708] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [10314,10995,11083,10348,10376,10379,10387,10389,10356,10699,10351,10355,10312,11008,11010] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [2782,2699,2704,2707,2780,2781,2694,1350,1314,1339,1348,1311,1274,1657,1659,2692,1316,2709,1309] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [1110,1111,1113,3061,8777,791,793,1114,1115,773,775,8750,1109,1125,1126,3060] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [7302,7303,6790,6917,7280,7282,6695,6789,6650,6649,6899,6671] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
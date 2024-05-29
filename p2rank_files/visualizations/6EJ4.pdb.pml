
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
        
        load "data/6EJ4.pdb", protein
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
 
        load "data/6EJ4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6969,6843,6853,6813,6830,6854,7095,7082,7083,7084,7091,7096,6970,5837,5839,5987,5989,5834,6005,5840,5858,5859,5860,5988,6468,6496,6844,6846,5802,5808,5806,5803,5805,6984,6986,6983,6080,6081,6991,8688,6990,6803,7079,7059,7060,7074,7081,6078,6082,6083,6086,5829,8683,5814,8285,8286,8287,8210,7070,7072,7100,7103,7104,5813,5811,8682,8684,8670,7064,7066,8208,8211,6841,6870,6960,6962,6961,5972,6421,6869,6450,6461,6465,6435,6438,6446,6432,6434,6963,6964,6967,6111,6415,6417,6412,6413] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [1459,1460,1462,1466,1467,1446,1289,1565,1564,2824,2827,2828,2829,1597,3303,3302,2900,2905,2907,3289,3301,2874,2871,2878,550,546,547,548,549,3307,1306,1584,1589,1587,1588,1605,1606,1608,302,305,307,308,296,297,289,292,2831,2909,2815,579,457,1445,2886,551,554,1322,1444,1329,1317,1319,2812,2814,1443,1438,1538,1539,1553,1567,1557,1559,1465,1279,1574,1576,1577,1593] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [8476,6029,6030,6031,8481,5631,5633,5635,9484,5556,5558,9726,9732,9757,9733,9761,9765,8489,8491,8478,8482,8483,8486,8473,5600,5553,9627,9628,9629,9634,9635,9613,9735,9742,9745,9610,9507,9508,9614,9464,9465,9466,9467,9482,9483,9755,9756,9752,6036,6041,6045,6032,6018,6021,9721,6022,8704,6038,9740,8730,8733] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [1427,1433,1439,917,1346,1436,1437,1440,1443,1344,1345,1438,1444,1329,944,1317,580,454,455,457,1445,307,308,327,440,269,275,326,328,274,276,282,270,911,914,915,922,937,926,910,614,890,891,892,893,744,897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [8457,8510,8511,9524,9125,9495,9128,8624,8458,9094,9497,9105,9106,9110,9111,9109,9121,8454,8460,8461,9499,8640,8512,8637,9073,9604,9507,9606,9607,9611,9614,8491,8492,8466,9523,9095,9098,9605,9072,9071] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [3110,4238,4145,4229,4230,4231,3111,3130,3131,4144,3079,3080,3072,3073,3074,3075,3077,3078,4232,4236,3720,3721,3725,4128,3082,3085,4116,3743,3688,3687,3243,3686,3696,3710,3709,3691,3692,3545,3689,3714,3715,3713,3690,3256,3259,3260,3257] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [7490,7489,7689,7693,7459,7636,7457,7458,7572,7612,7647,7184,7639,7466,7614,7521,7533,7534,7526,7151,8036,7563] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [4260,4360,4370,4088,4087,4105,4128,3085,500,504,4346,492,496,499,3100,3092,4252,4253,4255,4259,4236,4237,4239,3110,4238,4231,3352,3320,3105,3108,3101,3351,4352,97,99,489,4350,3382,3276] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [7229,7231,6772,6773,6733,6735,6769,7232,4488,4489,4490,4482,4873,4875,7223,5404,5405,8096,4836,4844,4850,5388,4846,4481,4487,5395,5396,4480,4293,4493,4503,4507,4508,4509,7020,7019,7221,7222,7224,7225,6736,8095,8102,8103,8094,4874,7233,7237] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [9866,9863,9864,9862,1496,9868,9869,9878,9882,10753,10752,10755,1714,1717,2699,2729,10249,10250,2697,2698,2700,9668,10223,1249,1211,1212,1725,1722,2696,2707,9861,9858,9857] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [1475,1478,1470,1471,1474,3308,3309,3310,3311,1479,1465,1572,570,571,1480,605,1528,1521,1525,1504,1483,3342,3343,1281,1279,1464,1466,1468] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [1500,9664,1693,1695,1696,9427,10755,1714,1715,1716,2664,1694,1496,9882,2663,2665,10790,10787,10788,10789,9888,9883,9885,9894,9898,9890,9892,9389,9387,9390,10797,9354,1701] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [4352,4358,4356,4390,4386,18,19,21,23,4377,17,95,76,20,22,97,99,488,490,4350,486,64,4370,499] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [8270,8272,8274,8275,8271,8264,5620,5622,5623,5624,8666,8477,8480,5632,5634,5825,5828,8284,6014,6013,8681,6056,8707,6055] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [9642,9646,9704,9706,9697,9874,9876,6040,9647,9459,9696,9689,9672,9668,9665,9645,9651,9440,9443] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [10270,10271,6349,6350,6360,6366,6367,6354,6355,6356,5590,5567,10086,10087,5574,5576,10296,10294,5588] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [9500,9143,9145,9147,9773,9775,9777,9778,10036,9774,9776,9215,9490,9491,9788,9789,9991,9171,9213,9992,10021,10037,9484,9757,9761,9768,9765,9755,9756,9752] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [2894,2897,2898,2906,2908,295,482,522,523,524,3327,293,3098,3284,3285,3099,3326,82,481,85,86,88,96,98] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [40,4709,4711,4710,4719,826,831,836,841,842,843,4712,4713,31,4351,38,39,52,54,4896,4919,4917,4918] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [1548,3641,3635,2101,2102,2103,2125,2126,2127,2128,2862,2864,3640,3642,2841,3624,3630,3631,3625,2100] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [4510,5440,4517,4507,4508,4509,5405,5398,5402,5403,4288,7020,7221,7222,7224,7202] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [6482,6483,6484,6485,6487,7331,7116,7117,7375,6844,6846,6826,6829,7127,7114,7115,7094,7095,7096,6828,6830,6842,7100] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [1311,1312,1321,958,959,960,961,962,963,1314,1318,1029,1620,1621,1607,1824,1868,1869,1609,1304] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [8692,8690,6989,6990,7051,7079,7215,7050,8723,7043,7044,7046,7047,7039,7003,7002,7028,7035,6805] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [3760,3762,4413,4414,4400,4402,4661,4616,4617,4120,4121] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [7383,7384,7773,7746,7322,7506,7515,8020,7749,7982,7994,7985] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [10650,10651,10652,10683,10477,10481,10480,10489,10684,10485,10482,10493,10497,10484] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [9967,9582,9330,9135,9976,9298] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
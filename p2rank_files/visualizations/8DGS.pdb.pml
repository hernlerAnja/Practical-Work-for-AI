
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
        
        load "data/8DGS.pdb", protein
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
 
        load "data/8DGS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2181,1226,1228,1272,1222,1225,2180,2179,1760,2153,2152,2154,1804,3922,3932,3937,3938,3939,3940,3931,3917,3920,2150,1785,1354,1752,1754,1753,1736,1756,1759,1271,1774,1776,2260,2261,2161,2162,1731,2264,2267,1732,1615,1370,1230,1231,1234,1235,1238,1258,1368,1257,1366,1369,1355,1357,1358,2466,2139,2140,2151,2436,2437,4866,4874,4884,4886,4872,4885,2120,1717,1242,1243,1252] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [9691,10784,9669,9670,9672,10543,9786,9788,9793,9659,9660,9668,10551,10552,10550,10545,10549,10572,10565,10566,10574,10789,10791,10780,10785,9798,9803,9811,9818,9821,9829,9822,9823,9825,9833,9824,9685,9714,9687,9686,9854,9681,10055,9827,9657,9658,9654,9655,10058,9680,10054,9849,9843,9846,10066,10063] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [4788,4790,4072,4097,4157,3595,4110,4138,4143,4096,4100,4107,3536,4105,3568,3569,3537,4800,4049,4251,4252,4253,4254,4265,4155,4182,4151,4154,4276,3559,3561,4148,3556,3593,4789,4135,4137,4774,4775,4773,4828,4783,4857,3897,4778,3895,4267,4770,4144,4754,3913,4546] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [1074,1092,6853,6825,6860,6854,1070,6880,6883,7244,6862,6892,7625,7627,7598,1086,1089,1090,1091,6236,6239,6240,6246,6235,6238,1073,1078,1079,1084,6268,6269,6270,6272,1069,6928,1063,6929,6241,6237,6824,7222,7213,7214,7215,7207,7217,7221,7223,7212,7219,6179,6180,6217] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [9461,3368,3383,3385,9432,9051,9052,9429,9059,9045,3373,3384,9061,8024,8061,8661,8663,8113,8081,8082,8083,8090,3364,9050,9082,9055,9057,8116,3360,3361,3362,3363,8692,8694,8698,8691,8114,8732,8718,8721,8731] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [9094,9097,9262,9263,9121,8957,8958,8959,8953,8954,8955,8956,9090,9091,8918,9119,9288,9291,9318,8932,9122,9123,9124,9080,9026,9069,9070,9064,9065,9067] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [4403,4348,4435,5801,5824,5833,4401,4464,5146,4324,4444,5803,4325,4462] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [2806,2808,2813,4859,4853,4655,4636,4637,4638,4639,3753,3755,3752,3754,3756,3757,4779,4775,4776,4777,4836,4782,4783,4791,4792,4832,4835,4852,4854,4856,4857,4834,4858,3913,3758,3897,2825,2826,4920,4921,2815,2816,4922,4926,4928,4908,4625,4626,4628,4623,4624,4614,4941,4934] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [4667,4342,4666,4779,4316,4692,4309,4312,4668,3741,3742,3744,3745,3737,3738,3730,3736,3896,3897,3775,3776,3777,4268,4691,4291,4288,3731,3733,3734] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [678,790,795,799,800,801,802,803,1037,1047,804,6323,6360,693,700,1068,1084,6267,6269,6271,6272,1069,1056,1058,1060,1064,1065,784,785,786,1071,1072,1075,1051,689,699,6274] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [109,9878,9879,9880,114,123,228,229,9834,9836,9838,9840,9845,9896,9897,9685,9714,9686,9798,9833,231,234] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [865,866,869,870,3019,837,838,3017,3018,3015,3003,3045,872,3253,3256,3259,3224,3281,3249,3280,3052,3054,893,3226,3222,3225,892,3251] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [1841,1843,2747,2750,4870,1839,4844,4869,4840,4848,4845,4846,4849,1805,3956,3957,3975,3977,4820,3976,3935,3947,1869,1838,2771,2773,2774] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [4332,4327,4330,4331,5138,4912,4913,5161,5163,5164,5165,5174,4357,4930,4932,5136,5137,4660,4661,5144,5135,4667] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [4788,4790,4098,4097,4138,4137,4786,4599,4601,4602,4580,4581,4582,4546,4545,4543] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [6312,6303,6282,671,692,694,695,696,6330,6300,6301,6302,672,674,6039,6041,6037,6015,6036,7861,7862,7863,7864,6331,6337,668,7883,7885,7894] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [4627,2796,2799,4628,4629,2800,4809,2792,2797,5010,4972,5007,4609,4610,2804,2807,2835,4967,4971,2795,4836] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [931,912,774,776,779,913,782,914,778,932,1032,1036,1054,909] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [2260,2261,2266,2264,1732,1612,1368,2268,2271,1633,2289,1717,2276,1631] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [10151,10156,10158,10143,10144,78,9885,100,9886,10160,10121,101,79,10185,10183,10033,10032,10014,10015,10017] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [5023,5020,5022,5601,5604,10196,10198,10456,10192,10195,10455,10967,10958,10960,10961,10194,10501,10489,10494,10469,10470,10483] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [1177,1176,1687,1685,1686,1710,1360,1378,1173,1191,1664,1708,1709] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [6687,6689,6233,6862,6669,6121] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [3185,3188,725,727,7619,3187,3216,3217,3220,3215,710,7616,7588,7590,7586] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [4274,4277,3558,4172,3556,3861,3553,3522,3523,3552,3583,4294,4295,4704,4302,4281,4707,4721,4722] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [837,838,667,3304,3305,3303,3281,3249,3250,3280,3251,681,683] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [5439,5252,5438,5128,5157,5156,5220,5221,5187,5190,5419,5413] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [612,619,639,944,606,610,3421,3422,3418,3419,3420,967,943,904,973,978,980,984] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [1098,1100,5997,5992,5994,6040,6042,689,698,701,1082,1085,6245,6280,1097,6246,703,690,6279] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [3424,3422,3413,922,923,825,827,828,829,903,945] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [7259,7450,7453,7480,7227,7229,7252,7254,7117,7119,7121,7477,7448,7150,7231,7232,7255] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [2298,2299,2301,2303,2304,1452,1400,2308,1399,1705,1418] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [7121,7285,7118,7120,7096,7097,7447,7424,7320,7425,7396,7397] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [3905,3699,3695,3803,3657,3886,3656,3658,3678,3785,3787] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [1002,988,999,1003,3043,974,975,976,879,881,620] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [2048,1562,1563,1564,2038,2070,1607] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        
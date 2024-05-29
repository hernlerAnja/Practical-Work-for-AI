
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
        
        load "data/6E2Q.pdb", protein
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
 
        load "data/6E2Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2714,2715,2713,2832,2847,2849,2852,2877,243,244,245,2831,2842,2845,2841,686,503,504,505,387,242,2866,3158,3154,3156,365,367,276,251,275,3167,254,3119,3153,2876,3188,3512,2867,2868,3421,3422,2869,3400,3401,3367,3368,3366,3398,3399,2926,335,336,2934,2935,3118,2749,3791,2752,2758,371,685,2680,369,368,372,373,375,2652] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [6562,7599,7601,7602,6561,6746,6747,6643,6664,4072,4073,6654,6657,6689,6688,6676,6677,6678,6679,6680,6681,6570,6738,4202,4197,4199,4200,4193,4195,4170,4201,4203,6525,6526,6527,6644,4079,4082,4104,6963,6965,6966,6979,7212,7214,7178,7179,7180,4163,4164,6935,6970,6968,6930,6931,6999,7000,7320,7232,7234,4103,4190] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [10531,10446,10450,10479,10481,10482,10443,11305,11307,11308,10321,10362,10456,10457,10454,10318,10358,10357,10360,10363,10366,10539,10540,10724,7984,10723,10472,10473,10788,10789,10971,10474,10728,10746,10754,10752,10755,10919,10920,10921,10322,8151,8152,10436,10437,7891,7892,7893,8013,8017,8020,8021,8023,8035,8333,8334,8019,7916,8147,8148,8153,8143,7884,10290,10319,10286,10323,10288,10260,10261,10759,7915,7924,8015,10757,7894,7895,7983,8047,8131] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [11733,11734,11735,11736,14021,14022,14023,11726,14160,14057,14060,14159,14243,14063,14066,14234,14185,11732,11760,12042,11728,11730,11748,11757,11696,14242,11697,14416,14418,14386,14404,14410,14411,14412,11723,14381,14382,14446,14383,14431,14805,11629,11637,11636,14426,14658,14447,14541,14597,11864,11865,11599,11606,14139,14140,11603,11605,14149,14155,14150,14153,14173,14184,11844,11866,11615,14543,11612,14146,14176,14174,14175] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.396,0.902]
select surf_pocket5, protein and id [5726,5754,5763,5765,5766,4302,4294,4278,4279,4292,4269,4291,4293,5730,5767,5770,5759,5762,5786,6021,5785,6020,6420,6421,6423,5731,4305,4476,4482,4865,4919,4822,4243,4283,4281,4901,4917,6441,6442,4490] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.286,0.278,0.702]
select surf_pocket6, protein and id [4777,5621,5622,3920,3921,5119,5121,3919,3903,3962,3953,3954,3952,4810,4805,4807,4813,4812,5088,5120,5098,3963,4843,4845,4741,4747,4752,4754] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.416,0.361,0.902]
select surf_pocket7, protein and id [7741,7774,7772,7773,8610,7739,7740,7723,8615,8618,9389,9425,9424,8926,8612,8893,8903,8617,7783,8648,8650,8923,8924,8925,7781,7782,8582,8550] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.357,0.278,0.702]
select surf_pocket8, protein and id [11776,12010,12011,11814,11811,11812,11816,12379,12415,12017,12025,11833,11835,11838,12336,13244,12343,12431,12433,13275,13276,13279,13267,13272,13280,13239,13521] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.506,0.361,0.902]
select surf_pocket9, protein and id [9562,9565,8125,9566,9568,8122,8063,9557,9533,9534,8098,8099,8101,8089,9529,8722,8724,8706,9573,9810,9811,9570,8308,8302,8103,8316] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.427,0.278,0.702]
select surf_pocket10, protein and id [16267,16270,874,745,15521,15511,15547,15549,875,878,744,757,886,889,890,882,885,891,15557,15558,15561,15562,15522,15524,15525,15527,903,922,731,16279,16277,16324,15512,765,16367] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.596,0.361,0.902]
select surf_pocket11, protein and id [12321,12326,12357,12358,12359,12602,12612,12634,11494,11495,11496,12319,12324,12327,11452,11454,11486,13135,11485,11436,12369,12406,12407,13134,12635] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.498,0.278,0.702]
select surf_pocket12, protein and id [5985,5983,5990,5991,12475,16156,16157,12471,5866,5868,5854,5861,5865,5867,12468,12470,12460,12465,12466,12836,12837,12907,12871,12873,5847,5850,12505,12478,16161] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.686,0.361,0.902]
select surf_pocket13, protein and id [660,668,1904,1908,1909,1000,1097,1043,1095,1079,474,477,472,654,415,450,451,453,455,1941,1944,1932,1929] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.569,0.278,0.702]
select surf_pocket14, protein and id [16202,16203,16204,12513,16213,16154,12479,12514,13152,16372,16374,16376,16383,16375,16212,12523,13186,13187,13211,12521,12522,16096,16116,12486,12489,16155,859,16091,16112,16120,16109,16125] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.776,0.361,0.902]
select surf_pocket15, protein and id [15013,4711,4712,4713,15023,15074,4697,4620,4626,4704,4705,4707,4708,15016,15117,15025,4700,4696,15973,15975,15976,15978,4587,15961,15962,15963,4567,15967,15968,15981,15983,15984,4579,4553] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.639,0.278,0.702]
select surf_pocket16, protein and id [91,92,93,124,125,126,988,991,75,955,983,985,1021,1022,134,135,1266,1023,1800,1299,1298] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.867,0.361,0.902]
select surf_pocket17, protein and id [15593,3198,3200,15601,3196,15613,15619,3328,3325,3111,3326,3195,3197,3199,3130,3131,15597,2950,2954,2956] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.690]
select surf_pocket18, protein and id [15720,15721,13366,5322,5323,5357,5354,5355,5356,5358,5359,15718,15725,15739,15740,13371,13490,13351,13354,13367,5368,5392,5391,15733,5393,4957,4990,4991,4961,4963,13483,13486,13485] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.843]
select surf_pocket19, protein and id [14900,8766,8769,14902,14907,2028,8796,9127,9128,9162,9164,9160,2026,8756,8762,2146,2147,2027,2032,2019,2022,14921,14922,9196,9197,9198,14915] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.620]
select surf_pocket20, protein and id [12368,12370,12371,11990,11421,11422,11423,11816,12378,11989,12418,12420,12421,12423,11788,11791,11786] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.753]
select surf_pocket21, protein and id [4328,4331,4096,4070,4215,4197,4199,4200,4193,4195,4073,4507,4508,6644,4332,4333,4227] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.549]
select surf_pocket22, protein and id [889,890,912,880,881,884,888,891,356,15561,15562,843,3781,2945,2948,2949,3782,3784,903,826,834,837,2975,818,331,343,344,345,3130,354,355,915,330,873,874,842] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.663]
select surf_pocket23, protein and id [399,503,504,505,387,483,499,500,242,2832,245,267,365,367,238,268,371,685,369,372] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.478]
select surf_pocket24, protein and id [4171,4172,4173,6942,6761,6760,6757,6943,15035,6777,4712,4713,4182,4183,4184,4695,4696,4648,4656,4702,4706,7591,7594,4659,6787,4703,4710,4640] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.573]
select surf_pocket25, protein and id [1034,61,1035,633,58,59,60,62,428,430,455,1084,454,1085,1087,632,425,427,1042] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.408]
select surf_pocket26, protein and id [4856,4857,4906,4282,4907,4909,4455,3885,3886,3888,4256,4258,3889,3890,3887,4283,4454,4255] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.482]
select surf_pocket27, protein and id [11732,11760,12042,12043,11730,11748,11733,14022,14023,14160,11864,11865,11606,14139,14140,11844,11866,13960,13961,13962,13988] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.337]
select surf_pocket28, protein and id [6766,6768,6762,6923,7138,7007,7009,6757,6943,6944,16012,16014,7140,7137,7010,16019] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.388]
select surf_pocket29, protein and id [10889,10988,10827,11201,11202,11142,11145,11147,11151,11141,11182] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.290,0.278]
select surf_pocket30, protein and id [13421,13260,13420,13269,13270,13235,13288,13287,13234,13571,13592,13551,13552,13553,13405,13404,13555,13593] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.420,0.361]
select surf_pocket31, protein and id [13298,13299,13938,13916,13917,13919,11824,11825,13520,13521,13275,13276,13278,13283,11811,11833,11835,11820] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.361,0.278]
select surf_pocket32, protein and id [15136,15101,4581,4589,4590,4584,15952,4592,15922,15920,4585,4591,15915,15927,15949,15950,8413] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.510,0.361]
select surf_pocket33, protein and id [8660,8102,8103,8662,8075,8078,8714,7730,8280,8281,7706,7708,7710,8661,7705,7707] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.431,0.278]
select surf_pocket34, protein and id [1948,2181,2182,1940,1943,1964,1961,1963,2630,464,2609,2611,463,465,2608,474,466,472,450,459] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.600,0.361]
select surf_pocket35, protein and id [9695,9711,9560,9694,9577,9578,9861,9842,9558,9559,9525,9527,9530,9882,9849,9843] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.502,0.278]
select surf_pocket36, protein and id [10553,11300,10735,10736,8474,11297,8511,8518,8003,8004,7992,8515,8466] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.690,0.361]
select surf_pocket37, protein and id [14798,14257,14253,14256,14392,14393,11717,11705,11706,11692,12175,14795,12224,12220,12183] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.573,0.278]
select surf_pocket38, protein and id [522,523,486,488,490,607,609,610,420,2596,2598,445,2599] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.780,0.361]
select surf_pocket39, protein and id [11274,10527,10548,10606,10367,11281,11291,10547,11292] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.643,0.278]
select surf_pocket40, protein and id [9568,8112,8114,8107,8111,8113,8098,9588,9589,9573,9586,10216,10217,10218,10215,9810,9811,10238] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.871,0.361]
select surf_pocket41, protein and id [14772,14773,14775,14774,14309,14311,14277,14251,14779,14789,14790,14058,14065,14067,14230] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.686,0.702,0.278]
select surf_pocket42, protein and id [6710,6720,7353,6708,6709,7351,7327,7329,7323,7325,7361,7517,7513,7387,7389] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.835,0.902,0.361]
select surf_pocket43, protein and id [16135,6331,6337,6332,6333,5967,6348,16133,6117,6343,6106] 
set surface_color,  pcol43, surf_pocket43 
   
        
        deselect
        
        orient
        
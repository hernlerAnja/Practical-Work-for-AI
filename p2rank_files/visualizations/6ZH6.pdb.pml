
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
        
        load "data/6ZH6.pdb", protein
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
 
        load "data/6ZH6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14765,14797,14389,14798,14771,15133,14892,14894,14928,14930,14931,15142,15144,14927,14922,14923,14177,14178,14509,14150,14920,14362,14142,14452,14460,14461,14463,14464,14465,14471,14885,14153,14799,14453,14455,14886,14442,14391,14415,14416,14417,14418,14420,14407,14409,14412,14119,14118,14152,29167,14419,14421,29182,29164,29166,29187,29181,29183,29184,29202,14092,14068,14098,14072,14069,14744,14745,14772,14370,14342,15084,15061,15062,15065,14340,14519,14517,14518,14719,14721,14752,15057,14724,15055,15053,15050,15080,15107,15081,15077] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.431,0.702]
select surf_pocket2, protein and id [403,648,650,372,375,622,620,623,400,401,402,590,680,681,686,687,689,656,344,404,406,646,615,617,346,349,717,724,729,755,399,407,408,433,432,374,625,626,598,471,557,709,713,702,658,659,896,747,753,749,754,873,778,779] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.537,0.902]
select surf_pocket3, protein and id [24900,25185,25149,24902,24695,24697,25314,25288,24727,25286,24693,24932,24933,24960,24963,24688,24691,24692,24726,24930,24962,25138,25176,25177,25338,25306,25309,25308,25077,25369,25075,25114,25146,25147,25105,25106,25113,25150,25339,25139,25140,25141,25107,25108,25103] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.404,0.702]
select surf_pocket4, protein and id [21845,20438,20440,20441,20442,21827,21828,21830,20437,20380,20381,20403,20406,26267,26268,22209,26269,21834,19876,19888,19892,19894,19895,19896,19897,19898,19858,19922,19955,21412,21413,19879,19880,21445,21446,21844,19930,20080,20344,20346,20058,20384,20079,26278,19906,19931,27873,27874,20075,20084,26245,26248,20121,22206,22225,22226,20120,22205,20101,20102,26243,22217] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.502,0.902]
select surf_pocket5, protein and id [27509,27510,27511,27507,27523,27524,27508,26055,26054,25857,28164,26037,26038,26059,27526,28152,28171,28174,28139,28141,28142,27401,27364,27386,27388,27389,27412,27387,27365,27533,27535,27366,27367,27368,28179,28180,28181,28183,28187,27385,27384,28944,28945,27632,28946,28925,28927,25843,25851,28178,28175,28177,28182,28943,28930,26097,26098,26099,28144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.376,0.702]
select surf_pocket6, protein and id [762,1062,759,760,1236,1233,983,986,1010,763,1012,1036,1053,1052,1063,1064,1018,1277,1284,1264,1232,982,1262,933,934,906,908,910,907,909,911,912,752,785,728,733,939,905,1254,899,755] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.463,0.902]
select surf_pocket7, protein and id [27432,27502,27503,26022,26036,26427,26037,26038,25879,27504,27510,27511,26448,26449,27431,26447,27401,26496,26479,26484,26490,25833,25837,25829,25831,25836,25842,25843,26339,26336,26338,26458] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.345,0.702]
select surf_pocket8, protein and id [3192,2866,2867,11587,11590,3158,3186,11562,11960,12304,3161,11964,3149,3156,3159,29109,29111,29106,29117,12325,12326,29116,29119,12324,2900,29122,12296,12297,11986,11989,11985] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.424,0.902]
select surf_pocket9, protein and id [13636,13648,13649,13663,13702,13703,13704,14232,14233,13645,14271,13733,13734,13759,14301,14303,14304,14314,14315,14207,14240,14274,14236,14208,14164,14167,13637,14166,14188,14158,14189,14190,14191,14241,14244,14237] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.318,0.702]
select surf_pocket10, protein and id [18976,18979,18969,18970,27141,27144,27145,27137,27136,27152,6335,19418,6101,6099,27138,6359,18947,6366,6368,6369,6394,6395,21371,27161,19386,19387,19584,19585,19586,21379,6112,6111,27160,18948] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.361,0.388,0.902]
select surf_pocket11, protein and id [9835,9864,9704,9706,9707,9735,9337,9338,9315,9316,9317,9829,9678,9114,9714,9897,9255] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.278,0.286,0.702]
select surf_pocket12, protein and id [21476,21089,21841,21853,21883,21881,21882,20785,21098,20781,20784,20745,21914,20819,21453,21477,21478,21455,21446,21443,21080,21086,21095,21096,21048,21054,21055,21056,21297,21507,21087,21506,21274,21298,21299,21302,21304,21294,21295,20810,21330,21333] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.369,0.361,0.902]
select surf_pocket13, protein and id [3493,3527,3528,3530,3492,11266,3494,3498,3149,3179,3150,3151,3152,3153,3154,3529,11265,11567,11330,11296,11298,11566,11592,11587,3186,11564,3211,3536,3526,3503,3495,11586] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.302,0.278,0.702]
select surf_pocket14, protein and id [234,263,239,210,211,213,16993,16999,17001,16714,16715,16716,16717,16969,261,177,16984,56,57,54,55,82,23,25,28,16957,16964,16988,16985,16992,16995,91,88,90,107,67,189,190] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.408,0.361,0.902]
select surf_pocket15, protein and id [13917,13529,13530,13971,13991,13852,13854,14093,14111,13582,14108,13583,13992,14084,14085,14086,14087,14088,13914,13916,13972,13974,13528,13555,13575] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.333,0.278,0.702]
select surf_pocket16, protein and id [25248,25214,25239,25215,25218,25219,25285,25187,25185,25288,24727,24755,25251,24842,24788,25223,24754,24757,25254,24726,24756,25177,24840] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.447,0.361,0.902]
select surf_pocket17, protein and id [10659,11055,11056,10764,10743,10736,10737,11024,10999,10762,10366,10761,10389,10554,10321,10356,10355] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.361,0.278,0.702]
select surf_pocket18, protein and id [21702,21709,21738,21947,21552,21554,21982,21981,21983,21673,21960] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.482,0.361,0.902]
select surf_pocket19, protein and id [22273,22281,22306,22307,20455,22271,20471,20456,20457,20465,20463,20479,22128,22129,22153,20850,20839,20851,21929,21932,21930,22093,22094,22095,21901,21903,21904,21906,20852,20473] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.392,0.278,0.702]
select surf_pocket20, protein and id [3452,4001,3962,3453,3451,3914,3956,3957,3960,3905,3095,3938,4000,3989,3476,3952,3954,4002,3449,3426,3911,3884,3917] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.522,0.361,0.902]
select surf_pocket21, protein and id [28115,28021,28065,28064,28113,28291,28066,28061,27546,28339,27537,27540,26090,28143,28108,28029] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.420,0.278,0.702]
select surf_pocket22, protein and id [26108,26360,26350,26355,26359,26364,26366,26367,24232,24241,24270,24275,24276,24262,24265,26347,26107,24024,25618,25619,25616,25617,26345,24019,23986,23992,23994,24023,25632,25642,25629,25647,23989,25649,25633,25636] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.561,0.361,0.902]
select surf_pocket23, protein and id [14757,14758,14759,14734,14762,14369,13860,13857,13862,13861,14372,14375,14376,13847,14764,14396,14786,14787,14789,14791,14402,14397,13435,13827,13436,14732,14735,14736,14729] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.451,0.278,0.702]
select surf_pocket24, protein and id [27830,27832,27834,27802,28814,27862,28815,19962,20060,20063,20064,20065,28780,20062,20059,20038,20039,27863,19927,20055,20085,27871,27873,19925,19934,19935,27805,27804,19961,19963,19926,27807,27837,27839,27840,27841] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.596,0.361,0.902]
select surf_pocket25, protein and id [9027,9586,8987,9588,9590,8932,9387,9388,9477,9028,8996,9624,9064,9026,9056] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.478,0.278,0.702]
select surf_pocket26, protein and id [1550,1986,1533,1686,1728,1921,1687,1580,1615,1689,1920,1574,1387,1440,1421,1551,1552] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.635,0.361,0.902]
select surf_pocket27, protein and id [11331,11338,11339,11340,10957,10958,10959,11310,10918,3515,3529,11305,3548,3579,4115,4143,4144,4145,3552,3556,4114,3549,3550,10937,10938,3581] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.510,0.278,0.702]
select surf_pocket28, protein and id [16492,16495,16165,16166,16486,16488,16519,16520,16497,16557,16540,16541,16542,16231,16163,16185,16262,16589,16260,16458] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.671,0.361,0.902]
select surf_pocket29, protein and id [3480,3487,3510,3520,3519,11277,10897,11236,11237,10894,10898,10892,10889,11235,11190,11196] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.537,0.278,0.702]
select surf_pocket30, protein and id [1132,1144,1131,1138,1114,1124,1121,1122,1123,1178,1500,1501,1164,1156,1218,1464,1430,1433,1499,1524,1217] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.710,0.361,0.902]
select surf_pocket31, protein and id [17270,17234,17245,17208,17209,17235,17212,17272,17271,17273,16981,16983,16948,16950,16951,16982,17320,17009,17011] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.569,0.278,0.702]
select surf_pocket32, protein and id [1196,1235,1233,1195,1089,787,791,809,1062,759,760,786,790,1052,1060,1064,1051,1088,1087,785,880,1199,1200,912] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.749,0.361,0.902]
select surf_pocket33, protein and id [3581,29087,29071,29072,11651,11652,11653,29086,4174,4175,4178,3589,3580,3548,3579,4142,4143,4144,4145,3552,3556,29051] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.596,0.278,0.702]
select surf_pocket34, protein and id [27348,27323,27644,27574,28464,27321,27352,27652,27653,27650,28485,27573,27554,28400,28401,28457] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.784,0.361,0.902]
select surf_pocket35, protein and id [20524,20527,20528,20529,20530,20544,20420,20422,20533,20492,20493,20520,20521,20364,20366,20367,20370,20182,20185,20181,20215,20423,20389,20179,20390,20206,20204] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.627,0.278,0.702]
select surf_pocket36, protein and id [8459,25524,25533,8458,25516,25517,8437,8842,8847,8850,8851,8450,25519,25534,25536,7907,7931,8439,8440,8441,8266,8852,7908,7909,7912,8421,8422] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.824,0.361,0.902]
select surf_pocket37, protein and id [1300,1301,1260,1261,1263,1075,1378,1377,1266,1595,1597,1568,1571,1286,1268,1353,1350,1332,1259,1265,1240,1246,1544,1542,1073,1033] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.655,0.278,0.702]
select surf_pocket38, protein and id [9603,9607,9613,9616,9637,9639,7953,8466,9097,7952,7954,9072,9617,7948,7956,9037,9073,9609,9638,8465] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.863,0.361,0.902]
select surf_pocket39, protein and id [1506,1531,1505,1508,1532,1441,1460,1469,1507,1476,1468,1871,1484,1784,1482,1485,1534,1752,1755,1783,1714,1745,1746,1717] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.686,0.278,0.702]
select surf_pocket40, protein and id [24683,24682,24715,24918,24927,24930,24962,24721,24716,24719,24686,24685,24955,24688,26392,26393,26395,26396,26043,24620,24750,26397] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.898,0.361,0.902]
select surf_pocket41, protein and id [19846,27183,27184,27185,19848,27214,19913,27207,27754,27778,27215,27815,19885,19886,19887,19884] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.686]
select surf_pocket42, protein and id [27238,27241,27234,27753,27261,27716,27822] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.863]
select surf_pocket43, protein and id [2703,2460,2462,2501,2502,2787,2788,2468,2704,2731,2422,2427,2724,2723,2459,2423,2424,2730,2732,2751] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.655]
select surf_pocket44, protein and id [10513,10998,10426,10428,10789,10790,10425,10409,10427,10796] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.827]
select surf_pocket45, protein and id [6043,6070,27223,27225,27465,27221,27214,27187,27190,27189,27220,27224,27212,27213,27215,27217,21383,21384,6038,6041,6046,21404,26273,26284,26285,21402,21400] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.627]
select surf_pocket46, protein and id [13811,13515,13487,13840,13841,13520] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.788]
select surf_pocket47, protein and id [6961,6588,6964,6610,7037,7038,18549,7016,7018,7052,6646,6653,7053,6640,6592,6692,6693,7050,7051] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.600]
select surf_pocket48, protein and id [19003,19004,19418,19414,19415,19444,18976,18979,18970,27136,27152,6335,19035,27151] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.749]
select surf_pocket49, protein and id [18354,18356,18358,18359,18298,18333,18387,18385,17974,18252,18253,18232,18233,18230] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.569]
select surf_pocket50, protein and id [16842,16844,16822,16823,16839,16841,16858,16835,16594,16605,16592,16595,16596,16466,16619,16625,16647,16622] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.714]
select surf_pocket51, protein and id [4757,4414,4416,4753,4386,4759,4760,4410,4412,4415,4792,4438,4793,4794,4758] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.541]
select surf_pocket52, protein and id [16587,16255,16256,16259,16590,16459,16284,16467,16620,16586,16439,16289] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.675]
select surf_pocket53, protein and id [2618,2513,2515,2489,2480,2079,2081,2487,2112,2110,2111] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.278,0.510]
select surf_pocket54, protein and id [7959,25547,9073,25542,25546,25538,9013,9014,9012,9034,9043,7952,25545,25526,25527,25543] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.361,0.635]
select surf_pocket55, protein and id [24750,24920,26397,28169,28168,24747,24748,24887,24890,24891,28131,28132,28134,28133,28135,24749,26393,26394,26395,26046,26044,24711,24715,24716,24889,24721,24686] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.278,0.482]
select surf_pocket56, protein and id [26273,21410,19880,19883,19884,19907,27849,27814,26275,26274,27213,27215,27217,27246,27247] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.361,0.600]
select surf_pocket57, protein and id [18722,6925,6901,6892,6924,6926,18748,18615,18733,18745,6862,6536,6866,18724,18635,6853,6893] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.278,0.451]
select surf_pocket58, protein and id [7146,25982,25983,25984,25985,7118,7615,25783,7575,7573,25933,25915,25916,7552,7544,25782] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.361,0.561]
select surf_pocket59, protein and id [14575,14656,14685,14665,14585,14293,14551,14283,14559,14698,14700,14703,14699,14701,14702,14707,14664,15019,14552] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.278,0.424]
select surf_pocket60, protein and id [29076,29137,29121,3221,3587,3590,3619,29074,3250,3251,3217,3219,3242] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.361,0.525]
select surf_pocket61, protein and id [27224,27253,27212,27213,27217,27246,27247,27223,27225,27221,27220,26273,26284,26297,26293,26294] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.278,0.392]
select surf_pocket62, protein and id [340,405,406,343,649,339,282,337,30,31,268,685] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.361,0.486]
select surf_pocket63, protein and id [3511,3519,3510,3520,4050,4051,3996,4076,4087,3550,10918,3516,3518,10929] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.278,0.365]
select surf_pocket64, protein and id [19956,20379,20332,20336,20338,20339,20337,20334,20335,20333,19795,19797,19818,19819,19820,19821,19822,19829,20342,19954] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.361,0.447]
select surf_pocket65, protein and id [11330,11296,11298,11592,11331,3528,3530,11627,11586,11618,11623,11625,11626,11363,11594,29107] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.278,0.333]
select surf_pocket66, protein and id [7959,25944,7958,7580,7937,25759,25760,7938,25545,25523,25524,25526,25527,25530,25543,7579,7935] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.361,0.412]
select surf_pocket67, protein and id [4650,4651,4652,4653,4654,5034,10041,4617,4618,4619,4622,4626,5033,5061,5004] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.278,0.306]
select surf_pocket68, protein and id [7643,7525,7642,7667,7894,7669,7521,7523,7535,7522,7494,7496] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.361,0.373]
select surf_pocket69, protein and id [6626,6605,18501,18828,18829,18498,18500,6279,6574,6208,6213,6199,6216,6217,6210,18504] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.286,0.278]
select surf_pocket70, protein and id [11821,11996,11780,11581,11480] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.384,0.361]
select surf_pocket71, protein and id [26393,26394,26381,24621,24623,26395,24593,24622,24600,24601,24602,24620,24923,24632,24952,24955,24949,24685,24918,24948,24950,24951] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.314,0.278]
select surf_pocket72, protein and id [5523,5231,4845,4846,4847,4791,4473,4469,4517,4448,4507,4506,4823,4472,4474] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.424,0.361]
select surf_pocket73, protein and id [22648,22474,22618,22649,22646,22667,22671,22323,22324,22325,22439,22440,22298,22448,22413,22358,22473,22296] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.345,0.278]
select surf_pocket74, protein and id [28046,28054,24054,24052,24053,28032,28033,28040,28008,28034,23791,23755,23782,23781,24059,24062,28006,24028,24031,24033,28010,23756,23784] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.459,0.361]
select surf_pocket75, protein and id [13574,13819,13603,13604,13792,14110,13776] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.373,0.278]
select surf_pocket76, protein and id [25647,26167,26168,25657,23721,25659,26139,26137,26140,26141,26142,26143,26179,27988,23995,24008,23727,23731,23996] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.498,0.361]
select surf_pocket77, protein and id [19455,19064,19156,19157,19188,19088,19154,19089,19458,19462,19463,19467] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.404,0.278]
select surf_pocket78, protein and id [6556,6721,6689,6730,6592,6691] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.902,0.537,0.361]
select surf_pocket79, protein and id [2873,12702,2874,2875,2876,2841,2519,2527,2848,2849,2850,12662,12663,2550,2538,2544,2548,2556,12284,12287] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.702,0.431,0.278]
select surf_pocket80, protein and id [17115,17116,17134,17137,17141,17140,17376,17062,17412,17179,17095] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.902,0.573,0.361]
select surf_pocket81, protein and id [26869,28910,28911,27611,27612,27614,26839,28598,28600,26838,26875,28622,27639,28620,28621] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.702,0.463,0.278]
select surf_pocket82, protein and id [27465,27468,27456,27463,27190,27197,6067,6038,6041,6086,6085,21383,21386,21387,6119,6106] 
set surface_color,  pcol82, surf_pocket82 
set_color pcol83 = [0.902,0.612,0.361]
select surf_pocket83, protein and id [12713,12977,13032,12917] 
set surface_color,  pcol83, surf_pocket83 
set_color pcol84 = [0.702,0.490,0.278]
select surf_pocket84, protein and id [6762,6760,6761,7075,7093,6728,6730,7105,6908,6942,6931,6932] 
set surface_color,  pcol84, surf_pocket84 
set_color pcol85 = [0.902,0.651,0.361]
select surf_pocket85, protein and id [25551,25554,8945,8967,9021,9044,9048,9022,25552,25555,8922,8908,8961] 
set surface_color,  pcol85, surf_pocket85 
set_color pcol86 = [0.702,0.522,0.278]
select surf_pocket86, protein and id [15700,15703,16373,16375,16372,15664,15666,16052,16033,16051,15727,15728] 
set surface_color,  pcol86, surf_pocket86 
set_color pcol87 = [0.902,0.686,0.361]
select surf_pocket87, protein and id [22196,22218,22185,22194,22522,22547,22548,22521,22520,27930,27931] 
set surface_color,  pcol87, surf_pocket87 
set_color pcol88 = [0.702,0.549,0.278]
select surf_pocket88, protein and id [3824,3823,3825,3826,3822,3368,3364,3878,3396,3877,3879,3386] 
set surface_color,  pcol88, surf_pocket88 
set_color pcol89 = [0.902,0.725,0.361]
select surf_pocket89, protein and id [27265,27268,27820,27289,27857,27290,27685,27664] 
set surface_color,  pcol89, surf_pocket89 
set_color pcol90 = [0.702,0.580,0.278]
select surf_pocket90, protein and id [15369,15370,15375,15404,15371,15373,15612,15614,15403,15271,15623,15586,15588] 
set surface_color,  pcol90, surf_pocket90 
set_color pcol91 = [0.902,0.761,0.361]
select surf_pocket91, protein and id [23100,23072,23101,23075,22634,22913,22914,22915,22581,22602,22608,22632] 
set surface_color,  pcol91, surf_pocket91 
set_color pcol92 = [0.702,0.608,0.278]
select surf_pocket92, protein and id [17958,17577,17579,17580,17675,18000,17989,17990,17999,17634,17957,17959,17991] 
set surface_color,  pcol92, surf_pocket92 
set_color pcol93 = [0.902,0.800,0.361]
select surf_pocket93, protein and id [14874,14890,15173,14795,14799,14801,14832,14834,14807,14809,14833] 
set surface_color,  pcol93, surf_pocket93 
set_color pcol94 = [0.702,0.635,0.278]
select surf_pocket94, protein and id [27313,27309,27376,27377,27283,27424,27374,27314] 
set surface_color,  pcol94, surf_pocket94 
set_color pcol95 = [0.902,0.839,0.361]
select surf_pocket95, protein and id [3803,3268,3571,3444,3445] 
set surface_color,  pcol95, surf_pocket95 
set_color pcol96 = [0.702,0.667,0.278]
select surf_pocket96, protein and id [26426,26427,26038,27504,27510,26339,26099] 
set surface_color,  pcol96, surf_pocket96 
set_color pcol97 = [0.902,0.875,0.361]
select surf_pocket97, protein and id [19577,19595,19864,19866,21364,21420,21454,21332] 
set surface_color,  pcol97, surf_pocket97 
set_color pcol98 = [0.702,0.694,0.278]
select surf_pocket98, protein and id [11969,11871,11873,11561,11562,11558,11529,11946,11532,11935,11939,11997] 
set surface_color,  pcol98, surf_pocket98 
set_color pcol99 = [0.886,0.902,0.361]
select surf_pocket99, protein and id [2703,2761,2675,2651,2655,2785,2786] 
set surface_color,  pcol99, surf_pocket99 
set_color pcol100 = [0.675,0.702,0.278]
select surf_pocket100, protein and id [4059,3439,3471,3438,4049,3543,3544] 
set surface_color,  pcol100, surf_pocket100 
set_color pcol101 = [0.847,0.902,0.361]
select surf_pocket101, protein and id [2968,2579,2884,12648,12653,12654,12658,12694,12691,2969,2970] 
set surface_color,  pcol101, surf_pocket101 
set_color pcol102 = [0.647,0.702,0.278]
select surf_pocket102, protein and id [4185,4186,3634,4397] 
set surface_color,  pcol102, surf_pocket102 
set_color pcol103 = [0.812,0.902,0.361]
select surf_pocket103, protein and id [2997,2998,2576,2577,2578,3030,3032,2967,2881,2882,2884] 
set surface_color,  pcol103, surf_pocket103 
   
        
        deselect
        
        orient
        
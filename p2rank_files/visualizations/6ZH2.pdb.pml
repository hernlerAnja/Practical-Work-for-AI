
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
        
        load "data/6ZH2.pdb", protein
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
 
        load "data/6ZH2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [643,645,615,617,618,612,217,587,589,425,459,344,342,352,376,644,372,400,401,403,404,405,406,321,668,667,622,620,623,625,884,885,887,888,626,889,775,598,800,433,431,432,774,562,697,720,721,752,375,718,750,374,741,398,407,408,399,646,647,652,672,673,675,751,746,748,781,738,739,777,778,919,953,268,239,269,240,63,241,243,221,343,31] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.431,0.702]
select surf_pocket2, protein and id [19986,26430,19991,19993,19990,20029,20001,20020,20051,20444,20178,20475,20478,20500,20474,20217,20536,21937,20219,20533,20534,20535,21938,22328,22329,26418,26419,26421,22309,22312,21511,21542,19995,19996,20498,20499,20471,21930,21931,21933,21947,21948,21932,19992,19994,19956,21543,20173,20180,20182,20183,20185,20200,28032,28033,28054,28055,20158,20177,22308,20187,27999,28000,28031,28022,27990,20025,20026,20027,20028,27992,20152,20153,20156,20060,20157,20163,20162,20161,27993,28950,20132,26400,28030,28053,22321,20059,20061,27966,27959,27961] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.533,0.902]
select surf_pocket3, protein and id [13510,13512,13513,13539,13540,13541,13965,13952,13959,13844,13808,14368,14109,13809,13810,13898,13559,13560,13562,13563,13568,14077,14076,13782,14103,14105,14106,14108,13590,14131,14133,13589,14061,14075,13962,13904,13907,13906] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.400,0.702]
select surf_pocket4, protein and id [14927,14928,14891,14480,14521,14916,14918,14400,14401,14761,14762,14462,14463,14464,14466,14468,14471,14472,14883,14886,14889,14882,14481,14473,14476,14796,15150,14351,14353,15061,14528,14531,14741,15084,14381] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.494,0.902]
select surf_pocket5, protein and id [26600,26631,26599,26601,27590,27591,27659,27662,26174,27669,27670,26190,27588,27560,26642,26646,26648,25983,25981,25988,25994,25995,26031,26647,26490,27661,26578,27647,27649,26610,26583,27663,26579] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.369,0.702]
select surf_pocket6, protein and id [28350,29101,29103,28354,28355,29099,29100,29106,28342,28343,28344,28345,28346,28347,27562,27563,27564,27543,27544,27545,27546,27547,27548,29121,26000,26002,26003,29128,27525,27526,27527,27790,27760,27789,27772,27787,27788,27783,27667,27670,27694,28341,27572,29119] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.451,0.902]
select surf_pocket7, protein and id [9711,9680,9335,9362,9654,9890,9370,9369,9371,9916,9917,9702,9336,9334,9822,9857,9829,9853,9833,9712,9733,9704,9309,9313,9314,9315,9311,9849,9707,9710,9688] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.337,0.702]
select surf_pocket8, protein and id [7953,7958,7951,25701,25702,25703,9013,9038,9014,9036,9037,7952,7954,7947,9611,9612,9574,9072,9074,9043,9071,9039,9040,9098,8470,8469,9640,9641,9618,9619,9615,25897,9017,9016,9018,25687,25694,25699,26101,26097,26099,7929,7932,7586,7934,8463,7938,25683,26093,26095,26096,7584,7587,7588,25684,25681,25903,25911,25912,25682] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.412,0.902]
select surf_pocket9, protein and id [58,57,177,179,263,233,107,189,210,213,211,80,90,91,82,17010,16987,81,23,17024,16744,16745,17000,17002,17029,17030,17032,16747,16756,16999,17001,16998,17003,16726,16746,16727,17018,17014,17015,16994,17004] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.302,0.702]
select surf_pocket10, protein and id [19450,27319,27320,19071,19072,27303,27304,27311,19485,6117,6119,6110,27298,6375,19049,19050,19048,19460,19455,19456,19513,19514,19516,19074,19078,19105,19515,27297,19081,27295,6342,6343,6344,19112,19106,19542,19545,21467,21468,21469,19684,6121,19452] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.361,0.369,0.902]
select surf_pocket11, protein and id [21654,21656,21805,21839,21840,21841,21776,21775,21812,22086,22058,22061,22062,22063,21681] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.290,0.278,0.702]
select surf_pocket12, protein and id [25418,25420,25317,25319,25413,25414,25415,25422,24827,25451,25452,25282,25279,25281,25308,25475,25444,25307,24886,24889,25351,24894,24864,24859,25064,25065,24858,25032,25034,25005] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.392,0.361,0.902]
select surf_pocket13, protein and id [919,928,930,959,929,896,760,761,726,751,1247,962,1053,1055,1279,1042,1080,1082,1034,1015,1014] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.322,0.278,0.702]
select surf_pocket14, protein and id [12875,12864,12898,12863,12865,12748,12749,12750,12751,12529,12561,12528,12843,12492,12866,12870,12839,12869] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.435,0.361,0.902]
select surf_pocket15, protein and id [780,806,809,811,1081,860,869,1251,1195,1196,1197,812,1220,789,897,782,895,1077,1079,1076,1072,1074,1104,1222,1105] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.353,0.278,0.702]
select surf_pocket16, protein and id [11304,3501,3502,3510,3157,3145,3187,3217,3535,3536,3537,29282,3192,3193,3156,3186,3527,3563,29283,11558,11260,11261,11263,3158,11578,11557,11555,11303,11300,11328,11294,11296,11258] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.475,0.361,0.902]
select surf_pocket17, protein and id [27769,27770,27775,27004,27005,27006,27763,27766,28726,28725,28727,28731,26991,27000,28386,28391,28392,28394,27746,28694,28696,28716,28719,28771,28772,26974,26977,26978,26979,26999] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.384,0.278,0.702]
select surf_pocket18, protein and id [24682,24707,25664,25666,25906,24714,25747,25927,24709,24712,25632] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.518,0.361,0.902]
select surf_pocket19, protein and id [1691,1437,1661,1662,1666,1667,1438,1617,1618,1619,1621,1622,1671,1674,1663,1439,1726,1587,1579,1581,1410,1370,1916,1950,1557,1919,1558,1727,1984,1915] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.416,0.278,0.702]
select surf_pocket20, protein and id [1336,1337,1362,1368,1403,1404,1092,1361,1363,1593,1594,1595,1605,1575,1580,1606,1255,1261,1278,1281,1292,1569,1572,1258] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.557,0.361,0.902]
select surf_pocket21, protein and id [3165,2873,3201,3167,12297,11955,11952,3192,3193,12318,29292,29287,11976,11977,11980,11972,11951] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.451,0.278,0.702]
select surf_pocket22, protein and id [10531,10994,10549,10550,11019,11020,10760,10353,10759,11052,10525,10350,10352,10508,10320,10655] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.600,0.361,0.902]
select surf_pocket23, protein and id [13623,13624,13626,13628,13652,14194,14197,14283,14184,14185,14187,14193,14203,13607,14162,14164,14165,14314,14315,13629,13749,14130,13603,13596,13606,14325,14326,14158,14159,14160,14223,13693,13625,13653,14220,14221,14222,14224] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.482,0.278,0.702]
select surf_pocket24, protein and id [4153,4155,4124,4125,10955,3557,10917,11312,10928,10931,10933,10952,10920,10921,10927,10951,10915,11308,3525,3526,3524,3523,3518,11302] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.639,0.361,0.902]
select surf_pocket25, protein and id [20842,20843,20875,20878,20879,20880,20916,21574,21575,21956,21985,21986,20907,21185,21194,21153,21166,21193,21195,21168,21191,21192,21186,21604,21216,21552,21944,21945,20882] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.514,0.278,0.702]
select surf_pocket26, protein and id [13837,14413,13852,13847,13850,13851,14754,14755,14361,14733,14732,14380,14382,13817,14386,14383,14385,14387,14729,14406,14407,14408,14409,14786,14788,14410,13418,13419] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.682,0.361,0.902]
select surf_pocket27, protein and id [25784,25768,25769,24363,24406,24407,24396,25785,25788,24121,24372,26288,26289,26292,26283,26257,26260,24130,25794,25801,24127,24129,26293,25771,25797,26259,24158,26502,26518,26519,26507,26510,26512,26494,26499] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.545,0.278,0.702]
select surf_pocket28, protein and id [8463,8453,8454,25675,8445,8842,25674,25676,25688,25680,8851,8850,8462,8275,8277,8393,8425,8426,7909,7910,7911,8266] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.722,0.361,0.902]
select surf_pocket29, protein and id [3527,3563,3564,3536,29263,29261,29262,29265,29283,11300,11302,11328,11329,11357,11296,11583,11644,11609,11606,11607,11585,11334,11618] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.580,0.278,0.702]
select surf_pocket30, protein and id [29282,3192,3193,3156,3165,3163,3167,29286,29293,29285,29287,11553,11951,11957,11959,11960,11578,11579,11580,11581,3168,11980] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.765,0.361,0.902]
select surf_pocket31, protein and id [28224,28511,28223,26242,26243,28274,28461,28276,28221,28268,28270,27721,27720,27700,27696,28462,28234,28181,28185,28188] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.612,0.278,0.702]
select surf_pocket32, protein and id [21178,21182,21185,21172,21152,21153,21399,21603,21604,21396,21430,21552,21151,21574,21575,21371,21369,21370,21176,21393,21395,21145] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.804,0.361,0.902]
select surf_pocket33, protein and id [19955,19956,20473,20437,20440,20470,20434,20054,20052,20442,20818,19919,19920,19923,19924,19893,19916,19926,19895,19918] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.643,0.278,0.702]
select surf_pocket34, protein and id [25285,25282,25283,24824,24825,24827,25209,25208,25236,25237,25278,25476,25238,25473,25509,25094] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.361,0.902]
select surf_pocket35, protein and id [27713,27732,28657,28571,27795,28634,28633,28605,29020,29021,27480,27482,27803,27809,27811,27505,27507,28629,28630,27786,27788,28627] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.675,0.278,0.702]
select surf_pocket36, protein and id [552,523,525,551,484,136,553,140,513,514,516,521,138,139,141,112,113,114,115,220,459,498,499,161,171] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.890,0.361,0.902]
select surf_pocket37, protein and id [15634,16095,15599,15602,15598,15601,15789,16113,15819,15821,16115,15820,16092,16094,16096,15893,16123,15894,15901,15902,15939,15941] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.694]
select surf_pocket38, protein and id [14400,14401,14402,14149,14147,14480,14473,14474,14476,14464,14471,14176,14351,14373,14381] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.871]
select surf_pocket39, protein and id [1133,1232,1233,1140,1141,1137,1147,1154,1159,1146,1153,1531,1532,1514,1471,1511,1447,1448,1142,1509,1171,1164,1198,1199,1202,1506,1510] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.659]
select surf_pocket40, protein and id [7089,7117,7118,6918,6922,6956,7275,6947,6943,6944,6945,6988,7088,6954,6775] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.827]
select surf_pocket41, protein and id [18424,18953,18958,18981,19120,6233,6220] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.627]
select surf_pocket42, protein and id [16171,16173,16174,16280,16281,16608,16576,16477,16516,16511,16505,16179,16242,16165,16188,16577,16178,16210,16507,16538,16539] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.788]
select surf_pocket43, protein and id [17942,18123,18158,18160,17796,17797,17943,17794,17910,17912,17792,18280,18250,17759,17760] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.596]
select surf_pocket44, protein and id [14803,14890,14871,15178,15179,14870,14872,14830,14795,14454,14792,14796,14831,14885,14887,15139] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.745]
select surf_pocket45, protein and id [6576,18537,6606,6208,6217,6225,6222,6226,18931,6219,18524,18930,18522,6628,18523] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.565]
select surf_pocket46, protein and id [1115,1390,1392,1116,1400,1402,1425,1389,1113,1231,1112,1256,1258,1233,1259,1229,1427] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.706]
select surf_pocket47, protein and id [26547,25054,25055,26549,24818,24846,24882,24851,24853,25059,25062,24814,24847,24848,24815,24817,25087,25093,25094] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.533]
select surf_pocket48, protein and id [27746,28694,28696,28708,28709,28411,28432,28440,27747,27763,27766,28393,28392,28686,28439,27749] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.663]
select surf_pocket49, protein and id [27230,27264,27265,27231,27232,19763,19784,19760,19727,19728,27266,19752,19754,27366,27335,19725,19751,19756,27334,27336] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.498]
select surf_pocket50, protein and id [8453,8454,8838,8840,8842,25685,25688,25720,8877,8850,8439,8448,8462,9082,25710,25693,8874,8879,9080,9081,9103] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.624]
select surf_pocket51, protein and id [7532,7893,7530,7542,7674,7676,7704] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.467]
select surf_pocket52, protein and id [18352,18354,18375,17994,18408,18379] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.580]
select surf_pocket53, protein and id [21503,19981,21507,21510,21499,21497,26425,26427,19978,20002,20005,27405,27406,27973,27374,27375,27376,27974,27379,19982,19983,19985] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.278,0.435]
select surf_pocket54, protein and id [25728,25729,24680,24682,25692,24707,25664,25666,24677,24704,25671,25691,25668,25631,25633,25655,25652,25658] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.361,0.541]
select surf_pocket55, protein and id [28363,28367,28411,27747,27746,28366,28392,28393,27749,28251] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.278,0.404]
select surf_pocket56, protein and id [28160,28131,28549,28550,28551,23619,28518,28490,28491,23656,23651,23652,23655,23616,23646,28484,28525,23925,23647,28162,28196,28197,28161,28163] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.361,0.498]
select surf_pocket57, protein and id [20484,20304,20623,20619,20516,20617,20618,20620,20639,20281,20282,20302] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.278,0.373]
select surf_pocket58, protein and id [17295,17296,17344,17007,17294,17041,17039,17259,17265,17298,17299,47,48,15,19] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.361,0.455]
select surf_pocket59, protein and id [4162,4163,4196,29230,29233,4195,4405,4407,3641,3642,4442,3615,29248] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.278,0.337]
select surf_pocket60, protein and id [21473,21480,21484,21478,6045,6049,6066,6074,27622,27625,6095,27626,6070,27382,27624,27615,27357,6048,21497] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.361,0.416]
select surf_pocket61, protein and id [12316,12317,12318,29292,12289,12290,12742,29295,29298,29299,12741,29302,2873,2916,2907] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.278,0.306]
select surf_pocket62, protein and id [24291,24284,24152,24177,24052,24153,24282,24314,24316] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.361,0.373]
select surf_pocket63, protein and id [23888,23887,23918,23912,23914,23916,28205,24169,24167,28165,28167,28168,24163,24189,24194,24196,24197,28191,28192,28213,23919,23913,28193,23922] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.286,0.278]
select surf_pocket64, protein and id [22231,22232,22410,20944,20946,21978,22001,22009,22257,20949,22408,22409,22407,22384,22004,22007,22006,22033,22034,20936,20943] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.388,0.361]
select surf_pocket65, protein and id [9244,9210,9211,9212,8788,8789,8824,8727,8763,8764,8792,9138] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.318,0.278]
select surf_pocket66, protein and id [26389,22319,22320,22321,28053,28089,28090,22646,22648,22645] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.427,0.361]
select surf_pocket67, protein and id [4184,4186,4187,4188,4154,3587,11642,29247,29263,29241,29242,29244,29245,11637,11640,11641,11643,11644] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.349,0.278]
select surf_pocket68, protein and id [6343,6315,19112,6299,6318,19106,19137,19136,19545,19544,6183,6184] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.471,0.361]
select surf_pocket69, protein and id [7132,7559,7582,7621,7622,26138,7580,7549,25935,26068,26135,7551,26136,26134] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.380,0.278]
select surf_pocket70, protein and id [2730,2425,2431,2729,2707,2462,2463,2504,2505,2758,2761,2739] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.510,0.361]
select surf_pocket71, protein and id [22513,22540,22427,22428,22457,22458,22752,22773,22776,22777,22755,22547,22546,22548] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.416,0.278]
select surf_pocket72, protein and id [4874,4900,4907,4878,4879,5290,5293,5307,4922,4923,4920,4924,4931,5302] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.553,0.361]
select surf_pocket73, protein and id [7310,7312,7467,7459,7464,7486,7462,7463,7466,7487,7491,7493,7484,7094,7523,7457,7350,7351] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.447,0.278]
select surf_pocket74, protein and id [1885,1888,1863,1865,1870,1243,1519,1523,1517,1518,1520,1516,1542,1543] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.596,0.361]
select surf_pocket75, protein and id [26471,26467,26469,26470,27603,27633,27636,27384,27383,27411,27412,27639,27627,27626,26449] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.478,0.278]
select surf_pocket76, protein and id [26293,26320,25811,25810,23863,24130,24131,26291,26296,26331] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.635,0.361]
select surf_pocket77, protein and id [4097,4058,4055,4060,4089,3520,3523,3516,3517,3518,3524,4061] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.510,0.278]
select surf_pocket78, protein and id [19946,20011,27914,27937,27369,27370,27373,27974,19984,27343,27365,27366] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.902,0.678,0.361]
select surf_pocket79, protein and id [4763,4395,4768,18731,4393,4426,18745,18749,18742] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.702,0.541,0.278]
select surf_pocket80, protein and id [16326,16327,16410,16328,16330,16333,16751,16787,16788,16696] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.902,0.718,0.361]
select surf_pocket81, protein and id [1721,1456,1539,1559,1558,1727,1712,1750,1752,1439,1455,1711,1713,1691] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.702,0.576,0.278]
select surf_pocket82, protein and id [20837,20754,21102,20838,21131,20750,21124,21129] 
set surface_color,  pcol82, surf_pocket82 
set_color pcol83 = [0.902,0.761,0.361]
select surf_pocket83, protein and id [7312,7314,6998,7075,7459,7464,7462,7463,7351,7041,7457] 
set surface_color,  pcol83, surf_pocket83 
set_color pcol84 = [0.702,0.608,0.278]
select surf_pocket84, protein and id [9591,9592,9386,9384,9437,8934,9446] 
set surface_color,  pcol84, surf_pocket84 
set_color pcol85 = [0.902,0.800,0.361]
select surf_pocket85, protein and id [1697,1700,1702,1732,1735,2002,1706,2001,2032,2035,2027,2068] 
set surface_color,  pcol85, surf_pocket85 
set_color pcol86 = [0.702,0.639,0.278]
select surf_pocket86, protein and id [22605,22606,22723,22602,22630,22631,22702,22701,22367,22365,22573,22598,22601,22574,22600] 
set surface_color,  pcol86, surf_pocket86 
set_color pcol87 = [0.902,0.843,0.361]
select surf_pocket87, protein and id [6975,7032,6612,6707,6991,6989,6706,7066] 
set surface_color,  pcol87, surf_pocket87 
set_color pcol88 = [0.702,0.671,0.278]
select surf_pocket88, protein and id [3187,3143,3144,2806,3509,3182,3184,3185,3215,3209,3094,3473] 
set surface_color,  pcol88, surf_pocket88 
set_color pcol89 = [0.902,0.882,0.361]
select surf_pocket89, protein and id [8393,8397,8399,8421,8403,8485,8520] 
set surface_color,  pcol89, surf_pocket89 
set_color pcol90 = [0.698,0.702,0.278]
select surf_pocket90, protein and id [27663,26248,26249,26251,26579,26490,26491,27669,27659] 
set surface_color,  pcol90, surf_pocket90 
set_color pcol91 = [0.875,0.902,0.361]
select surf_pocket91, protein and id [4103,4065,4068,3578] 
set surface_color,  pcol91, surf_pocket91 
set_color pcol92 = [0.663,0.702,0.278]
select surf_pocket92, protein and id [26268,24158,24166,26295,26294,26260,24129] 
set surface_color,  pcol92, surf_pocket92 
set_color pcol93 = [0.835,0.902,0.361]
select surf_pocket93, protein and id [6061,6067,21476,21475,5816,6042,5778,5779,5781,5810,6040,6041,6043,5776,5777] 
set surface_color,  pcol93, surf_pocket93 
set_color pcol94 = [0.631,0.702,0.278]
select surf_pocket94, protein and id [13509,13511,13810,13561,13531,13533,13801] 
set surface_color,  pcol94, surf_pocket94 
   
        
        deselect
        
        orient
        
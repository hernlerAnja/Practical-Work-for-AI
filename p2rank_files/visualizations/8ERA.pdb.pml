
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
        
        load "data/8ERA.pdb", protein
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
 
        load "data/8ERA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [13642,13644,14140,14141,14142,13641,13643,13645,17987,17988,17785,18107,18108,14148,14150,18016,18017,18018,18019,18038,18037,17699,17702,17811,17776,17808,17701,17703,17810,14188,14189,14190,14184,14185,14186,14187,14213,14214,14216,13571,17539,17540,14153,14158,14152,14123,17623,17626,17614,17616,17611,13602,13603,13639,13640,13576,17778,17783,17784,17986,14218,14219,17768,17769,17770,13582,13580,17775] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.427,0.702]
select surf_pocket2, protein and id [1564,1810,2033,2035,2037,2038,2040,2042,2045,1562,1565,1807,1809,1467,1469,1830,1533,1597,1977,1992,1755,1995,1997,1973,2002,2003,2017,2024,1788,1789,1791,1792,1794,1795,1803,1805,1806,1804,1811,2005,1772,1774,1775,2028,2043,1812,1754,1769,1411,1413,1790,1445,1447,1440,1444,1465,1466,1468,1470,1942,1541,1951,2070,2075,1972,1974,1943,1976,1947,1982,1978,1979,2262,2046] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.525,0.902]
select surf_pocket3, protein and id [10728,10765,10766,10767,10792,9810,9551,9553,10003,10005,10004,10036,9785,10408,10409,10021,10023,10022,10024,10025,10020,10799,9833,9996,9997,10725,10758,9591,9548,9592] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.388,0.702]
select surf_pocket4, protein and id [18473,18474,18475,18477,18800,18806,18809,18479,18482,18808,19158,15624,20190,20192,20508,15627,20513,20516,15600,15601,15602,15615,15610,19281,20518,20195,19150,15616,19864,19487,19488,20183,19860,19873,19156,19159,19485,19160,19161] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.475,0.902]
select surf_pocket5, protein and id [20942,21639,21641,21764,21743,21878,21864,21469,21470,22058,21906,21622,22000,22002] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.349,0.702]
select surf_pocket6, protein and id [2510,2749,2671,2672,2638,2637,2785,2758,2614,2534,2535,2729,2756] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.424,0.902]
select surf_pocket7, protein and id [20675,27637,27622,20676,20677,27636,27642,27643,27648,27475,27478,27480,27672,27669,27396,27397,27255,27254,27184,27182,27118,27472,27473,27236,27399,27624,27534,27673,27676] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.310,0.702]
select surf_pocket8, protein and id [21043,21044,21027,22342,22324,22319,21147,21154,21155,21081,21085,21080,21146,22386,21075,21006,21028,21005,21674,20975,20980,20961,21660,21668,20979,20988,20981,20982,20983,20985,20998,22340,21664,22025,21690,21656,22320,21104,20964,21662,21663,21666,21658,21661,22317,22327,22325,21101,22385] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.373,0.902]
select surf_pocket9, protein and id [13439,13441,14732,13440,14401,14606,13408,14485,14486,14747,13409,14583,14450,14581,14582,14467,13121,14400,14604,14580] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.290,0.278,0.702]
select surf_pocket10, protein and id [26436,26472,26473,26503,26772,26762,26763,26771,26778,26784,26773,28783,26779,26782,26905,26906,28830,28831,26915,28805,28806,28807,28809,28808,28810,28811,28812,28813] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.396,0.361,0.902]
select surf_pocket11, protein and id [15760,15761,15784,15792,15793,15794,8841,15795,15868,15871,15796,8843,15763,8882,8910,8590,8592,8873,15912,8870,16487,8911,15764,15768,15759,15762,16455,16468,15786,16463,15910] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.329,0.278,0.702]
select surf_pocket12, protein and id [1807,1809,1825,1826,1514,1845,1467,1469,1823,1824,1827,1810,1919,1513,1887,1886,1540,1541,1917] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.447,0.361,0.902]
select surf_pocket13, protein and id [373,135,139,374,118,119,116,193,194,196,198,199,402,195,197,225,232,24,38,41,42,45,347,39,136,22,25,40,154,132,133,134] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.369,0.278,0.702]
select surf_pocket14, protein and id [3841,3839,3840,4152,4153,4154,4093,4118,4121,4094,4096,4244,4128,4130,4250,4243,4277,4278,3934,3833,3874,3872,3901,3902,4245,4248,3900] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.498,0.361,0.902]
select surf_pocket15, protein and id [25275,25277,25302,25631,25633,25272,25582,25583,26099,26103,26107,26110,26113,25604,26122,25634,26102,24665,25001,25002,26105,24968,24969,26133,26134,26129,26142,26118,25607,25606] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.408,0.278,0.702]
select surf_pocket16, protein and id [18345,18213,18214,20556,20541,20279,18343,18344,18346,18347,18350,20351,20257,20258,20260,20262,20263,20224,20236,20237,20557,20350] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.549,0.361,0.902]
select surf_pocket17, protein and id [24640,24638,24615,24643,26167,26166,24345,24316,24324,24969,26132,26133,26141,24921,24663,24666] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.447,0.278,0.702]
select surf_pocket18, protein and id [21167,21168,21198,21197,14360,14361,14362,14363,14334,14304,14305,13857,14273,13881,13509,13510,13511,13512,14302,14303,13487,13521,14280,13859,13856] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.600,0.361,0.902]
select surf_pocket19, protein and id [15248,15260,15261,15263,15266,15307,16127,16128,15269,16198,14834,14851,15243,15244,15159,16213,16215,16216,15156,15158,15161,15290] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.486,0.278,0.702]
select surf_pocket20, protein and id [16207,16208,16058,16077,15993,16120,16396,16392,16054,15969,15990,15994,15999,15989,16016,16395,16382,16385,16017,16377,16188,16190,15967,15972,16119] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.647,0.361,0.902]
select surf_pocket21, protein and id [2051,2348,2258,2257,2259,2261,2285,2078,2081,2074,2076,2077,2241,2345,2116,2320,2322,2263] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.525,0.278,0.702]
select surf_pocket22, protein and id [19008,19007,19011,19009,19010,19012,18528,19018,19019,18552,18512,18513,18553,18734,18638,18866,18867,18868,18511] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.698,0.361,0.902]
select surf_pocket23, protein and id [11312,11124,11125,11128,11157,11120,11307,11310,11341,11342,11354,11355,11356,11383,11305,11040,11042,11277,11278,11279,11417,11418] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.565,0.278,0.702]
select surf_pocket24, protein and id [2393,2524,2525,2526,2528,2529,2384,2533,2554,2557,2323,2324,2354,2360,2267,2268,2237,2238,2244,2383,2356] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.749,0.361,0.902]
select surf_pocket25, protein and id [18982,19079,19089,19361,18912,18885,18887,18889,18891,18845,18846,18886,18888,18847,19348,19349,19350,19218] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.604,0.278,0.702]
select surf_pocket26, protein and id [12840,12842,12867,12869,14926,12843,13126,13129,13214,14895,15188,14896,14897,14935,14936,14899,16767,16782,16781,15204,15209,13150,13152,13128,13154,13155,13158,13213,15187,13151,16790] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.800,0.361,0.902]
select surf_pocket27, protein and id [19570,19251,19253,19517,19515,19196,19676,19303,19320,19750,19322,19734,19233,19234,19321,19198,19199] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.643,0.278,0.702]
select surf_pocket28, protein and id [22529,22532,23393,22555,22521,22523,23160,23381,23379] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.851,0.361,0.902]
select surf_pocket29, protein and id [10945,10946,11057,11079,10916,10917,10850,11080,11026,11053,9588,10786,10790,10791,10785,10815,10816,10754,10752,10756,10781,10759] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.682,0.278,0.702]
select surf_pocket30, protein and id [27508,26757,26758,28788,28789,28799,28800,28797,27498,27103,27104,27105,27505,27099,26480,26481,26482,27129,27130,27131,27133,26769,20645,20607,20615,27140] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.898]
select surf_pocket31, protein and id [16723,12578,12107,12108,12136,12554,12134,12137,16755,12619,16757,16758,16944,16981,12178,16921,12177,16722,16724,16756] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.678]
select surf_pocket32, protein and id [8527,7939,7979,7940,8405] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.847]
select surf_pocket33, protein and id [24907,24877,24879,25226,25227,20695,20699,20700,20704,24915,24917,24906,24908,26161,26162,26158,26160,26146,26154,26155,20708,20711,26186,26183,26184,26185] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.639]
select surf_pocket34, protein and id [14834,14851,16217,15243,15244,15159,16213,16215,16216,14874,14890,14917,14918,16218,15161,15248] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.796]
select surf_pocket35, protein and id [27299,27302,26749,26751,26776,26777,27290,27301,26790,26793,26799,26954,27111,27295,26867,27293] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.600]
select surf_pocket36, protein and id [12532,12454,12758,12759,12561,12562,12537,12804,12805,12792] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.749]
select surf_pocket37, protein and id [26195,26197,26199,26188,26189,24591,24590,26228,24303,26229,24879,24552] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.561]
select surf_pocket38, protein and id [19182,19186,19181,19185,19192,19201,19513,19172,19177,19193,19888,19507,19509,19498,18819,18824,19175,18827,18830,19188] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.698]
select surf_pocket39, protein and id [5641,5662,5664,5696,5697,5698,5700,5701,6010,5693,5621,5636,5976,5981,5984,5986,5991,5992,5952,6049] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.522]
select surf_pocket40, protein and id [714,715,723,724,728,729,693,678,676,716,448,748,749,751,753,674,670,672,449] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.647]
select surf_pocket41, protein and id [27150,27151,27152,27156,27159,26752,27161,27309,27302,26751,26776,27303,27275,27280,27277] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.482]
select surf_pocket42, protein and id [21906,22088,22090,21877,21878] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.596]
select surf_pocket43, protein and id [21316,22713,22714,22773,22455,22461,22462,22466,21328,22444,22474,22470,22468,22449,22452,22454] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.443]
select surf_pocket44, protein and id [10804,10836,10837,10838,10835,10625,10784,10806,10808,10614,10620,10585,10587,10588,10624,10902,10903,10904,10878,10875,10913] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.545]
select surf_pocket45, protein and id [26124,25544,25545,25532,25547,25220,25250,26126,25223,20708,20711,26155,25226] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.404]
select surf_pocket46, protein and id [25026,25358,25359,25360,25361,25332,25048,25049,25339,25391,25394,25058,25060,25055,25081,25384,25390,25417,25370,25329] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.494]
select surf_pocket47, protein and id [14968,16043,14970,14969,16037,16686,16011,16039,16627,16014,15000,16013,16626] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.365]
select surf_pocket48, protein and id [15315,16433,17331,17333,17339,16416,16400] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.443]
select surf_pocket49, protein and id [13899,13928,13930,13954,13958,13959,13962,13963,13965,13541,13768,13771,13792,13793,13795] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.325]
select surf_pocket50, protein and id [7229,7367,7368,7389,7202,7204,7386,7390,7363,7423,7453,7455,7369,7396,7457] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.392]
select surf_pocket51, protein and id [18802,18769,18770,18771,18994,18743,18744,18745,18619,18972,18925,18926,18944,18969,18970,18955,18957,18919] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.286]
select surf_pocket52, protein and id [6240,6439,6440,6555,6437] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.376,0.361]
select surf_pocket53, protein and id [12080,12113,12114,11777,11778,11779,12088,11739,11740,11742,12052,12054,12078,12082,12083,12086,11917,11918,12055,11746,11747,11748] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.314,0.278]
select surf_pocket54, protein and id [17200,17201,17202,17204,17218,17220,16406,16415,17314,16412,17244,16423,16422,16418,15700,15701,17321] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.427,0.361]
select surf_pocket55, protein and id [23883,23885,23886,23874,23875,22816,23859,22787,23567,22734,23558,23559,23561,22748,22749,23876,22735,23592,23595] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.353,0.278]
select surf_pocket56, protein and id [21110,21259,21260,21631,22394,22420,20951,21652,21103] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.478,0.361]
select surf_pocket57, protein and id [11292,11336,11293,11294,11295,11296,11297,11728,11727,10984,10958] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.392,0.278]
select surf_pocket58, protein and id [8557,8558,8561,8562,8593,8565,8531,15799,8842,8818,8854,8855] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.529,0.361]
select surf_pocket59, protein and id [25649,25707,25820,25618,25861,26027,25615] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.431,0.278]
select surf_pocket60, protein and id [28172,28173,28644,28643,28237,28308,28307,28309,28388,28219,28221,28327,28218,28220,28222,28381,28382,28191] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.580,0.361]
select surf_pocket61, protein and id [3703,3705,3378,3701,3492,3515] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.471,0.278]
select surf_pocket62, protein and id [28236,28470,28289,28542,28307,28309,28173,28644,28541,28643,28237] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.627,0.361]
select surf_pocket63, protein and id [11941,11924,12063,12065,12067,12068,12039,12038,11951,12402] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.510,0.278]
select surf_pocket64, protein and id [13458,13488,13451,13455,13456,13497,13866,13867,13868,13785,13489,13476,13482,13529,13786,13495] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.678,0.361]
select surf_pocket65, protein and id [21298,23080,21992,21993,22439,22418,22419,22420,21630,21632,22415] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.549,0.278]
select surf_pocket66, protein and id [21294,22447,23053,23078,23080,21322,21323,22436,23073,23071] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.729,0.361]
select surf_pocket67, protein and id [1125,1156,1557,1270,1135,1133] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.588,0.278]
select surf_pocket68, protein and id [25425,25794,25455,25784,25673,25642] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.780,0.361]
select surf_pocket69, protein and id [28720,28604,28850,28851,28932,28933,28703,28702,28603,28605] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.627,0.278]
select surf_pocket70, protein and id [27787,28133,28144,28145,28455,27083,27779] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.831,0.361]
select surf_pocket71, protein and id [501,491,492,268,270,508,534,332,493,643,324,325,355,328,302,300,303,304,263,265] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.667,0.278]
select surf_pocket72, protein and id [27260,27177,27261,26983,27291,26854,27292,27294,27174,27176] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.882,0.361]
select surf_pocket73, protein and id [24940,24920,24921,24942,24917,24918,24906,24908,26130,26132,26133] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.694,0.702,0.278]
select surf_pocket74, protein and id [20328,20448,20504,18241,20332,18329,20471,18326,18327] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.867,0.902,0.361]
select surf_pocket75, protein and id [28816,28819,28533,28822,26598,26596,26597,28769,26576,28771,28534] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.655,0.702,0.278]
select surf_pocket76, protein and id [3372,3158,3145,3185,3344,3348,3157,3153] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.816,0.902,0.361]
select surf_pocket77, protein and id [20032,19948,19951,19799,20079,20083,20080] 
set surface_color,  pcol77, surf_pocket77 
   
        
        deselect
        
        orient
        

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
        
        load "data/3I6W.pdb", protein
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
 
        load "data/3I6W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1862,1841,2819,2843,2845,15187,15190,15191,15192,15193,15180,14946,2986,3010,2977,1837,1858,1859,1863,1864,1867,1901,1416,1417,1835,1838,1861,1403,1415,1869,1871,1873,1909,15207,15210,15205,15211,15245,15247,1423,1424,1840,14022,14043,14044,14045,15158,1898,1900,14927,14943,14944,14945,15161,15215,15151,15152,14020,14023] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [21556,21752,21754,10901,10905,10895,10896,10903,10898,10899,12191,21718,21724,21721,21744,21543,21544,21553,21552,21719,12189,12142,11924,11926,11925,12173,12188,10927,10928,12174,12196,12172,21560,21710,21714,21715,21717,11927,21703,12132,12161,21571,21769,10897,21751,21753,21777,10902,10906] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.482,0.902]
select surf_pocket3, protein and id [5137,4601,5136,5138,5036,4467,4469,4612,4613,4645,4650,5009,5037,4143,4642,4643,4644,4618,4623,4624,4641,535,4165,4653,5146,5145,5139,4145,4166,4271,4164,4284] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [22695,23042,23047,23077,23074,23570,23433,23460,23461,22708,22590,22574,22589,22588,23025,23562,23568,23569,23561,23560,22567,22569,18950,18958,18959,23066,22566] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.392,0.902]
select surf_pocket5, protein and id [16422,16444,16445,16933,17425,16881,16423,16425,16446,16564,17289,16930,17316,17317,17417,17418,17416,16551,16898,16903,16892,16893,16900,16879,12818,12819,16922] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.290,0.278,0.702]
select surf_pocket6, protein and id [10758,10790,11149,11177,10791,10793,10782,10763,10285,10282,10283,10305,10411,10752,10753,10739,10741,11285,10306,10424,11176,10608,10609,11277,11278,11276,11286,6670,6679] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.424,0.361,0.902]
select surf_pocket7, protein and id [13528,13858,13541,13423,13421,13422,14402,13908,13910,13407,13406,13403,13869,13870,13877,13880,14293,13876,13899,14294,13907,13726,13856,14266,14395,14393,14394,15838] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.365,0.278,0.702]
select surf_pocket8, protein and id [10742,10741,11285,10424,11279,11280,10608,11278,10535,11299,11383,11384,10511,10727,10624,10626,10726,11287,11293,11298,11295,10438,10440] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.514,0.361,0.902]
select surf_pocket9, protein and id [22722,22724,23011,23667,23010,23668,23025,23026,23562,23563,23564,23569,23571,23582,23583,22910,22819,23577,23579,22708] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.435,0.278,0.702]
select surf_pocket10, protein and id [5147,5145,5139,5159,5241,5244,5243,4395,4601,4602,5138,4468,4484,4486,5153,5155,4298,4300,4587,4284,4586] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.608,0.361,0.902]
select surf_pocket11, protein and id [16881,16651,16675,16867,17523,17524,17420,17427,17439,17425,16564,16866,17419,17433,17435,17418,16748,16882,16764,16766,16578,16580,17521] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.510,0.278,0.702]
select surf_pocket12, protein and id [14270,14271,13925,13927,14420,14421,14439,14427,14672,14673,14674,13950,13971,14655,14657,13949,13951,13953,13955,14630,14261,14631,14629,13965] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.698,0.361,0.902]
select surf_pocket13, protein and id [1578,1143,1248,1142,1141,1122,1596,1120,1261,2122,2113,2114,2115,1986,1630,2013,2014,1619,1576,1446,1590,1597,1600,2121,2123] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.580,0.278,0.702]
select surf_pocket14, protein and id [19544,19566,21982,20024,20043,20537,20539,20437,20538,20438,20546,19672,20000,19870,20013,20014,20021,19685,20002,19565,19567,19546,19547,20020,20051,20054,20410,20547] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.792,0.361,0.902]
select surf_pocket15, protein and id [23938,23920,23939,23094,23096,23092,23117,23122,23120,23127,23428,23896,23895,23937,23437,23438,23686,23704,23692] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.651,0.278,0.702]
select surf_pocket16, protein and id [7716,7718,7388,7729,8153,7735,7736,7737,7740,8253,8255,8254,7586,7584,7281,7282,7264,7266,7267,9698,9700,7283,7401,8262,8126,7767,7770,8154,7759] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.886,0.361,0.902]
select surf_pocket17, protein and id [7704,7512,7513,8264,8270,7601,7603,8256,8272,7454,7479,7538,7415,7401,7582,7585,8255,7718,7719,8257,7488,7703] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.675]
select surf_pocket18, protein and id [13652,13619,14404,14406,14408,14410,14396,14397,13858,13541,14402,13628,13844,13555,13557,13722,13859,14395,14412,13741,13743] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.824]
select surf_pocket19, protein and id [5268,5472,5498,5513,5514,5515,5267,4670,5013,5014,5262,5280,5471,4668,5004,4696,4704,4692,4697,4698,5496,4693] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.604]
select surf_pocket20, protein and id [20801,20817,20818,20799,20571,20570,20816,20812,20802,20069,20071,20405,20404,20774,20094,20565,20073,20414,20581,20583,20775,20099,20104,20105] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.729]
select surf_pocket21, protein and id [2140,2141,2159,2351,2392,2350,2377,2393,2394,1691,1669,1670,2375,1981,1645,1647,1649,2405,2147,1675,1680] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.533]
select surf_pocket22, protein and id [1348,1261,1277,1563,1564,1578,1372,1463,2130,2128,1461,1579,2124,2116,2117,1445,2115,1339] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.639]
select surf_pocket23, protein and id [8533,7785,7787,7789,7809,7814,7815,7820,7810,8299,8491,8532,8534,8490,8517,8515,8130,8131,8121,8280,8281,8287] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.459]
select surf_pocket24, protein and id [11654,11655,11653,11666,10805,10836,10838,10843,10808,10810,10848,10854,11636,11638,10833,11611,11144,11420,11402,11407,11408,11610,11612,11153] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.545]
select surf_pocket25, protein and id [6400,6407,6418,6415,6416,6421,6448,6237,6451,6441,6474,6447,6422,6412,6414,6253,3882,3709,3875,3876,3884] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.388]
select surf_pocket26, protein and id [16950,16952,17794,17795,16948,17793,16976,17778,17751,17542,17294,17548,17560,17293,17284,17752,16973,16994,17776,16972,16977,16978] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.451]
select surf_pocket27, protein and id [15966,18728,18731,15999,16155,15986,16156,18533,16162,16164,15989,18721,16003,18754,18701,18702,18696,18687,18695,18698,18680,18692,18659,18517,18519,18537,18548] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.318]
select surf_pocket28, protein and id [20546,20554,20541,20548,19763,20550,20539,20556,20540,19685,20002,19885,19887,20003,19701,19772,19988,19866,19699,19796,19987] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.361]
select surf_pocket29, protein and id [272,93,271,304,307,95,105,109,270,256,263,267,268,274,10016,9846,9849,278,277,297] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.318,0.278]
select surf_pocket30, protein and id [12588,12591,12589,22299,22300,12584,12587,22110,22133,22130,12581,12408,12554,12556,12540,12551,12552,12555,12558,12561,12562,12614,12393,12397,12377,12389] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.451,0.361]
select surf_pocket31, protein and id [12277,12255,12256,12212,18778,18789,18780,18779,18794,12278,18796,18797,18798,18502,18503,18505,12215,19296,19290,19281,12214] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.388,0.278]
select surf_pocket32, protein and id [3699,3700,3701,3702,3826,3691,962,3804,3808,3801,1045,979,980,981,1041,1194,3716,3717,3779,1084] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.545,0.361]
select surf_pocket33, protein and id [15676,15677,16149,16169,16175,15668,15657,15667,15381,15382,15384,16160,21536,21515,18512,18511,18507,18540] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.459,0.278]
select surf_pocket34, protein and id [1151,4137,1113,1114,1152,955,1007,1136,964,965,966,1097,1101,1109] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.639,0.361]
select surf_pocket35, protein and id [10439,10440,10701,10702,10705,10703,10475,11378,11380,11382,11383,10511,10727,11372,10477,10509] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.533,0.278]
select surf_pocket36, protein and id [22123,22126,19618,22141,22115,22124,19404,19508,22203,19507,22250,22225,22228,22140] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.729,0.361]
select surf_pocket37, protein and id [10272,10276,10277,7258,7292,7291,7257,10267,10269,10275,7276,7099] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.604,0.278]
select surf_pocket38, protein and id [18513,12191,12189,12190,15668,15667,15676,15677,18512] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.824,0.361]
select surf_pocket39, protein and id [15971,15979,15982,16106,13367,13369,16059,13474,13266,15997,16088,13368,16084,16081] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.675,0.278]
select surf_pocket40, protein and id [22724,23011,23666,23667,22984,22985,22987,22723,22989,22793,22795,22761,23656,22986] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.886,0.902,0.361]
select surf_pocket41, protein and id [11110,11362,11492,8634,11111,11393,8633,11361] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.651,0.702,0.278]
select surf_pocket42, protein and id [7356,7358,9906,9907,9908,9750,7315,7373,7374,7376] 
set surface_color,  pcol42, surf_pocket42 
   
        
        deselect
        
        orient
        
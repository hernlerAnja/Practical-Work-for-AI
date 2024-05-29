
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
        
        load "data/7XGD.pdb", protein
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
 
        load "data/7XGD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [21215,21216,21217,19701,19732,21463,19761,19755,19756,20578,20580,5526,5527,5528,5529,5530,6050,19699,21246,21247,21257,20344,21234,21242,6021,6022,5500,6020,6023,5063,19696,19727,19731,21439,21296,21262,21260,20645,20647,20648,20649,20651,20619,20642,20643,20644,20559,20563,20572,20575,5058,5079,5083,20646,20652,5061,20719,20721,20377,20378,5059,18790,18791,18792,18793,18794,20574,19718,19721,18789,19198,19743,19281,19201,19202,19700,18807,20605] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [10153,10154,10155,10156,10971,10972,10980,10981,10984,10192,10193,8955,8961,8963,8962,10152,10163,10188,10191,10987,14209,14211,10985,10986,11000,14210,14611,10214,10974,10226,10211,10224,10225,13679,13680,10182,13662,13678,10183,11004,14241,10715,11002,13716,13254,13255,8985,9299] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [13621,14049,14051,13163,13165,13166,14044,13583,13584,10169,10170,10171,10172,10173,10174,10175,13566,10108,10136,10138,10137,10133,14046,13127,13124,13126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.345,0.702]
select surf_pocket4, protein and id [7669,7670,8505,8507,8508,8509,18222,18223,18224,18744,18716,7032,8552,17753,7927,8012,8013,7907,7908,18194,18196,17755,17757,7635,7634,8539,7636,8538,18715,18717] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.400,0.902]
select surf_pocket5, protein and id [5949,6132,6663,6157,6279,6662,6664,6433,6597,6680,6431,6727,6392,6390,5947,6312] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.282,0.278,0.702]
select surf_pocket6, protein and id [1144,486,1146,237,485,487,235,1007,184,542,182,236,908,946,1655,1086,1087,1141,1122,1123,1042] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.408,0.361,0.902]
select surf_pocket7, protein and id [48,49,50,54,55,58,59,3734,3735,4054,3899,4055,4016,4017,4029,4053,3944,3945,3946,3962,3947,3949,3950,3996,4009,4185,405,406,407,408,404,409,3799,1316,3750,3749] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.353,0.278,0.702]
select surf_pocket8, protein and id [14641,14642,14653,14654,14655,9612,15036,15037,15104,15105,15106,15108,9651,10674,9577,9595,11068,12426,9589,12425,14606,11003,11004,14236,14238,14239,10713,10714,14640,14643,10715,9565,10711,9561,9562,11035,11036,11037,11038,11039,11040,15107,11067,11034,14211,14255,9611] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.498,0.361,0.902]
select surf_pocket9, protein and id [12743,12744,12748,12749,12752,13099,13100,13098,13567,13101,13102,16443,16444,16428,16429,16493,16747,16749,16879,16717,16719,16641,16643,16644,16716,16659,12754,12753,16689,16690,12718,16591,16593,14010,16876] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.420,0.278,0.702]
select surf_pocket10, protein and id [22933,22931,22926,22927,22928,21690,21691,21663,21675,23699,23703,19937,19938,19939,19960,21649,19936,21647,21648,21650,22073,22892,22891,22898,22904,22900,22941,21692,22937,22959,22963,22960,22987,22984,22985,21062,22038,21061,19934,22039,21677,21678,21679] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.584,0.361,0.902]
select surf_pocket11, protein and id [1514,1917,968,22894,22895,22896,22922,23740,23742,21692,23712,23725,23726,23724,23709,23714,23721,23496,23497,22923,22932,22933,22931,22965,22892,22893,561,1022,22954,22951,22964,22966,1547,984,985,986,23455,23744,1542,1545] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.490,0.278,0.702]
select surf_pocket12, protein and id [3777,3779,3497,3499,1261,3771,3770,3774,358,372,25,371,1259,3384,3394,3408,3411,3420,3417,821,822] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.675,0.361,0.902]
select surf_pocket13, protein and id [16189,16473,13066,12717,12719,13052,16088,16078,16190,16192,16193,16191,13065,16465,16468,16471,16464,13955,16102,16111,16114,16115,13515,13953,13516,16105] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.557,0.278,0.702]
select surf_pocket14, protein and id [5554,5633,5634,5650,5552,5456,5457,5455,5599,5600,5601,5417,5418,5948,5706,4971,5008] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.761,0.361,0.902]
select surf_pocket15, protein and id [8955,8961,8963,10963,7231,8954,8962,10959,10941,10949,10950,7249,7250,7230,7228,7229,10188,10191,7252,10219,10247,10244,10245,10915,10220,10223,10187,10195,10197,10201,9299,9296,9297] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.627,0.278,0.702]
select surf_pocket16, protein and id [6463,21310,6003,6462,21311,6956,6410,6411,6412,6447,6902,6862,6904,20293,20295,21277,6931,6004,5915,5917,5918,5969,5970,5880,20294] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.851,0.361,0.902]
select surf_pocket17, protein and id [18698,19156,18662,8569,7528,7587,7586,19141,19102,19104,19105,19106,19556,19155,19157,19598,8602,8603,19650,18130,18609,18611,18612,18663,18664,19566,18574] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.698,0.278,0.702]
select surf_pocket18, protein and id [100,433,22910,22911,22912,22913,22914,22915,432,99,101,890,469,471,472,927,889,430,872,22848,1355,1357,1350,1352,22846,22872,22873,22876,22877,22878,22909] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.859]
select surf_pocket19, protein and id [1442,1239,1709,1762,1192,1441,1439,1838,1764,905,1428,2101,2149] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.635]
select surf_pocket20, protein and id [1373,1413,22845,1358,1496,1498,1459,22851,22855,22882,22884,1414,1858,1857,1859,22816,22819] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.773]
select surf_pocket21, protein and id [22564,2388,2408,22392,22490,25165,25166,22391,24365,24404,24405,24406,22489,22389,22488,24368,2412,2414,2411] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.565]
select surf_pocket22, protein and id [18111,17665,18004,18400,18642,18294,18644,18151,17702,18344,18345] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.682]
select surf_pocket23, protein and id [23453,23454,23455,23743,23744,1949,22305,23451,22301,22302,1947,1544,23741,23775,23776,23774,1542,1561,1948,23414,1961,2342,23777,23779,23780,1960,1959] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.498]
select surf_pocket24, protein and id [3256,3257,1725,2962,3070,3073,3259,3435,3026,3048,1727,1724,2127,3019,2961,2957,2960,2970,2944,2941,3243,1752,1749] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.596]
select surf_pocket25, protein and id [11664,11666,11665,12411,12425,11625,15082,9652,9748,15105,15106,9651,15102,9595,15086,15087,12422,11628,9649] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.427]
select surf_pocket26, protein and id [15651,15713,15742,15720,15615,14418,14419,15635,15638,14421,15953,15655,15656,15764,15767,15654,14443,15951,14446,15937,15950,14821] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.506]
select surf_pocket27, protein and id [13326,13725,13735,13816,13817,13819,13328,12878,13702,13236,13818,13321,13322,13341,13342,13323,13345,13804,13380,13383] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.361]
select surf_pocket28, protein and id [20595,20614,20636,20637,18267,20640,17855,17914,18280,18282,18312,18318,18322,17800,18235,17818,17832,17837,17819,17851,17861,17913,17865,18261,18277] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.420]
select surf_pocket29, protein and id [2247,2248,2206,22657,2283,2282,2286,2064,2095,2097,2209,2093,2089,2020,2285,2019,2021,2036,2037,22654,22656,22616,22617,2039,2040,2656] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.290]
select surf_pocket30, protein and id [5161,5573,5583,5586,5588,5618,5541,5567,5220,5125,5138,5157,5124,5143,7934,7936] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.388,0.361]
select surf_pocket31, protein and id [14552,14553,14190,14192,14107,14108,10078,14053,10111,10115,10141,10142,10144,10102,10105,14052,14068,14070,14072,10076,10079] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.337,0.278]
select surf_pocket32, protein and id [1948,23414,2412,2413,2414,1961,2342,2343,2410,2411,23808,22335,1960,22351,22352,22317,1959,25165,25166,22391,1949,22301] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.478,0.361]
select surf_pocket33, protein and id [22179,23527,23682,22180,23123,23554,22214,23529,22215,22216,22989] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.408,0.278]
select surf_pocket34, protein and id [14286,14287,14288,14289,14290,9632,9609,9624,9625,9628,9629,9630,14309,14310,14311,15538,15537,9717,15539] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.565,0.361]
select surf_pocket35, protein and id [14286,14287,14288,9632,9634,15129,9628,9629,9630,9631,9633,14285,14310,14698,14684,15119,15037,14652,14655,14656,9612] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.475,0.278]
select surf_pocket36, protein and id [14136,14574,14576,14794,14321,14322] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.655,0.361]
select surf_pocket37, protein and id [14942,14977,9917,14900,14980,14713,14714,14731,14733,14758,14789,14903,14783,9877,15350] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.545,0.278]
select surf_pocket38, protein and id [9473,9474,9475,9476,10789,10249,10787,10942,10814,9440,10382,9439] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.741,0.361]
select surf_pocket39, protein and id [8507,8737,8740,7053,7026,7029,7032,7033,7039,8731,8588,8554,8534,8549,8526] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.612,0.278]
select surf_pocket40, protein and id [4991,5029,5436,5476,5477,4990,5435,20749,20751,20760,20761,20775,20312,20776,20779,20780,20782,4681,20750,5475] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.831,0.361]
select surf_pocket41, protein and id [19294,19359,19084,19356,19354,19369,19421,19370,18641,19006,19086,19420] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.682,0.278]
select surf_pocket42, protein and id [13838,13835,13781,13780,14349] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.878,0.902,0.361]
select surf_pocket43, protein and id [2433,22564,2388,22392,22490,22489,22373,22530] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.651,0.702,0.278]
select surf_pocket44, protein and id [2749,2053,2444,2446,2442,22581,22583,22557,2458,2506,2507,2750] 
set surface_color,  pcol44, surf_pocket44 
   
        
        deselect
        
        orient
        
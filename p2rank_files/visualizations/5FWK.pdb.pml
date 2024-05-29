
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
        
        load "data/5FWK.pdb", protein
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
 
        load "data/5FWK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11960,11978,12206,12223,12225,11000,11001,11002,11003,11959,10999,11035,11043,11047,11091,11092,12027,11090,11671,12253,12266,12267,12268,12273,10938,10939,12289,12290,12296,10954,12023,11969,12019,12020,12025,15699,10775,10777,11867,12300,12302,12304,12325,11870,12498,12499,11729,11730,11728,11701,11703,11719,12990,11716,11717,13026,11853,11936,12269,11854,11857,11956,11966,11967,11852,11704,12573,11791,11792,11793,12013,10940,10989,15731,15733,15734,15726] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [599,600,601,602,691,1328,1390,1391,1392,1456,637,1823,1828,1578,1559,1565,1566,1612,589,588,549,1805,1808,1822,1888,1889,1895,1899,1868,1867,1872,1451,1452,1464,1453,1535,1852,1845,1865,1866,1829,1555,1558,537,538,539,5500,5501,2589,1327,1329,2097,553,2625,1901,1903,1469,610,598,646,1270,1318,1302,2170,634,689,1624,1626,1628,609,1924,1492,376,5467] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [6330,6376,6378,6333,7598,6380,7645,4688,4724,6332,19350,19351,22866,22867,22868,22878,22881,22899,22898,5182,6395,6392,14956,7646,7649,9094,19339,19345] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [17906,17315,17317,17908,17909,17859,17920,18165,19162,19201,18164,17863,17352,17353,17864,17977,17979,17956,18085,17922,19490,19093,19125,19126,19127,19128,19110,19112,18116,18120,18121,18148,18163,18084,18101,17923,17924,17925,17927,23002,19491,22955,22995,22999,23000,23015] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [22950,22951,22952,22985,19491,22953,19370,19372,22954,22984,19365,19388,19431,19392,19395,23851,23850,23852,23864,23865,23871,23872,23012,19429,4634,4657,4710,4686,22933,22935,19348,23922,23923,4635,4637,23889,23890,4636] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [16647,16652,21056,21058,16664,16641,16663,16640,16642,15396,15399,15433,16623,16624,16636,16639,16679,15400,16048,21000,20832,20843,20842,20867,20870,20846,15970,15971,20868,20869,20871,15995,15992,15988,15969] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [7933,8861,7932,8850,7692,8969,7677,7632,8930,7084,7085,7852,7889,7884,7888,7120,7121,8873,8874,8875,8876,8893,8895,8896,7691,7674,7688,7748,7724,7746] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [16694,17939,17943,17980,22966,16650,16692,24118,24119,24116,24077,24103,23973,16717,16718,21076,21077,23972,24037,24062,24059,20990,22982,23817,23818,22996,23001,23815,23960,23781,23766,23780,17976,17978,21013,16651,21012,21023,21075] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [10289,10293,20042,10274,20506,20567,20565,20040,19977,19979,20036,20037,20028,10288,10275,10276,10278,10349,10350,19980,10212,9861,20445,9810,9862,20521,20525,10213,20094,20442,20507,20508,20509,20510,20026,20027,20420,20421] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [8999,9000,7144,10013,10014,10015,7141,7142,7143,7207,20275,10043,19233,19234,19231,19232,10039,17373,9977,20209,9974,10021,10022,20245,20246,20247,20254,20206,20271,20272,20282,20285,20286,20333,10040,10044,10050,10101] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [4709,4657,4658,4708,4710,4760,4761,20922,23921,23922,23923,20937,20939,23891,20967,23889,23890,4635,20989,21000,21013,20988,22950,22983,22985,22979,20990,22982,23818,23851,23850,23852,22968,22970] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [6639,7515,6661,6765,6634,6663,7619,7569,7572,7570,7571,7555,7556,6194,6198,6181,6612,6312,6243] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [18146,17350,17516,17518,18147,18149,17437,17436,17439,20225,20236,20245,20234,20235,19033,19174,20259,20261,17333,17453,17335,17434,17449,17492,17493,17499,19024,10117,20238,19180,19186,19170,19187] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [15772,5488,5487,5457,5539,5540,5537,5455,15688,15719,15720,15754,15757,5470,10736,10750,15702,392,15769,15771,5523,5522] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [16544,16872,17782,17747,17801,17787,16844,16997,16893,16895,16475,16426,16428,16430,17803,17802,17804] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [11025,11077,11078,11079,13536,13537,11024,13550,13551,13552,13553,13524,12210,13538,13539,12175,12208,12209,12179,12180,12178,15207,15208,15179] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [15412,15413,15414,15415,15417,16509,16565,14916,14917,14950,22883,14898,14920,14922,15467,16508,16510,4736,4738,22895,14955,22892,15416,15036,15037,14937,14952,16564,9119] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [4975,4976,3137,3138,3149,3135,3136,677,732,730,731,3151,3152,1809,623,624,678,1777,676] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [7118,7130,7205,7206,7284,7286,7915,7917,8938,8942,10003,10004,8948,8949,10013,7221,9993,8929,8952,8928] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [16679,16661,16063,16065,16066,16678,16664,16662,16663,20832,21145,21146,21147,21149,21150,15995,15994,15990,15991,20846] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [17493,17499,19024,10117,10163,18987,18988,10118,10235,19011,20238,20227,20225,20234] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [22510,22496,22497,22552,22593,22494,22495,20801,22511,22512,22513,21320,21322,22450,21248,21246,21188,21190,21244,21268,21269,21270,21267,21340,22443,22446,22447,22448] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [14849,14850,14853,14854,14855,14271,14818,14781,14369,14367,15481,14782,15071,14338,15522,15523,14363,14366,14337,15525] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [1318,1302,1303,2170,2171,2172,689,1626,1628,776,775,777,691,1391,1392,1612] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [23101,19469,19471,19473,23849,23878,23879,23863,23099,23835,23149,23147,23094,23096,23167,23148,23168] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [9993,9994,9995,20349,7267,8755,8756,8779,7271,9943,20468,7284,7286,7257,7261] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [2081,2082,2311,2312,2433,2482,2641,2681,2682,2642,2504,2605,2115,2480,2477,2313] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [6274,6291,6533,5195,5254,5256,5220,5944,5943,6162,6161,5198,6273,6285,6286,6289,6221,6175,6173] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [4621,4622,4623,4586,4550,4107,4108,5292,5293,4134,4135,4137,4549] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [16564,22917,9117,9119,9120,17831,17875,17828,17829,17878,16484,16485,16559,17832,16487,9116,14922,14924,22895] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [19012,19013,19596,20110,20125,18644,20060,20058,20056,18645,20112] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        

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
        
        load "data/5FWP.pdb", protein
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
 
        load "data/5FWP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [12288,12289,12295,12299,12301,10999,11000,11002,10953,13025,11670,11046,12989,11715,11977,11959,11965,11966,12022,11089,11091,11968,12024,11703,12265,12266,12267,12272,12268,11935,12224,11958,12012,12018,11852,11856,11728,11729,11727,11790,11791,11717,11718,12570,12572,12571,11792,11869,12497,12498,11716,11866,11745,11037,12207,12209,11001,10998,15698,15725,15730,15732,10774,10915,15757,10937,10938,10939,10776,12222,12252,15733,12249,15756] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [1901,1903,1463,1469,1327,1328,1329,1391,1390,1392,1453,1456,1555,1565,1566,1612,1845,1578,1828,1558,1559,538,549,599,600,601,602,1805,1822,5500,1823,2098,2097,2625,1868,1924,1895,1899,1466,1452,1464,1492,1849,1865,1866,1867,1872,1535,375,376,1888,1889,1852,5467,597,598,609,610,634,646,691,1318,2170,2171,2172,777,2201,1624,1626,1628,2589,1270,1267,1316,1235,353] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [24997,24998,24999,24955,24994,25009,25012,25015,24956,24958,24974,25028,14955,14969,14953,4724,6332,6330,6333,7600,6378,6379,6380,25029,25030,4688,19349,19350,6392,6394,6395,5182,5192,5193,5196,24959,9043,9044,9090,9103,9091,9094,7694,9092,19338,7646,7648,7649,7645,7647,9107,9104] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [25062,4657,4708,4709,4710,25064,4686,25066,19347,26053,26054,20937,20965,26052,4658,4760,4761,20920,20935,20938,26021,25982,4634,4635,4636,4637,26003,26020,26022,20987,20998,20986,25078,25081,25116,25082,25083,25084,25085,19369,19371,25099,25101,25045,25110,20988,25949,19490,19428,19429,19430,25995,25996,19364,19391,25115,25983,25981,26002] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [25133,19092,18164,19126,19127,17862,19199,19200,19161,19109,19111,25146,19489,19124,19125,17923,17926,25086,25131,25130,25129,17905,17907,17908,17919,17316,17352,17351,17955,18084,17921,18163,18147,18083,18100,17314,17315,18115,18119,18120] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [15480,14841,14848,14849,14852,14853,14854,14817,14781,14780,14366,14368,14862,14868,14870,24513,24516,24517,14367,14379,14822,14381,24447,15070,15071,15522,14991,14888,14992,23572,14336,14350,14362,14365,14373,15521,14270,14337,15524,23570,23609,15056,24470,24471] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [16870,16865,17746,16412,16843,16885,16892,16894,16410,16429,16995,17801,17802,17803,16543,17800,17781,17786,16474,16425,16427,17397,17787,17398,16889,16890,16891,16893,17399] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [15970,20866,20867,20868,20869,20841,20844,21054,20840,15991,15994,15987,15969,16047,15395,15399,15968,16635,16638,16639,16640,16641,16646,16662,16663,16651,16661,16622,15398,15432,16621,16623,16678,20865,21056] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [20244,20245,20246,17438,10043,10044,10040,10022,9978,20205,20253,20271,20274,20275,20281,20208,20285,20284,20332,9974,8999,9000,10014,10015,19229,19230,19231,19233,17372,19232,7141,7142,7143,7144,10013] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [15768,15769,15771,15753,15718,10749,10787,15719,10791,15688,15701,5522,5540,5537,5539,5456,5487,5488,5470,10735,5457,5455] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [7632,7691,7692,7932,8969,7931,7933,8896,8873,8878,8893,8861,7674,7677,7852,7085,7888,7884,7120,7889,8930,7688,7748,7746,7724] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [6639,7515,6634,6661,6663,6201,7570,7572,7619,7555,7166,7168,6243,6312,6194,6198,6181,6612,6764] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [25132,25113,17979,20988,25946,25948,25949,25097,26091,26103,25897,25912,25162,26104,25911,25942,25925,25926,17942,17943,21074,21075,21010,21011,21021] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [4974,4975,4976,3135,3137,3138,3136,677,730,731,732,1746,3149,3151,3152,1809,623,624,3122,678,1777] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [23440,23441,24182,24116,24118,24162,24831,24830,24633,24164,24872] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [15206,15207,13522,13535,13536,13537,13538,15178,15229,13523,12178,11076,11077,11078,13551,13552,13549,13550,11036,12207,11024,11023,12177,12174,12187,12202,12208,12186] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [15412,16624,15413,16508,16564,14919,14916,14897,14899,14914,14900,15035,15036,15414,15415,15416,14936,4736,4738,16625,16627,25023,25026,25014,4724,14954,14949,16563,9119,14921,25043,25048] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [9240,9241,24812,24813,24814,24809,24810,24857,24306,24292,9236,9238,24610,24611,24612,24305,24234,9259,24811] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [10289,10293,20504,20505,20041,10349,19978,20035,20036,20039,20564,20566,10273,10274,10275,10277,20093,20508,20509,20506,20507,20026,20027,20485,20486,20025] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [15103,15104,14250,14320,15105,14306,14315,14317,14248,15148,13410,13484,13411,13413,13483,13940,13939,13505,13506,14354] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [17515,17517,20224,20233,18146,18148,19185,19186,19173,20235,20244,17438,17433,17448,17491,17492,17452,17349,17435,17436] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [10272,10274,10275,10276,10277,10335,9747,20504,20505,20580,9862,9804,9805,9808,9810,9811,20524,20520,20506] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [1821,1822,5501,5502,5435,5437,5431,4933,5401,1828,1855,1853,5434,1808,4950,4951,5374] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [23495,24653,24649,24651,24976,24978,14864,14865,14866,14869,23494,23496,24952,24595,9173,9174,9175,24596,24591,14871,9140,9214] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [10004,7118,7915,7917,7284,7286,7287,8952,10013,7130,7206,7103,7260,7261,7205,8929,8938,8948,8942,8928,8839,10003,9993] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [9348,9349,7955,7954,8879,8863,8577,24698,24697,24731,24752,24710,24711] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [25421,25232,25234,25420,19468,19470,25980,19472,25994,19471,25966,25230,25279,25299,25278,25280,25227,25298,26010] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [4586,4623,4549,4621,4622,4135,4137,4107,5292,5293,4108,4134,4550] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
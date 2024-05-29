
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
        
        load "data/8GFT.pdb", protein
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
 
        load "data/8GFT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1469,1468,1470,1452,1453,1456,1327,1328,1329,1464,1389,1390,1391,1392,1889,601,553,600,602,1895,1899,1900,1901,1902,1903,2097,1559,1577,1535,1555,1558,1565,1566,1568,1572,1612,538,1865,1866,1888,1867,1872,5500,1822,1823,1824,1845,1849,5501,5502,1828,1852,376,537,5467,1868,1925,634,646,689,690,691,1301,1302,1624,1626,637,599,609,597,598,1805,2625,1270,1269,2587,2589,1318,2588] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [12279,12280,12236,12257,12277,12278,11012,11013,11014,12307,12311,10961,10965,11011,11058,11101,11989,11103,13000,11713,11714,11730,11727,11728,11647,13037,13001,11682,12999,11967,11977,12034,11978,11980,12030,12031,12036,12022,12024,11947,11864,11882,12337,11865,11867,11739,11740,11741,11868,11803,11729,11804,12313,12315,12509,11010,11046,11009,11025,12234,10950,11001,12220,12235,12240,12261,12264,15714,15710,15742,15745,12300,10788,12301,10949,12336] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [23376,23377,23378,23379,23380,23381,23382,23299,23300,24184,24187,23832,23812,23814,23833,23319,23315,23583,23584,23647,23648,23585,23588,23590,23697,23246,23241,23242,23243,23301,24235,24183,23514,24631,23513,23608,23609,24546,24564,24628,24629,23545,24567,23543,23546,23716,24252,24307,23693,23694,23773,24251,23173,23695,23698,23170,23772,23186,23187,23192,24306] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [19121,19123,25358,17991,25357,25359,19104,18176,18175,19149,19138,19139,19144,19167,17874,19172,19173,19210,19212,19209,18127,18174,18131,18132,17989,17931,17934,17917,17919,17870,17326,18095,18096,17364,17327,17328,17363,19136,19137,17935,17936,17937,17938,19502] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [21041,16634,16662,21061,21065,16632,25321,25322,25323,25324,25325,25326,25327,25328,21039,21040,21042,26305,26217,26218,26220,26221,25320,26216,26236,26304,26307,26308,4656,4657,4658,26274,26275,26276,21047,21051,21052,21053,4723,4724,25356,17954,26366,26367,26368,26369,26370,17955,16617,17953,16705,25369,25343,25340,26177,26178,26180,26179] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [9199,14882,14884,25131,24422,25129,25130,9163,9043,25176,25211,9116,9093,24612,24614,24666,25177,25178,25173,25145,9213,9214,9194,9196,9197,9198,9208,9257,9235,9135,9160,9238,9240,8911] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [8968,7932,7933,25165,8878,7083,7084,7085,7884,7629,7628,7676,7852,7627,7674,7687,7688,7692,25164,7693,7694,8930,7931,8924,8929,8966,8896,8901,8906,7889] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [25065,24866,24808,24805,24807,24218,24267,24270,24868,24286,24280,24281,24283,24284,24214,24265,25149,25098,25101,25061,25079,25080,24343,25062,25063,25023,25102,25103,25114,24789,24787,24684,24686,24687,24760,24788,24213,24230,24231,24236,24216] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [15980,15979,16059,15410,15407,15411,15420,15981,20897,20898,15999,16002,16005,20894,21108,21110,21111,16647,16651,16652,16653,16674,16690,16006,15442,15444,16634,16635,16638,20923,20921,15982,20922,20919,20920] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [24911,23973,24968,24970,24271,23851,24203,23829,24865,24972,24093,23908,23909,24089,24092,24139,24141,24142,24202,24861,24919,24920,24923,24154,24157,24153,24091] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [14897,14900,14907,14912,15478,14864,14865,24551,24553,24525,15534,14378,15533,14395,14397,14374,14860,14861,14853,15490,15492,14878,14874,14829,14380,14379,14396,14830,24526,14792,15004,15069,15062,15066,15077,15080,15535,15536,14348,14362,14349,15003,15046,14831] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [32763,33161,33162,33163,33164,33097,33098,33115,33116,33157,33099,32169,32719,33048,33050,33119,33120,32151,32393,32692,33185,32842,32318,32319] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [34989,32815,32816,32183,32186,32187,34949,34950,34948,34966,32197,32198,32200,34601,34603,34598,34619,32666,31691,33967,32745,32746,32678] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [25301,25302,19381,19380,26237,19442,19402,26233,26234,26235,26236,25322,25324,25299,4657,4658,4634,4708,4710,4709,4636,4635,4637,19403,25340,19502,19154,19383,19500,25316,25317,25318,25303,25304] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [26392,26423,26424,27140,27143,27145,27196,27198,27199,27142,26387,26393,26439,26441,27032,27095,26425,26855,27050,27052,27053,27272,27273,26422,26436,26438,26481,26556,26796,26798] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [6612,6764,6765,7570,7571,7572,6312,6639,6661,6663,7569,7564,7555,7550,7619,7515,6179,6181,6243,6198] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [355,356,10768,10679,10632,1878,220] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [9199,14875,14878,14880,14882,24421,14874,24460,24462,14853,24526,24613,24614,24524,24525,24532,24533,9186,9187,24461] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [16555,17814,17812,17813,17815,17811,17862,17795,16437,16440,16424,16418,16855,16877,17758,17008,16897,16903,16905,17793,17798,16497,16439,16486] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [20593,20594,20598,10249,10271,10272,10275,10335,10274,20591,20592,10276,10277,20536,20517,20532,9810,10255,9799,10251,9862,9804,9795,9794,9796,10186,10187] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [30869,30813,30659,30734,32404,31203,30797] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [624,678,3136,3152,1777,4976,676,677,3135,4974,4975,4972,1807,1809,4947] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [6643,7540,7677,7665,7728,6806,6642,6807] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [18160,18159,19185,20247,20256,17450,17529,20258,17387,19192,19196,19191,19195,19198,17373,17379,17449,17363,17361,17448] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [15762,15765,15260,15261,15274,13448,13449,13471,15254,10817,10804,15766,10866,10868,10927,15314] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [22604,22562,22645,21372,22499,22546,22548,22500,22502,20853,21299,21296,21317,21320,21321,21241] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [23952,23953,24075,23908,24142,24143,23406,23833,23320,23890,23891,23892,24076,23827,23829] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [10349,20577,20579,20591,20592,10272,10275,10335,10274,10333,10276,20517,20518] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [19008,19023,19024,18656,20136,20137,20121,20123,18655,19640,19795,19749] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [7103,7118,7915,7916,7917,7121,8952,8938,8948,8928,10003,10004,8942,7284,7286,9993,7260,7261,7207,7202] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [32270,32970,32971,32337,32338,33105,32289,32286,31038] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [19483,19484,25378,25461,25462,25464,25563,25564,25373,25377,25533,25602,25604,26258,26197,26199] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [35411,35412,35414,35415,35416,32227,32228,35396,35398,34929,34943,34962,32199,32200,31716,31718,32196,31719] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [31741,31755,31771,31772,31775,31777,31758,31829,30941,30943,30960,32244,30942,32241,32243,31742] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [31119,31142,30523,30632,30635,30447,31184,30444,30493,30656,30557,30524,31186] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [8780,9878,9880,9363,9364,9826,8413,9893,8781,9505] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [4089,4874,4917,3085,3086,3087,3105,4916,3032] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        

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
        
        load "data/7QID.pdb", protein
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
 
        load "data/7QID.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [19193,19251,19038,19040,19061,19064,19427,18762,19063,18783,18793,18789,18794,18779,18782,19137,19153,19152,19479,19457,19510,19514,19093,19094,19099,10562,10563,19098,19105,19139,19483,19573,19570,19572,19425,19426,19956,19919,19921,19526,19625,19626,19623,20084,20129,20393,20392,20044,20000,20448,19252,19007,19008,19249,18763,19296,19689,19337,19385,19386,20128] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [13889,13874,13894,13871,13884,12394,12389,12390,12391,12392,12805,12822,12823,13026,13407,12848,13421,12545,13274,12546,13862,13863,13237,12541,12542,13227,12543,12558,12511,12512,13420,13888,13848,13392,13391,13324,13393,12430,12453,12454,12455,13388,13390,13387,13389,13741,12784,13054,12785,12788,12790,13898,12393,12749,12581,12583,12584,12579,13053] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.486,0.902]
select surf_pocket3, protein and id [5517,6008,6009,6010,6011,5476,5841,6338,5662,5710,5711,5713,5779,6581,6582,6194,6135,6195,6701,6702,6703,6705,6766,6218,6477,6435,6371,6434,6765,6046] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.345,0.702]
select surf_pocket4, protein and id [14889,15588,15037,15040,15041,14207,15389,15601,15575,15600,14887,14427,14429,14389,14088,14089,14182,14164,14177,14165,14888,15113,15094,15115,14851,14850,15602,14390,14950,14996,14526,14609,14605,14607,14147,14163,14466,14428,14132,14133,14468] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.400,0.902]
select surf_pocket5, protein and id [16085,16206,15769,15770,15771,16086,16001,16020,16013,15992,15387,15390,15601,15995,16726,16729,15575,15209,15656,15706,14850,15376,16084,16073,16075,15948,15812,15946,15949,15952] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.282,0.278,0.702]
select surf_pocket6, protein and id [417,416,863,865,43,44,46,48,42,63,405,430,901,3495,3497,3815,3817,3818,3819,102,3529,3541,442,3745,3747,101,902,1317,1319,875,876,1320,3498,874,3499,3411,3412,3421,1292,3415,3761,3793,3762,3791,3424] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.408,0.361,0.902]
select surf_pocket7, protein and id [8155,8158,8174,8123,8388,8389,8390,29743,8446,29744,29807,29565,29502,29508,29509,8408,29855,29851,29852,29854,8407,8409,29925,8333,8373,8374,29907,7369,7370,7338,29905,29904,8405,8439,8443,29655,29658,29659,29660,29661,29662,29664,10646,29654,8145,10599,29430,29431,29486,29484,29493,10645,29475,29477,10687] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.353,0.278,0.702]
select surf_pocket8, protein and id [21824,21825,21826,22546,21827,21828,22545,22821,22822,22823,20510,20558,20514,20515,20982,20991,21051,21000,21003,21822,21823,21835,21836,21837,21838,21820,21821,20088,20089,20060,20472,20492,21050,20544,20142,20145,20146,20147,20148,20153,20556,20163,20165,20555,20557,21860,21862,22578,22580,20955,20973,21643,21645,21646,21861,22010,21606,21607] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.498,0.361,0.902]
select surf_pocket9, protein and id [1900,1675,1902,1524,1700,2820,1754,1488,1486,1489,1139,2057,2038,2085,2104,2105,2081,2082,2084,2091,2101,2296,1859,1860,1861,1796] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.420,0.278,0.702]
select surf_pocket10, protein and id [17700,17701,17707,14353,14355,13958,17726,17727,17728,14354,14011,14326,13956,17322,17331,14776,17308,14766,13957,13959,13955,17334,17403,17406,13914,17729,13921,14777,14351,14352,14802] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.584,0.361,0.902]
select surf_pocket11, protein and id [20621,20279,20325,20348,20350,20280,20128,20248,20619,20620,19751,19750,19904,19915,20390,20392,19920,19918,20387,20104,20129,19917,19919,19921,19916] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.490,0.278,0.702]
select surf_pocket12, protein and id [7020,7026,7036,7006,6610,6611,7092,8864,7952,8061,7027,7729,7691,8660,8681,8883,7730,7911,8629,8662,8663,8664,8661,7037,7038,7039,7053,7942,6975,7690,8698,8751,6968,6971,6973] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.675,0.361,0.902]
select surf_pocket13, protein and id [2276,1879,2277,2278,24588,24589,24590,24591,24593,5189,5157,1423,1424,1425,1426,1427,5153,5160,4859,4869,4879,2275,1460,1444,4884,5229,1443,1442,1437,1438,1441,4885,24551,5136,5162,24547,24654,24653,5182,24536,24539,5188] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.557,0.278,0.702]
select surf_pocket14, protein and id [19544,21844,19521,19539,19545,21843,21845,21811,19602,19604,19527,19603,19605,19606,21747,21748,19213,19214,21685,21779,19126,10492,19513,19166,19163,21959,21960,21868,21874,10450,10453,10454,10455,10475,21879] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.761,0.361,0.902]
select surf_pocket15, protein and id [22304,22306,22322,22323,22324,28742,29162,29089,29090,29097,29091,22054,28766,28767,28728,28738,28722,28801,29103,29043,22325,22318,22290] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.627,0.278,0.702]
select surf_pocket16, protein and id [26644,26671,26672,23683,23684,27451,23964,23992,23928,23929,23930,24036,24037,23888,23993,23738,23889,25706,26085,26086,27450,23618,25707,25712,23951,26061,26062] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.851,0.361,0.902]
select surf_pocket17, protein and id [22344,22357,22379,21665,21664,21666,21995,21996,10420,10413,10317,28915,28931,28932,28897,28899,28894,10414,24305,24306,24308,22024,22026,24294,24300,28912] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.698,0.278,0.702]
select surf_pocket18, protein and id [17656,17658,17634,17654,17619,17761,14355,17760,18237,18240,18241,18130,18242,17620,17882,17819,17820,18219,15263,18132,18133] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.859]
select surf_pocket19, protein and id [5151,4849,5154,5283,5284,4852,5341,5153,5129,5130,5128,5150,5184,5223,5242,5616,5617] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.635]
select surf_pocket20, protein and id [22009,22010,21606,21945,21897,21933,21895,22004,22007,21926,21645,21646,21860,21862,21859,21946,21948,21923,21913,21914,24360,24361,24453,22042,21924,21925,24306,24307,24308,24359] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.773]
select surf_pocket21, protein and id [950,1214,988,519,987,1139,1140,1701,1094,1193,1569] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.565]
select surf_pocket22, protein and id [9661,9662,9702,11800,9663,9664,9665,11714,11715,11717,9683,9684,9698,9699,11253,11252,11255,11220,11777,12685,12686] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.682]
select surf_pocket23, protein and id [11610,9516,9402,9550,9551,9552,9382,9128,9421,9359,11868,9360,9362,9365,11869,9549,9381] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.498]
select surf_pocket24, protein and id [21606,22609,22612,21607,22665,22667,22627,22630,22633,24453,22043,22615,24452,24518,24519] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.596]
select surf_pocket25, protein and id [14056,14393,14180,14057,14241,14208,14257,14258,14259,14344,14184,14089,14305,14026,14035] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.427]
select surf_pocket26, protein and id [15485,15486,14481,14965,14967,10672,10671,10673,14479,14484,15838,14922,14926,14927,15451,14923,14945,15464,15465,29362] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.506]
select surf_pocket27, protein and id [28313,28316,28295,28309,28359,28356,28297,581,583,543,1023,584,1068,1024,1025,1026,545,548,544] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.361]
select surf_pocket28, protein and id [22681,22682,21528,21530,21473,21474,27911,21458,22768,22769,22766,21529,24634,24635,27912,24632,24705] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.420]
select surf_pocket29, protein and id [26429,26430,26415,27244,27194,27312,26465,26466,27753,27784,27755,26464,27341] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.290]
select surf_pocket30, protein and id [15435,15437,15455,14906,14907,14908,14909,14910,14911,15327,15328,14869,14870,15307,15308] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.388,0.361]
select surf_pocket31, protein and id [21488,22124,22169,22125,22155,21421,21423,21424,21419,21420,21422,22218,22192,22193,22194,22214,22180,22181,21382,21383,21384,21385,22123,21426] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.337,0.278]
select surf_pocket32, protein and id [4860,24655,24653,24652,24714,1425,1427,4859,4872,4858,4873,4914,24715,24716,24718] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.478,0.361]
select surf_pocket33, protein and id [8427,8426,7437,8382,7435,7707,8616,7386,7388,8380,8381] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.408,0.278]
select surf_pocket34, protein and id [23766,23783,23786,23793,23794,23798,26931,26946,26958,23799,23800,26740,23787,26961,26962,26791,23768,26925] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.565,0.361]
select surf_pocket35, protein and id [1804,1782,3226,1805,3798,3424,3434,3799,1320,3412,1290,1291,1292] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.475,0.278]
select surf_pocket36, protein and id [2714,2109,2111,2112,2292,2289,2293,2294,2295,2296,2057,2256,2257,2258,2261,2692] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.655,0.361]
select surf_pocket37, protein and id [5941,5949,5978,6920,5976,6030,6031,6059,6456,6457,5930] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.545,0.278]
select surf_pocket38, protein and id [969,24785,24786,503,24734,24737,1403,1405,1407,24787,932,931,1381] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.741,0.361]
select surf_pocket39, protein and id [28666,28672,28979,29041,28677,28976,29002,29003,29005,28620,29044,28993,28994,29327] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.612,0.278]
select surf_pocket40, protein and id [24822,24704,24756,27855,28280] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.831,0.361]
select surf_pocket41, protein and id [2921,2922,2924,1764,3074,3076,3083,3084,3099,3096,3095,3251,3252] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.682,0.278]
select surf_pocket42, protein and id [26660,27002,27003,23705,23706,26573,26544,26568,26656,26661,26663,26643] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.878,0.902,0.361]
select surf_pocket43, protein and id [1009,529,546,547,548,24821] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.651,0.702,0.278]
select surf_pocket44, protein and id [17692,17347,17705,17344,17345,17136,15731,15220,15714,15713] 
set surface_color,  pcol44, surf_pocket44 
   
        
        deselect
        
        orient
        
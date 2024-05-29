
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
        
        load "data/1A81.pdb", protein
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
 
        load "data/1A81.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [914,1126,1157,1158,1159,478,5,479,16,17,18,278,279,65,280,64,2,6,343,344,1,277,284,333,326,327,328,329,324,873,1857,88,1823,1834,290,906,879,884,905,883,912,913,1152,1155,1156,1154,1181,1183,1185,1189,937,1820] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [9966,9030,9965,9028,9301,9302,9304,9029,9272,9305,9303,9026,9027,9962,9021,8465,8470,9973,9976,8423,8424,8425,8426,8999,8163,9999,8430,8436,8234,8455,8472,8473,8474,8475,8479,9332,9335,9300,9298,9299,9306,9051] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [10609,12185,11811,10606,10618,10619,10620,10621,10631,10767,10768,10769,10607,10632,12159,12177,12184,12176,12178,12179,12181,11905,11907,11826,12160,12162,11935,10611,12150,12151,12155,12158,11807,12175] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.329,0.702]
select surf_pocket4, protein and id [3058,2498,2493,2500,2497,3047,3049,4005,4008,3056,3057,2501,2502,2507,2483,2452,2453,2262,2458,2462,2464,3326,3329,3332,3363,3079,3994,3997,3355,3357,3327,3328] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.373,0.902]
select surf_pocket5, protein and id [9910,8448,8449,8450,8451,9929,8436,10006,10008,10010,9907,10287,10288,10261,10262,10282,10280,8250,10038,10263] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.310,0.278,0.702]
select surf_pocket6, protein and id [4449,5970,5995,5941,5943,5842,5993,5994,6186,6220,5843,5981,4470,5982,6198,6196,6191,6195,4639,5841] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.451,0.361,0.902]
select surf_pocket7, protein and id [3627,4144,4160,4161,3432,3434,3629,3035,3989,4022,3074,3417,3418,3424,3046,3048,4029,4060,4058,4059] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.392,0.278,0.702]
select surf_pocket8, protein and id [1768,1868,1766,291,1866,290,108,2123,2145,102,104,293,2146,304,122] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.553,0.361,0.902]
select surf_pocket9, protein and id [6886,6855,6887,7032,6291,6292,7012,6492,6992,7011,6914,6915,6854,6884,6299,6301,6303,6852] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.471,0.278,0.702]
select surf_pocket10, protein and id [30,52,54,36,603,606,637,638,635,763,743,764,735,665,630,666,762,241,243,605] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.655,0.361,0.902]
select surf_pocket11, protein and id [1987,1886,1970,1455,1258,1260,1848,1250,1251,1244,1243,1986,863,872,1850,861,900,862,1885] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.549,0.278,0.702]
select surf_pocket12, protein and id [8093,8094,6654,6659,7877,8071,8095,8080,8089,8092,6662,11428,11434,11440,11455,11456,6394,6360,6372,6393,6395,6361,11444] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.757,0.361,0.902]
select surf_pocket13, protein and id [11873,10625,10635,10642,10643,10640,11197,10593,10600,10604,10595,11198,11195,10594,10596,11858,11860,11862,10404,11895,11897,11869,11859,11896] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.627,0.278,0.702]
select surf_pocket14, protein and id [2801,2799,2803,2839,2780,2809,2804,2810,2811,2812,2417,2936,2937,2938,2224,2226] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.859,0.361,0.902]
select surf_pocket15, protein and id [10027,10028,10112,9993,9996,9997,9957,9020,9008,9009,9015,9018,9007,9990,9992,9601,9397,9404,10128,9406,9389,9390,9046] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.690]
select surf_pocket16, protein and id [2627,4293,4306,4311,4312,4314,4310,4309,4305,2479,3946,2489,2490,3947,3948,3949,3951,2644,3935,3941,3943,3933] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.839]
select surf_pocket17, protein and id [8196,8198,8189,8752,8784,8909,8783,8200,8773,8389,8908,8910,8889,8781,8811,8812,8771,8775] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.612]
select surf_pocket18, protein and id [8291,8292,8559,8578,7361,7362,7373,7389,8268,10263,10264,10265,8257,10259,10269,10266] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.733]
select surf_pocket19, protein and id [8598,8616,8597,8599,10261,10282,10284,10274,10278,10279,10280,10283,10273,9910,8462,8450,8451,8460,8461,9907,9915] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.533]
select surf_pocket20, protein and id [7838,7840,6542,6541,6552,6553,6554,8117,8118,8110,8112,8091,7892,7737,7740,7741] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.631]
select surf_pocket21, protein and id [2140,2142,305,2137,2138,2139,2141,314,316,453,2119,2132,2136,2135,1769,1772,1767,1768,1766] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.451]
select surf_pocket22, protein and id [1041,1024,1038,8017,8018,947,946,1072,982,1063,7468,7465,7472,7475,1039,7482,7480] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.529]
select surf_pocket23, protein and id [1391,1401,2319,2320,1385,1412,1413,1386,1387,1397,4291,4294,2285,2606,2584,2587,2286] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.373]
select surf_pocket24, protein and id [10559,10943,10368,10370,10921,10922,10945,10946,10982,10951,10953,10954,10981,10941,10942,11079,11078] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.427]
select surf_pocket25, protein and id [9543,9537,10729,10461,10462,9559,9531,9547,12156,12163,12166,10426,10427,10428,10748,12161,10439,12160] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.294]
select surf_pocket26, protein and id [8107,8108,7746,7747,7745,8123,8104,7741,7737,7740,8110,8112,8109,6565,6702,6719,6554] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.392,0.361]
select surf_pocket27, protein and id [5847,5848,4664,4653,4663,4801,6211,6212,6214,6215,6213,5843] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.345,0.278]
select surf_pocket28, protein and id [4493,4494,3558,3559,3560,3565,3569,3571,3575,4755,4758,4761,4753,3587,4458,4459,4468,4471,6198,4780,6192,6199,6195,6202,6196,6197] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.498,0.361]
select surf_pocket29, protein and id [7884,7885,7876,7880,7877,8071,8095,7929,8094,11455,11456,7862,7872,11457,11458,8073] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.427,0.278]
select surf_pocket30, protein and id [2176,2191,2516,2518,2501,2502,2503,2507,2454,2451,2452,2453,3058,2500,3056,3057,2238,2239,2517] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.600,0.361]
select surf_pocket31, protein and id [8136,6946,6908,6831,6832,6802,6808,6896,6947,6784,6787,6791] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.506,0.278]
select surf_pocket32, protein and id [1193,1218,1541,1543,1518,1801,1191,1194,1196,1798,1725,1792,1684] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.702,0.361]
select surf_pocket33, protein and id [4983,4985,4986,4953,4975,4977,4978,4973,4400,4402,4383,5013,5014,5110,5111,4591,4954,4384] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.584,0.278]
select surf_pocket34, protein and id [410,413,405,146,111,5459,5460,5466,145,5472,5461] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.804,0.361]
select surf_pocket35, protein and id [5263,5885,5266,5268,5292,5293,5618,5759,5879,5800,5876,5593,5867] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.663,0.278]
select surf_pocket36, protein and id [123,5460,145,2122,146,1905,1907,2097,2099,2101,2098,5488] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.894,0.902,0.361]
select surf_pocket37, protein and id [2523,4320,2626,2625,2460,2478] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.655,0.702,0.278]
select surf_pocket38, protein and id [4092,4093,4081,4293,3941,3942,4042] 
set surface_color,  pcol38, surf_pocket38 
   
        
        deselect
        
        orient
        
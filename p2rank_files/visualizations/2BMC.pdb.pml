
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
        
        load "data/2BMC.pdb", protein
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
 
        load "data/2BMC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6482,6494,6496,6497,7423,6800,7565,6658,6487,6491,6700,6657,6767,6769,6642,6643,7573,6475,6478,6501,7473,7561,7555,7558,7571,6733,6734,6732,6764,6762,6801] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [2264,2419,2420,2259,3335,3342,2508,2509,2273,2477,2511,2268,2269,2271,2539,2577,2578,3346,3348,2434,2544,2546] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [1124,1206,1112,1207,293,294,167,561,702,755,1141,1140,728,165,166,110,277,719,707,725,114,106,113,107,108,119,125,126,152] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [10724,10865,10678,10685,10687,10739,11712,11713,10866,11778,11779,11133,11300,11297,10679,10680,10698,11696,11781,10737,10738,10682,11274,10849,11291,11279,10864,10697,10686,10688,11327,11684] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [6457,6514,6515,6459,6626,7056,6456,6462,7490,7489,7074,7104,6460,7077,7094,7095,6516,6642,6643,7051,7049,6467,6468,6474,6475,6501,7473,7461,7555,7556,6910] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [12215,12217,9801,9802,9803,12251,12252,12451,12452,12453,12250,12450,12455,12458,12460,11920,9799,11916,11913,12459,12461,12468,11951,11953,9824,9831,9834,9836,10330,10350,10351,10333,10335,10336,9798,11882,11883,11891,11917,11884,10135,10099,10100,11915,4091,12224,12261,12258,12220,10356,10357,9835,4036,10342,10343,10344,12226,4032,4090] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [1124,1206,1209,1212,1216,308,309,293,294,1220,1222,383,384,385,147,351,450,451,452,420,418,129,138,142,145,149,126,152] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [3266,3333,3265,3238,3245,2881,2232,2239,2240,2241,2291,2292,2293,2687,2833,2828,2403,2233,2234,2236,3267,2854,2851,2845,2278,2419,2420,2244,2245,2251,2252,3332,3250] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [9016,8732,9157,9660,9594,9595,9661,9662,9567,9574,9210,9183,9596,9201,9174,9180,9679,8748,8749,9579,8620,8622,8569,8570,8574,8581,8607,8621,8563,8565,8561,8562,8567,8568] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [4545,4546,5458,4813,4959,5392,4365,4977,4980,4359,5372,5459,5391,5364,5007,5393,4998,5371,5376,4544,4417,4419,4366,4418,4529,4360,4362,4971,4973,4954,4952] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [4545,4546,5474,5458,4378,4381,4390,4635,4636,4637,4397,4399,4670,4672,4703,5461,5376,4665,5468,4603,4560,4394,4561,4401,4404,4938] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [9675,9677,8763,9141,9664,9671,8748,8749,9579,8868,8840,8600,8602,8873,8906,8907,8875,8806,8597,8593,8764,8837,8838,8839] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [10719,10717,10701,10710,10721,11696,11784,11781,11788,11794,10985,11023,11024,10724,10866,11778,10957,10955,10880,10881,10992,10923,10993,10990,10987] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [8227,8229,8230,8245,8238,5562,5563,5564,5568,5596,5598,5599,7696,5571,7693,7695,8244,7728,7994,8029,7993,5631,5633,5619,5595,6132,6139,6140,6133,6154,6138,6147,6148,7669,6127,5932,7694,7697] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [1689,1678,1680,1686,1687,1654,3505,3507,1652,3496,3470,3472,3474,4006,4027,4028,4021,4022,4009,4012,4001,4004,10420] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [8784,9079,9080,9081,9082,9083,9084,9067,8881,8882,8883,8884,9058,9060,8912,8913,8783,9122,9121,8914,9142,8846,8847,8849] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [1344,1345,1370,1379,1381,1348,3806,1895,1896,1888,1889,1902,3805,3774,3778,3815] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [8238,8251,8245,8244,7728,7730,7696,7693,7695,7690,7692,5904,5938,5941,5932,7694,7697,5895] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [1393,1420,1421,1422,1011,1012,1013,1014,1394,1010,1942,2096,986,2102,2103,2104,2105,1943,1944,1406,1407,1429,1936,1937,1931,1938,1946,1950] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [343,314,315,316,317,647,649,658,646,4265,318,319,320,4258,4260,4254,4257,330,334,4878,4865,4875,4872,4868,4880,4879,4881] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [4006,1347,1880,1346,1348,3806,4007,1878,1886,1895,1896,1887,1888,1889,3445,1345,3804,4005,3812,4004] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [2552,2548,2549,2583,2585,2547,2792,2793,2454,2455,2731,2752,2554,2555,2750,2751,2584,2813,2729,2515,2517,2520] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [35,637,657,678,4281,4286,4287,4889,4285,4296,4297,4886,658,4887,655,4870] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [6678,6778,6978,6779,6777,6677,6743,6740,6741,6738,6771,6772,6775,6960,6961,7015,6975,7016,6952,6954,6768,6806,6808,6807,6977] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [12260,12261,3968,3969,12258,12259,3970,10357,4036,10342,10343,10344,3997,4032,12252,9836] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [2155,7006,2171,6384,2160,2763,2161,7005,7007,2760,2761,6985,6986] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [1695,1717,1697,1858,1716,1718,1833,1835,1831,1834,10239,10236,1711,10268,10265,10235] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [1678,1680,1879,1881,1877,4006,1880,4007,1878,3472,3474,4009,4012,4001,4002,4004,4014,4003,4022] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [11200,10995,11000,11001,10963,10964,10966,10900,10901,11199,11201,11198,11176,11178,11239,11196,11197,11238,10993,10961,10991,10994] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [9040,9042,8706,8708,8710,9039,9044,8666,8663,8664,8691,8476,8477,9149,8518,8727] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [12001,12515,11585,12516,12506,12510,12514,12518,12522,11965,11966,11978,11979,12508,12509,11583,11581,11969,12674,12677] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [2711,2712,2713,2147,2820,2148,2335,2398,2336,2381,2379,2710] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [4063,4068,4076,3533,3555,4062,4064,4069,3139,3519,3112,4228,4231,3523,3135,3137] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [6348,6196,6194,5263,5265,5649,5645,6188,6189,6190,6198,5681,5657,5261] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [10844,11158,11159,11161,11157,10783,10823,10825,10593] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        

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
        
        load "data/2UZY.pdb", protein
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
 
        load "data/2UZY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [13300,13302,13303,8464,8465,8466,8467,13368,13369,8463,8789,8791,8788,8635,8636,13327,13328,13313,13301,13309,13336,13349,13350,13351,13352,8620,13279,13329,13331,12364,12365,12359,12360,12361,12362,8804,8805,13283,13378,7950,8124,8125,7959,13285,13314,13316,8301,8642,8643,8803,12363,8807,8816,8815,8136,8134,8302] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [1252,1253,1254,1088,1250,1259,6229,6230,6232,6231,6159,6248,6249,6163,6165,6166,6258,911,912,913,923,1087,1089,6171,6181,6180,6182,6170,6178,6183,6537,6539,745,746,747,5928,560,395,386,388,385,6208,6209,6211,6193,6194,6196,1429,1430,6213,5240,5242,5243,5245,5241,1591,1603,1422,1423,1576,1577,1578] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [9650,9720,9721,9801,10190,10191,10192,10193,10160,9600,10162,9626,9627,9628,9630,9629,9606,9596,10169,10170,10199,10202,10142,10139,10140,10148,10149,10154,10208,10042,9698,9699,9701,9804,9811,9815,10144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [2415,2581,2582,2588,2417,2956,2957,2978,2979,2980,2416,2507,2508,2435,2437,2413,2949,2947,2589,2829,2936,2989,2941,2929,2931,3007,2926,2927,2995,2591,2592,2602] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [3357,3368,3369,3370,3374,3375,3378,3391,3392,3588,3589,3590,3572,3109,3111,3544,3353,3567,3361,3366,3101,3362,3364,14002,14009,14012,14014,14019,3612,3595,3641,3642,3600,3587,3606,4701,14004,14006] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [13408,13409,7914,13411,7911,7912,8255,13445,13446,8086,8089,8262,8085,8252,13392,13393,13410,13427,13621,7731,7740,7730,7900,8067,7741,13430] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [11936,11888,11889,11891,11892,11893,11894,11844,11845,11937,11938,11939,11940,11942,10736,11915,11947,11959,11960,11941,11916,11918,11890,6744,6742,6740,11849,11903,11899,11896,11897,6956,11909] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [10385,10374,9583,9952,10368,10901,12504,12505,12506,9566,9568,9573,10907,10910,12494,12499,12507,11393,11395,12510,10903,11385,10902,11399,10913,11402,11403] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [3188,3191,3194,5384,5385,2355,5386,3727,3205,3724,3186,3721,3710,3187,5373,5374,5375,3723,3722,4213,4215,5393,4225,3733,4222,4223,5379,5390] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [10768,10769,10775,10822,6882,6894,6889,6892,10548,10549,10550,10554,10555,10559,10557,10558,10533,10821,10538,10537,10289,10291,10569,10571,10770,10752,10754,6886,10728,10281,6944] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [527,687,698,699,701,518,517,1042,6325,6326,872,873,876,854,6307,6310,6290,6291,528,6289,6303,6272,6273] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [13243,13244,13245,13246,13259,12895,12785,13247,12775,12782,13248,13249,13066,13067,13082,13063,13068,12907,13069,12791,12792,12888,12890,12892,13030,13008,12887,13006,13052] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [10064,10106,10122,10124,10123,9919,10067,10073,9917,9918,10084,10109,10085,10087,10077,10080,9855,10086,9856] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [12385,12387,12384,12804,12826,12381,12386,13338,13518,13334,12797,12827,13337,13320,13515,13514,13516,13525,13526,12807,13253] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [2642,2643,2909,2910,2704,2706,2908,2911,2864,2860,2867,2872,2873,2871,2893,2896,2705,2874] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [7067,7083,7085,6640,6641,7066,6655,6797,6645,6646,6796,6904,7084,6643,6900,6802,6935] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [12070,9361,8778,12374,12361,12365,13337,13349,13352,8773,8620,8791,8788] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [11881,6887,10728,6960,6744,6746,10724,10752,10734,10735,10726,10727,6756,6759,11883,10736,11892,10747] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [6123,6124,6126,6129,6131,5954,5962,5797,6139,5946,5772,5773,5775,5787,6125,6127,6128,6130,5662,5655] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [14020,14024,14204,14203,14055,13150,13153,13154,13747,13916,13917,13760,13761,13156,13157,13161,13162] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [13095,13096,13098,13100,13248,13250,13099,13101,13234,13236,13233,13235,13247,13238,13237,13523] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [3190,2343,2345,2356,2344,3180,3698,3189,2730,3177,2729,2718,2713,3173,3174] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [9942,9943,9557,9558,9931,10354,10878,10357,10872,10347,10353,10360,9939,9569,9554,10369,10370,9556] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [12114,12289,12287,12288,12116,12310,12309,12393,12394,12115,12091,12093,12419,12078] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [4610,4611,4612,4879,4640,1888,1834,1855,1827,1881,4577,4575] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [3404,3705,3398,3403,3406,3579,4691,3582,3704] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [2453,2624,2625,2487,2842,2843,2719,2722,2850,2851,2473] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [6950,6951,6818,6832,7050,6780,6781,6764,6765,6767] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
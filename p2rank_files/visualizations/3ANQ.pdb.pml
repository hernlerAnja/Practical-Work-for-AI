
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
        
        load "data/3ANQ.pdb", protein
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
 
        load "data/3ANQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8677,8895,8897,6102,6103,6104,8672,8848,9894,9899,9904,9918,8680,8682,8664,8667,9657,9928,9929,9925,9930,9934,5700,5681,5702,5669,6091,6095,5625,5627,5622,5630,9906,9938,5614,5673,9810,9811,9812,9814,9817,9818,9796,9630,9915,9908,9917,9640,9680,9795,9797,9638,9639,9924,8929,8921,6109,6105,6118,6110,6111,6112,8920,8892,8925,8926,6094] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [1459,579,1460,1461,302,305,1466,1467,1553,3306,1330,1444,1445,1446,1329,1443,1289,1287,1288,1305,1306,1566,1578,550,517,551,554,520,522,297,2902,2904,3305,543,544,545,3311,546,3299,3307,3304,3293,307,282,289,473,3312,1543,3313,3314,1546,1548,3296,1557,1564,1567,1279] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [5902,6910,6911,8472,7171,7183,7172,5894,5910,5912,5907,5913,5933,5887,6151,7072,8879,8880,8882,7162,7169,7148,6127,8873,8874,8884,8888,8875,8872,6150,6122,6156,6159,6125,7048,7049,7050,7051,6934,7043,6892,6894,6893,6061,6062,6184,7064,7065,7066,7071] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [917,1346,274,911,914,915,941,1344,1345,944,307,308,270,276,279,282,890,892,327,440,326,328,913,922,937,910,271,893,1439,1440,1436,1444,1445,1446,1329,1438,1443,456,457,1437,1317,897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [9273,9697,9265,9292,9295,9668,8702,8815,8647,8649,9261,8645,8651,8654,9243,9244,8831,8701,8703,9787,9788,9239,9241,9789,9790,9680,9794,9795,8682,8683,8657,9268,9097,9262,9266,9267,9238,9248] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [499,4094,4096,4266,4268,4273,4274,4095,3263,3264,3099,3109,3112,3114,4253,3096,505,507,4112,4136,497,498,3327,3329,3104,504,500,492,3353,97,4350,4364,4371,4373,4374,4385,4113,486,3351,3358,3361,3280,3386,3350,3357] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3081,3729,4153,4243,4244,4246,4136,4245,4124,4125,3134,3089,3115,3133,3135,3077,3079,3083,3084,3086,3263,3264,3114,4250,4253,3247,3697,3699,3700,3704,3553,3722,3723,3724,3718,3717,3720,3721] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [6060,6061,6062,6350,6493,6495,6496,6497,6498,5932,6492,6502,6351,6522,6045,7044,7048,7049,7051,6922,6934,7041,7042,7043,6951,6549,6527,6520,5879,6516,6519,5887,5875,5876,5881,5931,5912,5913,5933] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [2689,2690,2691,2692,10422,10423,10995,10996,10979,10980,10987,10988,10396,10398,10981,10390,10388,10036,10035,1249,1496,10041,10042,10055,10056,10058,10997,1707,10037,10038,10030,10031,10397,1715,1212,2699,2698,1712,1716,1717,1211] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [10997,1690,1691,1704,1705,1706,1707,2655,2656,2657,1683,1688,1684,1496,10041,10055,10056,10057,10058,10059,9847,10065,9600,9562,9572,9575,1685,1686,1500,10995,10996,11029,11032,11039,10985,10062,10067,10068,10071,10063,10066,9563,11038] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [1553,3306,1555,2832,2824,2816,2827,2829,1587,1574,1578,1579,2897,2871,3293,3304,2896,2883,2902,2904,3305,2875,1548,1567] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [8462,8473,8899,8471,8857,5701,5703,5692,5693,6087,5898,6129,6128] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [95,76,97,99,489,490,4350,4374,4353,4355,4360,4362,4386,90,488,64,486,20,22,29,25,4394,61,499,497,498,500,492] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [7101,7319,7320,7312,7313,7317,7321,7322,8277,5459,5460,8230,6854,6817,8274,8275,4492,4493,6816,7309,8283,8284] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [7101,7319,7320,7312,7313,7317,8277,5459,5460,8241,8242,6854,4492,5458,6816,7100,7309,4302,4303,4498,4511,4512,4515,4519,4514,5495,4490,4491,5448] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [87,88,96,98,482,3330,3331,3289,2895,2894,2905,523,293] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [7179,7183,7158,7172,7160,8472,8861,7153,8865,8873,8874,8872,7148,8389,8392,8395,8397,8400,8451,8470,8404,8439] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [825,826,843,830,4346,4899,4900,4924,4925,4922,4923,31,40,4716,32,52,54,842,836] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [6227,6191,6397,6399,6398,6465,655,656,6393,6401,6411,6164,6192,6190,1231,1232,630,6165,6166,6168,9865,6416,6417] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [6430,6448,6441,6446,6431,6434,6447,10444,6435,6437,10443,5636,5657,5659,5642,5643,10468,5645,10260,10466,10467,10469] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [1312,1610,1595,1321,1322,1597,961,1599,1813,1577,1578,1304,963] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [3633,2839,2118,2844,2845,2859,2861,3643,2093,2838,3648,3649,3650,3632,3637,2117,1909,2847,2092,2115,2116] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [812,4321,811,792,794,860,861,563,556,559,560,585,586,796,797,806] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [4028,4056,4018,7115,7104,7106,7111,7102,4521,4303,4511,4522,4514,7296,7100,7309,7290] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        
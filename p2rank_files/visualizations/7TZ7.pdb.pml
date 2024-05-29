
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
        
        load "data/7TZ7.pdb", protein
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
 
        load "data/7TZ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5959,5987,4505,4507,5988,5991,6019,6020,4836,4467,4468,4469,4470,4471,4754,1367,1368,1902,1903,4755,6162,6018,4477,4478,4443,4472,4475,4446,5992,4479,4790,5532,5531,5533,4753,4789,6178,6179,6168,5522,5534,1795,5526,6182,6185,4786,4788,6192,4785,4787] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [5871,6258,6265,6269,6774,6857,6277,6271,6300,6302,6775,6174,6175,6176,6854,6856,6838,5891,6253,6254,6865,5955,6858,6859,6862,6863,6749,6750,6319,6343,5889,5890,5692,5654,5714,5870,5713] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [3156,3168,3169,3173,3349,3348,3330,3172,3174,8968,2970,2979,3175,3183,3166,3302,4899,3314,3317,3342,3331,4893,4900,3149,4910,3164,8993,9038,9631,8966,9009,9003,9005,8934,8941,8964,8967,8943,9652,9654,2368,9655,9656,9651,9653,8944,3178,8908,8910,8936,9752,2361,2364,2971,9692,9693,9729,8994] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [5626,5627,5603,5365,5396,5597,5600,5723,5202,5366,5699,5701,5473,5441,5443,5743,5590] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [7466,7467,7469,7463,7451,7505,3186,3183,3187,3250,3171,3188,3251,3174,3276,4908,4909,4910,2991,3164,3271,4562,4563,4564,7458,7459,4916,4559,4560,3262,3265,3268,4573,7457,4571,4894,4893,3189,3193,7507,7508,7510] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [18,5162,5187,6234,5160,5161,5186,44,29,36,19,21,23,4851,4852,4853,990,992,15,12,13,605,753,973,6209,4871,4877,4878,4881,4883,4873,4872,6214,6217,6218,6211,4848,6205] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [2496,2497,2531,2532,4273,2512,2514,2515,2516,3254,3255,3259,3260,3263,3265,3256,3257,3258,3266,4265,3225,8179,8198,2464,2562,8006,7517,7524,7526,3224,3228,3236,3239,3240,3241,7505,7512,3209,3250,3227,3226,7996,7515,7994,7990,8001,8000] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [1811,1814,1826,1812,1813,1803,1805,1749,2012,1816,2008,1526,1528,2007,1708,1527,2021,1728,1682,1866,1867,1681,1699,1700,2022,2025] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [4941,3283,4613,4614,1073,3013,3124,1088,1071,1072,3055,3057,3292,3281,3286,3289,4589,4601,3021,3017,3042,3045,3096,4931] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [6044,6045,6046,6047,6049,6082,6083,6055,6093,1382,1383,1384,1961,1962,1929,1930,6015,6052,4478,4456,4446,4447,6017,6018,6164,6165,1898,1902,1903,1940,1970,1936,1939,1935,1422,6137] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [33,37,38,9020,30,31,32,9019,9026,9017,9016,9022,72,74,75,77,80,81,82,9564,84,86,92,61,595,8981,591,101,5250,5251,5252,99,100,83,5218] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [5136,5138,5140,5113,5110,5139,5456,738,5457,736,737,712,5101,974,678,700,5104,949,952,5170,5171,5429,734,735,699,702,703,975,971,973,972,701,941] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [3185,3199,3200,3202,3206,9749,9750,3219,7481,7509,9751,9752,3195,3197,3198,8871,7482,6955,8838,8879,8836,8839,8840,8868,8870,9773,9775,6946,8807,8805,9783,9808] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [6263,5822,5554,5556,5523,6260,6261,6262,5522,5521,5531,5814,5844,5845,5846,5819,5820,5821,5824,6267] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [1334,5085,5086,5087,5088,1333,1343,1344,1345,2078,2094,5538,5504,5505,1786,5565,5486,5046,5047,4745,4746,1331,1341] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [8082,7883,7884,7879,7880,7832,7833,7834,7837,8405,7850,8398,8136,8137,8138,8139,8392,8396,8397,8315,8316,8387,8390] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [4272,4273,4274,3978,4271,2514,2515,2517,2521,2524,8205,8203,8204,3976,3979,2523,2525,4270,3742,3743,3744,3788,3975,3789,8230,3739,8210,3712,3727] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [8187,8189,8190,4000,4001,4023,2737,8530,8531,2534,2536,2540,4021,2523,2525,2529,8194,8206,8192,2542] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [7580,7585,7626,7627,7629,8093,8092,7581,7593,7555,7924,7943,7944,7945,7921,7926,3738,8094,7622,3719,7934,3735] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [7893,7895,8625,8628,7896,7898,8609,7918,7890,7951,7952,7954,9883,9921,9854,9855,9920,9881,7919,8597,7949,7950,7980] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [5534,5556,5555,1792,1795,5814,1910,5813,1778,1368,1908,1904] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [5898,5217,5242,5243,5901,5216,5218,8976,5252,6226,6234,29,34,38,9020,5186,6217] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [6215,4885,4886,6220,5936,7467,7469,7463,4894,4867,6201,6213,6222,5918,5934,5935] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [2037,1826,1803,1805,1825,1342,1307,2065,2056,2030,2033,2063,2025,2026] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [896,901,905,932,1048,2151,619,1019,927,928,929,903,933,1008,1014] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [5433,5440,5442,5168,5169,5171,5414,5415,5386,5166,5196,54,109,5195,42,5197,5200,5201,108,5387,5388,5226] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [6253,6254,5955,6858,6859,6857,6174,6176,6854] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [8336,8512,8509,8510,8513,8508,8338,8319,8350,8367,8368,8377,8379,8447,8322,8326,8329,8459] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [4859,5963,5933,5934,4831,5931,4506,7447,4540,4868,4833,4832] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [3733,3780,8247,8248,3753,8245,3734,8093,8095,8101,3737,8089,8146] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [3768,8512,8518,8513,8539,8521,8537,3797,8237,8238,8239,8498,8326,8329,8331] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [3178,3189,8908,8910,8936,9751,9752,9721,9692,3185,3199,3206,8934,3183] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [4111,4112,3551,3552,3559,4081,4082,4083,3866,3867,3576,3577,3578,4086,4120,4110,4144] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        
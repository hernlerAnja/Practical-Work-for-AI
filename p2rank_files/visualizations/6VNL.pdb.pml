
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
        
        load "data/6VNL.pdb", protein
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
 
        load "data/6VNL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3744,3746,3748,3731,2785,2928,3730,2891,2894,2896,2783,2784,3906,3578,3751,3752,3904,3753,3908,3729,2591,2598,2621,2622,2623,2586,2588,2590,2597,2636,2587,3615,7281,7283,7284,3626,3728,3623,3612,3722,3723,3769,3770,2887,2886,2616,2618,2619,2601,2613,2611,2620,2862,2856,2857,2860,2802,3894,3897,3898,2889,2848,3888,3889,7304] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [7755,7756,7758,7671,8638,8639,8623,8773,8739,7729,7731,7482,7485,7487,8769,8766,7717,7725,8760,8750,8753,8758,7478,7470,7477,7466,7467,7491,7492,7493,7480,7489,7494,7455,7456,7797,8613,7654,8614,8621,8622,8600,8447,8615,8599,8456,8457,8598,8597,8495,8485,7505,7653] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [7543,7547,4401,4403,7565,7566,7350,7351,7615,7632,7930,7932,7608,7609,7611,7573,7319,7322,7321,7313,4371,4393,4394,4007,4009,4430,4431,4465,7603,4438,4440,4463,7618,7934,4004,4006,3998,7348,7550,7549,7335,7346,4370] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [1360,1361,1364,2595,1370,1373,2216,2218,2219,2220,1567,1570,1571,2807,2808,2809,2810,2811,2594,2222,2794,2225,2217,2571,2567,1375,2559,2562,2546,2547,2548,2549,2553,1379,1381,2574,2573,2575,1587,1588,1596,1597,1600,1526,1523,1594,1593,1595,1565,1566,1049,1050,2257,2260,2262,1621,2252,2241,1051,2280,2281,1025,1026] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [3180,3642,3723,2582,3643,3626,3728,3623,3612,3621,3722,2769,3184,2581,2583,3229,3230,3205,3198,3237,3233,3196,2585,2636,2634,2635,2580,2579,3179,2785,2929,3730,2783,2784] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [7442,7444,7443,6233,7463,6229,6230,6463,6462,6464,7138,5917,5918,5919,5920,7464,5941,6191,6456,6457,6490,6465,6469,7514,7086,7091,7093,7126,5894,7129,7131,7149,7679,7676,7677,7680,7110,7662,7663,7120,7121,7125,7150,7473,7469,5895] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [7505,7652,8048,8049,7504,7638,7503,8599,8598,8592,8597,8481,7451,7452,7447,7448,7449,7453,7454,7798,8601,8053,7904,8591,8511,8512,8492,8067,8071,8074,8098,8099,8102,8106] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [6129,6135,4989,4990,6130,5605,4985,4986,4987,4991,4992,5041,5042,5043,4993,4994,6137,5190,5586,5587,5176,6019,6049,6050,5613,5612,5609,6030,5637,5640,5644,5672,5442,5591] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [123,124,172,173,174,125,715,717,307,718,734,116,117,118,120,121,722,744,1150,1180,1181,775,740,743,768,771,1266,1267,1165,1261] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [7313,3895,7306,7307,7308,7309,4371,4393,7290,4394,7293,7288,7289,7312,7318,7319,7322,3992,3963,3965,3996,3998,4002,3929,4044,3914,3915,4023,4024] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [7659,7661,8008,8024,7110,7663,7160,7157,7190,7109,7119,7122,7124,7125,7158,7667,8025,7099,7100,7101,7037,7994,8007,7991,8001,8002,8003,8006,8009,7997,7998,7695,7696,7694,7188,8012] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [7417,7418,7088,6456,6457,7440,7442,7444,7443,6229,6230,6231,7415,7087,7089,6244,6440,6439,6239,6242,6425,6392,6391,7428,7436] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [5293,5296,6177,5267,5263,5011,5209,5269,5261,6153,5335,5023,5025,6292,6293,6294,6295,6296,6159] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [142,154,156,398,400,1282,1283,1284,143,424,425,427,1425,1426,1427,1286,1292,1307,1308] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [1282,1283,1284,146,143,142,154,395,398,322,323,466,429,434,428,340,394,432,424,1292] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [5043,4993,4994,6138,5191,5192,6137,6135,6136,5030,5029,5011,5008,5012,5015,5004,5005,6033,6019] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [3725,3179,2962,2785,2929,3730,2783,2784,3180,3723] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1540,1452,1501,1503,1467,1453,1931,1906,1930,1932,1530,1536,1418,1909,1417] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [7296,7294,4387,4293,3940,3941,4258,4291,4292,7266] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [6666,6667,6361,6653,6024,6022,6660,6360,6652,5662,5660,5661,6567] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [7052,7054,6502,6691,6692,6899,6862,6366] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [9153,9154,9324,8828,8961,8964,9366,9512,9514,9516,9517,9361,8962] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2906,2907,2904,2945,2936,3092,2971,3075,3076,3146,3147] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [2445,2452,2466,2446,2447,2481,2482,2678,2680,2746,2749,2675,3065] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [2181,2183,2185,1823,2040,2041,2035,1633] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [4095,4492,4285,4643,4646,4645,4647,4644] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
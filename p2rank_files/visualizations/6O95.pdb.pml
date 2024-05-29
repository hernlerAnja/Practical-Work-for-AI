
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
        
        load "data/6O95.pdb", protein
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
 
        load "data/6O95.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [892,258,852,259,260,262,263,264,265,271,272,1302,1190,1191,1174,1209,1309,828,829,1201,1202,1443,1434,1437,251,254,256,257,252,253,801,802,1225,1301,793,795,797,781,209,244,814,815,800,808,820,821,822,824,853,1226,900,306,305,307,405,772,774,775,776,406,1308,1310,275,276,447,448,288,289,390,770,771,773,888,862] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7604,7608,7633,7609,7030,7036,7070,7974,7982,7998,7999,8080,8081,7018,7024,7025,7027,7029,7683,7675,7072,7173,7174,8087,8088,8089,7037,7040,7041,7215,7216,7975,7963,7964,8211,7983,7051,7053,7054,7947,8204,8205,8203,8202,7021,7022,7561,7577,7580,7581,7600,7601,7602,7071,7582,7435,6974,7019,7588,7594,7642,7158,7550,7551,7552,7553,7555,7556,7434,7573,7575] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [4741,4742,4743,4744,4750,4751,4754,4755,5651,5663,5670,5652,5771,4767,5635,4765,4768,4887,4888,5047,4928,4929,5904,4930,5897,5898,5892,5895,5896,5686,5687,5763,5662,5149,5762,5770,5245,5246,5046,5250,5248,5336,5295,5302,4730,4731,4732,4733,4737,4738,4739,4784,4785,4786,5374,5327,5366,5288,5289,5269,5274,5282,5294,4736,4872,5244,4687,4688,4689,4734,4735,5275] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [959,961,1001,5158,939,969,971,973,975,935,5703,915,917,5710,5712,5711,5284,1989,3124,3126,5708,938,1994,1997,5257,1995,1996,958,1982,1975,5266,4853,4854,4857,4858,4859,1987,1988,4852,5748,5278,5700,5155,5262,5263,5127,818,1265,1267,1263,1002,1261,1254,1255,1253,5734,918,909,860,911,5123,5735,5749,5139,5111,5112,5119,5120] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [7698,7699,7700,7701,7705,7753,7754,3462,8755,8757,5376,5378,2634,8765,8763,7744,7718,7721,7752,7722,7741,7742,8756,2635,2640,7743,7751,7748,8039,8040,7750,7778,7776,7598,8045,8046,7640,8736,8743,3010,3005,3006,3026,3014,3016,3032,3033,2639,2638,3455,3459,3451,3452,8034,2851,2852,2859,2879,3454,3486,3499,3500,2863,2867,8044,8042,2860,2895,2896,2897,2898,7779,7780,3485] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [2566,2565,2567,2514,2512,2513,2518,2519,2520,2524,2525,2531,2532,3022,3043,2517,2653,2516,3413,3438,3521,3513,3514,3414,3421,3522,3024,3003,3437,2667,2668,2995,2997,2998,3046,3050,3051,3075,3114,3515] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3160,3161,3191,3193,3475,3477,3478,3479,3467,3156,3157,3155,3144,3082,5707,5714,3131,3133,3137,3139,3140,5716,5717,3040,3041,3458,3463,3465,3468,3183,3185,3219,5396,5408,5412,5413,7687,5444,5726,5728,5407,5727,5442,5443,5293,5724,5391,5389,5292,5390,6449,7679,4195,4201,4204,5437,4202,4203,4182,4185,896,4189,902,903,904,3180,5435,5445,5468,6458] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [7589,7591,7572,7574,7590,4421,4446,3283,3321,7568,7144,7145,7569,7140,7143,7139,7128,7134,7138,4420,8021,8025,8027,8029,3320,3319,7563,4480,7106,2865,2866,2867,2874,3260,2858,3486,2875,3485,3237,3243,3261,3262,3263,3241,7598] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [958,2293,2294,2295,5175,5174,2292,1023,2296,2297,955,999,959,960,961,962,946,948,993,2029,2028,2286,4853,4830,4523,4522,4866,4852,4835,2009,4838,1993,4521,4541,4543,5171,5172] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2610,2632,2633,2619,7743,7745,9060,9063,9065,9062,2634,7744,7738,7741,7742,9064,7777,7801,7771,7729,7731,8796,8797,9054,8777,8761,2915,2314,2911,2331,2353,2609,2912,2914,2333,2332,2334,3006] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5117,1247,1250,1251,5118,5539,5532,5537,5534,5509,5510,5511,5512,6700,6733,6731,6732,6675,5569,5568,5570,5134,5135,809,810,811,792,794,5125,5126] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [3481,3485,3214,3243,3263,3215,3216,3241,3486,3487,2875,2865,2867,2874,3467,3472,7700,7701] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [8454,8462,8469,6140,6155,6147,6162,5351,7657,8722,8741,6434,6431,6432,5348,5350,7654,6421] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [8691,8697,8699,8454,8461,8462,8469,8447,6155,6182,6196,8523,8702,8704,8489,8514,8515,8535,6181,6199,8663,6180,8741] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6140,6154,6155,6392,6425,6384,6390,6395,8462,8469,8468,6147,6162,6207,6182,8502,6208,6397,6216,8503,8506,8489,8488,6434] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [5491,5730,5735,5736,5134,5135,5492,5445,5467,5465,5466,5512,5486,5734,5125,5126,5127,818,5721] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [3402,3421,3522,2546,3403,2548,3386,2549,2532,2535,2536] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [4138,4130,3962,1720,1735,1738,1721,4143,3893,3900,3901,3908,3928,3954,3953] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [1686,3893,3901,3098,1971,1972,1973,4178,4179,4180,877,876,874] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [1679,1686,1694,1923,1934,1746,1747,3928,3941,3926,3927,1701,1721] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [47,44,45,46,350,356,369,371,693,64,43,384,62] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [406,423,1310,564,523,1323,522,283,524,528,286] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        
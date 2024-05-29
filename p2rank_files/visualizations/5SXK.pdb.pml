
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
        
        load "data/5SXK.pdb", protein
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
 
        load "data/5SXK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5552,5554,5563,5567,5568,3668,3670,5569,5553,8250,8254,8257,8258,8260,8242,8288,3677,3678,9688,9690,9691,3675,9659,9661,3690,3691,8300,8301,8294,8296,3711,3805,5560,5561,5562,3806,3821,9723,3846,5223,5221,8248,9722,6922,9697,9699,9731,6921,9698,9694,9657,6620,8274,8275,3700,3702,5543,5544,5545,6637,6618,6619,6635,211,220,214,6928,207,9668,9669,9671,206,205,208,6923,6617,3495,3775,3779,3772,3766,3769,3771,5232,3755,3713,3754,5219] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [5443,5444,5445,5446,5447,5448,5449,6191,6202,5412,2411,2412,2413,5494,5495,6895,6689,6692,6720,6721,6662,6688,6719,6718,6660,6684,6880,6883,6870,6893,6195,6886,5131,5133,5137,5155,5158,5127,5129,6693,6694,6695,5166,5159] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [6329,6330,6331,6375,6343,6344,7616,7020,7533,7534,7044,6374,6592,6656,6877,6953,7613,7617,7621,7622,7623,7615,6955,6591,7624,6397,6970,6975,7001,7003,6954,6959,6978,6572,6972,6976,7597,6571,6395,6872,6874,6875] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [3049,3063,3069,3062,3064,9008,3067,4456,4642,4409,4455,4656,4669,4673,4675,4454,4429,9010,9011,3052,4633,4634,4640,4643,4677,4661,4666,4667,4668,4690,4688,4689,9307,9309,9312,4645,4379,4398,4406,8998,9000,9001,4401,9002,3059,3060,3061,4646,4931,4932,4933,8991,8992,8993,8994,4929,8315,8317] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [8326,8756,8757,7750,8755,8758,8734,7701,7739,3706,8784,7710,7712,7703,8321,8322,7704,8386,8387,8327,8328,8297,8325,8332,8333,10583,10584,10585,7744,7746,7748,7726,10612,7699,7705,7706,7708,7709,7683,7672,8307,8323,8324,8753,8721,8726,8727,8730,8347] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [3738,8986,8798,8967,8984,8803,3010,3744,3011,3012,3101,8988,8995,8748,8771,8966,3043,3044,3761,3762,3059,8994,9001,8307,8323,8746,8782,8783,8777,8780,8781,8745,8770,3713,3748,3749,3754,3728,3732,3736,3740,3731,3729,3730,8308,8312,8315,8319,8306,3767,3768,3763,3770,8982,3098,8296] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [238,239,240,244,5854,235,5877,5846,5845,6915,5876,6598,6599,6600,6918,6935,230,231,218,213,250,957,5789,956,5817,5818,5819,5821,5820,954,6912,5536,5537,5540,5542,6919,5516,807,1192,5512,1170,1194,5510,5511,5507,5484,6906,1176,5532] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [3640,3515,3517,3790,3516,3788,3511,3518,1298,5255,5266,5248,3525,5260,5262,5239,1280,1281,1282,1297,3796,3793,3797,3798,5566,3781,3785,5218,5590,5596,5273,5600,3549,3627,3559,3561] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [9590,9631,7709,9558,9591,7707,7708,7719,3698,3699,9629,9630,9619,8273,8274,3700,3702,7684,7686,7680,3695,3696,3697,3704,9621,3706,7710,7711,7713,10528,10549,10551,3720,3723,10583] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [2609,1553,1552,1564,2622,1550,1562,2292,6234,5705,2626,2629,2619,2610,5404,5405,5717,6173,6207,5701,5745,5746,5747,6174] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [6224,6225,6509,6510,6511,6519,6521,2449,2479,6507,2409,2414,2415,6202,6215,1587,2301,6203,2420,2422,2456,2284,2418] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [6754,6755,6747,6748,6783,6784,6786,6838,7578,6839,1601,1602,1603,2438,2439,2440,2450,2470,1673,2411,2413,2409,2469,6865,6866,6847,7579,6719,6718,6793,6794,6795,6756,6750] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [8876,8901,8903,8871,8934,8874,8711,8713,9019,4365,4400,8714,8859,8865,8866,8860,8935,8419,8420,8421,8423,8706,4447,9035,9036,8908] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [1131,1214,1250,1132,1134,1117,1217,1218,1207,1221,1222,1204,1210,806,817,834,837,838,825,789,840,1135,1136,1139,1140,1114,842,847,850,848,872] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [1176,5758,5760,5761,5763,5759,5764,905,1142,1143,5798,5799,904,903,902,5769,877,880,1151,1152,1154,1175,1177] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [3738,8798,8807,8803,8806,2995,2994,3115,3011,3012,3455,3457,3454,3456,3453,8790,8811] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [4464,9296,4461,9097,9098,9285,9287,4181,9280,4182,4191,4193,4194,4197,4431,4435] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [283,279,10341,274,276,10340,9774,10367,9830,10338,10298,10334,10335,9831] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [6563,6546,6961,6962,6963,6964,6968,6548,6541,6551,6984,6985,6192,6200,6222,6224,6225,6519,6521,6517,6535] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [6758,6753,5114,5115,6762,6764,8149,6727,6730,8170,4861,8167,4863,8146,8148,4848] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [4965,4966,4962,3556,3578,3350,3348,5252,3351,5263,5241,5244,5249,5258,5254,5261,5286,5277,5283] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [6357,6358,7624,6611,7637,6592,6654,6655,6656,7622,7623,6616,6610,6612,6647] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [7245,7012,7013,7077,7204,7206,7075,7076,7073,6996,7558] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [794,797,974,976,278,9766,280,9763,9798,244,241,9764,9760,9792,793,9762,9795] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [8573,8588,7871,7949,7950,8570,7997] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
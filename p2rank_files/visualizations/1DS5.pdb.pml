
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
        
        load "data/1DS5.pdb", protein
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
 
        load "data/1DS5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5827,9522,9523,9119,9521,5806,9137,9138,9135,5826,5802,5799,5803,9114,9129,9134,11360,9131,5804,5805,9151,9152,9150,9146,8552,8555,8610,8611,8612,8547,8549,8546,8548,8530,9112,8713,8714,8715,9098,8631,9622,9626,8732,8557,8558,8566,8567,8570,8596,8730,8731,8945,8946,9089,9091,9093,9088,8582,8748,8591,8729,9507,9619,9621,9482,9495,9497,9500,9492,9494,9618,9499,9786,9787,9467,9653,9654,9627,9628,9629,9483,8574,8576,8579,8583,8585,8807,9646,8843,9645,8813,5796,11365,11366,11367,8532,8805] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [3666,4040,4050,4051,3682,3648,3650,4049,355,4025,3688,3075,3662,3665,3674,3675,3678,327,320,3644,3647,3659,3657,330,342,331,3681,3085,3083,3138,3140,3073,3074,3076,3077,3078,3080,3066,3139,3241,3242,3243,3640,3642,3058,3159,3616,3626,3102,3107,3094,3095,3096,3098,3119,3124,3257,3259,3260,4154,4150,4151,3258,3474,3617,3619,3621,4035,4149,4146,4148,4011,4024,4027,4028,4015,4021,4020,4022,4023,4181,4155,4182,4308,4315,3993,3994,3995,4157,4156,3115,3104,3111,3113] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [6747,6759,6756,6758,6771,8563,6731,6918,6917,7051,6890,6772,8541,8538,8539,8542,8543,5860,5995,5996,6891,6892,6893,5819,5816,5874,5876,5811,5814,5831,5834,5838,5847,5849,5851,6071,6107,6908,6909,5846,6751,6418,6424,6411,6414,6416,7050,6761,5840,6210,6885,6376,6384,6785,6786,6787,6401,6383,6395,6398,6402,6410,5875,5976,5977,5978,5979,5813,6355,5992,6380,6386,6362] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [1286,929,930,1314,1315,1313,927,912,914,911,923,1287,1289,3091,944,3070,3071,3090,1284,3066,926,3067,1275,1299,1413,339,344,347,341,402,403,505,507,904,906,908,1421,349,358,359,404,522,523,506,738,890,886,883,885,524,1414,1415,350,952,965,1279,946,938,939,943,945,942] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [7052,7050,6764,7069,7084,7085,6761,6437,6763,8605,6436,8604,6435,7360,7361,7349,7350,11424,11425,6753,6426,6428,6416,7354,7267,7083,7268,7272,7274,6747,6759,6771,8560,8562,8563,8543,5831,5834,5822,6893,7071,7073,7392,7394,8757,8756,8754,9054,9053,7056,8763,8764] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [10428,10430,10432,10202,10203,4706,4740,4761,4762,4730,4673,10153,10434,10433,4672,10150,4681,4960,4961,4962,10143,10144,10145,4955,4956,10178,10211,10212,4731,10234,4958,4953,4954,4952] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [2004,1970,2025,2026,2257,1995,2220,2224,2222,2258,7692,7696,1935,1936,1937,1942,1943,1945,7698,1944,1961,2226,7416,7408,7409,7417,7414,7415,7442,7476,7407,7433,7467,7694,7730,7497,7498] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [1888,1889,1877,3133,10997,3132,10996,10998,3267,1597,1599,955,956,1281,1291,1292,1878,1879,1882,965,962,963,1611,1612,1613,1800,3091,3086,3087,3088,3089,3090,1275,1580,1578,1273,1274,1802,1796,3284,3278,3282,3292,3272,3285,1584,1588,1601,3581,3582,3291] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [10128,9805,9807,9809,10084,10085,10096,10097,9499,10086,9164,9821,9482,9497,9500,9795,9796,9792,9820,9786,9787,9788,9483,5868,9173,9172,11288,11289,6014,6018,6020,6028,6000,6003,6318,11286,5825,6021] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [4337,4011,4009,4333,4335,4348,4024,4027,4028,4023,4017,4624,4625,4612,4349,4614,4316,4320,4314,549,548,351,353,354,355,4025,335,3692,4613,3700,3701,3699,396,397,352] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [6068,7014,5654,6097,6932,6933,5652,5653,6985,6986,6919,5661,5662,5663,5664,6063,6064,6067,6059,6060,6061,6984,7002,7039,7008,7012,7013,6721,5625,5632,5634,5637,5633,5643,5650,6961,6962,6963,6964,6965,6966] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [1421,374,349,358,359,387,388,523,1445,1420,1438,1439,1437,524,375,599,537,540,366,368,377,379,362,1259,1275,1446,1579,1299,1287,1286] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [9698,9700,9721,9699,9701,9722,9702,8361,8373,8368,8370,8397,8398,8399,8400,8374,8379,9748,9744,9738,8797,8804,8806,8803,8833,8831,8388,8389,8390,9668,9669,8380,8386,8793,8795,8796,9762,9750,9655,9457,9775,9697] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [191,153,162,178,180,182,171,160,161,1461,1514,1460,1489,1490,1491,1492,1493,1494,189] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [3313,3314,3315,2976,2977,3587,3572,3574,3529,3340,3342,3343,3310,3380,2955,3588,3589,3352] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [8814,8427,8448,8449,9001,8812,8815,9059,9060,9042,9075,9003,8824,8786,8787,8782,8784,8785,8821] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [2889,2896,2898,2925,2927,2901,2907,2897,4248,4250,4226,4228,4230,4225,4247,4227,4229,4195,4197,4196,2918,2916] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [625,592,595,596,181,1461,1513,1514,1460,191,180,182,1447,192,588,589,587,1540,1541,1542,1530,1536,1249,1567] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [616,219,574,577,578,579,240,241,604,606,793,795,838,852,851,644,779,607,839,834] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [8520,11461,11468,11469,11471,11475,11476,6477,6409,6451,6408,6393,6478,6819,11479,11480,11481,11483,6808,6814,6818,6810,11482,6443,11450] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [6311,6050,6051,6306,6309,6076,6078,6079,6323,6324,6046,6049,6088,5709,5712,6264,6265,5691] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [4195,4197,4196,3361,2918,2916,2917,3321,3323,3324,3325,4276,4278,4303,3985,2926,2927,2928,4249,4250,4272,4266,4175,3332,4183] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [11052,11042,11048,11055,3048,3041,11023,11034,11041,935,936,971,937,979,1006,1336,1338,1340,922,1004,1005] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [34,44,46,2579,2583,2584,1726,29,54,1723,1731,1732,1717,1735,2534,1193,2578,2562,36,37] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [3333,3335,3111,3113,4173,3330,4156,3371,4181,4155,3107,3095,3096,3098,3119,3124,3259] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [11419,11399,11402,11403,7334,7832,7833,7328,7329,7337,7338,7330,7331,7332,7834,7353,6432,6469,6470,6471,11409,6434,11422,11424,11413,11416,11417,7346,7349,7351,9032] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [5761,5763,5913,5916,5939,6231,6242,6235,5970,6346,5955,5960,5952,6232,6233,6234] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [4468,3929,4467,5309,5315,5298,5318,5320,5321,5319,4459,4460,4462,2776,2765,2770,2772,2773,2780,2782,5270,4453] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [9940,9943,9401,9931,9939,8262,10792,10781,10787,10742,8242,8254,8237,8248,9934,8252,9925] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [7193,7195,7198,8056,5516,5501,5506,5518,7230,6665,8057,8051,8055,5508,5526,7189,7203,7204,7207,8006] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [4613,3700,3701,3699,556,549,546,548,11150,11152,396,397,4656,4625] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [11280,11281,11283,11266,11263,11267,9205,11286,10066,10068,10069,10070,10568,10569,10570,11251,9168,11277,11288] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [759,760,761,762,763,480,483,467,488,498,289,291,441,444] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [8186,8184,6546,6547,6549,6551,6511,6839,6512] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [8497,8499,8652,8675,8649,8687,8971,8691,8696,8688,8706,8968,8969,8970,8967,8978] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [2710,1039,1040,2711,2712,1074,1075,1077,1079,1367] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [8797,8798,2155,1671,1672,1662,1670,1690,1669,8804,8803,8778,8779,8780,8795] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        
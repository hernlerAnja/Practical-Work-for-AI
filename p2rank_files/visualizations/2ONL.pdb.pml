
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
        
        load "data/2ONL.pdb", protein
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
 
        load "data/2ONL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1406,1408,1410,1628,1396,1398,1672,4564,4565,4566,4556,4190,4994,4999,918,920,4157,4159,4160,1204,887,888,1220,910,1655,4126,917,916,4120,1371,1374,4996,5004,4213,4215,4216,1370,4538,4995,5002,5003,5005,4547,4182,1206,1208,1372,1373,1221,1386,1705,1707,1394,1395,1397,1703,4559,4545,4342,4977,4218,1383,4330,4331,4335,4339,4340,4543,4542,4346,4345] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [6644,6643,6645,6655,6657,6919,6653,9784,9785,9766,9773,9767,9780,9794,9795,6616,6612,6613,6618,6621,6615,9568,9441,9768,9556,9566,9772,9567,9564,9565,6949,6951,6952,6954,6957,9571,6950,9575,6630,9774,9779,6943,10223,6130,6463,10232,10233,10228,10230,10231,10234,9444,10203,10206,10225,6448,6159,9385,9386,6129,6875,6162,6152,10175,9569,10176] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [575,649,574,828,829,233,1323,1329,1328,1330,1319,1242,1321,1219,859,861,862,865,869,872,5040,5042,652,1316,651,653,273,367,235,236,833,846,845,847,848,274,383,540,381,812,379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [6563,5891,5892,5894,6093,6481,6484,6103,6107,5516,5623,5625,5816,5817,5609,6088,6089,6075,5477,5478,6090,6101,5515,5621,6054,6070,6071,6571,6572,6565,6566,6579,6558,6573,6111,6461,6561,5782] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [2074,4092,2086,1680,1810,1813,2037,2038,2076,2077,2072,1664,4058,4060,4062,1660,1662,1663,4097,1650,1651,1688,1690,1774,1778,1674,1677,1675,1669,1670] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [8913,9844,8914,8916,9402,9403,9404,9239,9233,9236,9225,9372,9373,9245,9832,9835,9837,9838,9820,9851,9852] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [4174,4135,4176,4177,4178,4146,4607,4622,4623,4019,4020,4591,3718,3690,3691,3698,3699,4013,4000,3992,3993,3997,4613,4615,4603,4609,4617,4206,3662,3692] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [2879,2881,3399,3395,3400,3406,2873,3788,3816,3817,3384,3918,3919,3403,2878,2880,3008,3004,2995] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [98,3012,3925,3927,3776,3777,4966,3760,3926,3761,3103,3940,3942,3066,3067,3064,3953,5014,3951,3028,3069,3072] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [8617,8618,8097,8098,8213,8099,8437,8601,8602,8228,8226,9142,9144,9038,9039,9143,9149,9150,9151,8436,8622,8624,9146,8621] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [8684,9104,9049,9103,9113,9050,8679,8692,8719,8681,9048,8821,8823,8720,8791,8795,8790,8816,8754] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [3010,3012,3136,3383,3384,3918,3925,3920,3921,3134,3928,3133,3924,3926,3919,3102,3103,3132,2881,3009,3109,3369,3367,3366,3008,3004] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [9152,8226,8227,8246,8245,8437,8600,8601,8602,8354,8586,8352,8320,8321,8244,8587,9142,9143,9149,9150,8436,9146] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [3463,3464,3826,3828,3474,3827,3476,3533,3535,3573,3569,3592,3475,3878,3855,3601,3439,3599,3589,3588,3502] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [6917,6922,6924,6927,7060,9316,9317,6898,7321,7323,7333,9285,7284,7285,6897,6907,6896] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [864,872,5040,5041,5042,896,1321,1219,859,861,865,869,1220,1330,4997,4990,4989,4992,847,236] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [5942,5400,5264,5265,5935,5263,5945,5253,7902,5927,5932,5246,7900,7921,5417,5419,5922,5923,7925,7941] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [3020,2888,3003,3309,2905,2850,2828,2849,2817,2819,2820,3360,3361,3287,3018,3305,3307,2862,2863,2865] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [8576,8488,8490,8486,8066,8068,8069,8220,8594,8070,8075,8123,8124,8221,8085,8087,8088] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [1323,1337,600,565,567,1336,1339,1340,1341,649,574,1338,1335,652,1316,564] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [3601,3439,3599,3600,3623,3624,3588,3595,3894,3895,3892,3826,3828,3827,3476] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [1120,1128,1121,1122,1531,1090,1092,1124,2270,2275,2265,2268,2271,2269,1094,1095,2280,1129,1096] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [9175,9177,5475,10266,10268,10270,10271,10265,10257,5478,8285,8284,10267,10269,10218,10242,10238,10239,10216,10219,6138] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [4831,3473,4799,3475,3476,3444,3477,3478,3447,3449,4285,4277] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [5494,5715,5716,5717,5718,5710,5749,5738,5703,5704,5739,5740,5741,5493,5496,5499] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
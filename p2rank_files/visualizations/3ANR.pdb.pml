
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
        
        load "data/3ANR.pdb", protein
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
 
        load "data/3ANR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8677,9686,8669,8685,8687,8682,8662,9969,9943,8929,6104,6105,8902,6106,6110,6098,8900,9933,9936,9938,9824,9825,9826,8837,9667,9668,9669,9685,9967,9968,9956,9957,9963,9964,9839,9840,6112,9846,9847,8926,8959,9659,9947,9950,9952,9954,5701,6092,6103,5703,5615,5631,9945,5623,5626,5628,6095,5670,6094,6096] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [887,328,892,746,893,890,282,613,580,1436,1438,1439,1443,1446,1329,1437,1344,1346,937,1317,944,917,455,457,307,308,453,1454,272,274,326,327,440,911,913,914,922,910,276,270,279,897] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [3134,3722,3081,3721,3133,3135,3077,3083,3084,4153,3264,4243,4244,4246,4136,4250,4251,4253,4245,3260,3261,3262,3263,3114,3115,3720,3729,3089,3086,4124,4125,3751,3694,3695,3697,3247,3699,3700,3704,3553,3723,3724,3718] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [5898,5903,6935,7051,7052,6893,6894,6895,6911,6912,7194,7169,5895,5911,5913,8479,8477,7065,7066,7068,6155,8879,7072,7073,8878,7180,7182,7159,7162,7173,7183,6126,6152,5908,6123,6157,6160,6185,8866,8872,8877,8869,7164,6128,8884,6151,6156,8880] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [5933,5880,6046,6952,6550,6923,6523,6521,6522,6503,6517,6520,6528,5876,5882,5878,5888,6494,6496,6497,6498,6499,6351,7042,6352,6493,7043,7044,7045,7046,7049,5914,6063,5934,6061,6062,6059,7052] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [1467,1279,1287,1568,1570,1571,1289,1288,1582,1459,1465,1466,546,3311,549,3313,3308,3299,3307,3293,3296,3304,3305,3306,473,456,457,302,305,307,292,297,289,551,579,522,550,554,1445,1444,1446,1329,1305,1306,282,1561,1564,1566,3339,1527,1547] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [504,4360,498,4274,499,3099,3104,3096,3089,4112,4113,4374,4381,4384,4383,4390,4094,4096,4095,4391,4395,3329,492,500,3353,3356,4266,4267,3386,3327,3280,3109,3112,3114,4273,4136,4253,3361] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [9817,9272,9273,8835,8836,8837,8707,8708,8820,9268,9270,9697,9709,9818,9823,9824,9826,9698,9816,9819,9126,9302,9726,9291,9293,9294,9295,8654,9324,9296,9297,8662,8656,8659,8687,8688,8650] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [1708,2692,11045,11046,11047,1709,1710,1724,1711,2645,10076,10074,10075,10077,10078,9880,10081,1496,1495,9876,2689,2690,2691,2685,2688,2668,10461,1212,1716,1719,1176,1715,1720,1721,1211,2699,2698,1745,2679,1249,10095,10096,10097,2657,2656,10094,10098,10102] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [1522,1479,1532,1533,1530,1527,1501,1499,1504,1503,1510,1511,1498,1281,1700,1702,1567,1564,1566,1478,1483,1265,1497,1465,1466,1467,3313] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [2903,3288,3289,2889,2893,2895,2883,2905,2915,2894,96,98,99,482,524,3330,3331,523,3097,3099,3100,3103,3098,3092,2906,292,293,296,86,87,88,108,76,82] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [8466,8468,8479,5688,5692,5693,5694,6088,5899,5902,5702,5704,6129,6130,8904,8476,8862,8903,8478,5682] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [6855,6817,8270,5459,5460,5461,8269,7330,7331,7324,7328,7320,7321,7322,7323,4521,8235,7101,7102,4505,4506,4507,4508,4502,4503,4500,4501,4524,6818,8277,7326,7332,7333] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [4303,4529,4531,4532,4521,4522,4523,4525,5496,8234,8235,7101,7102,4524,4032,7301,7302,4028,4056,4018,4019,7304,7306,7307,7320,7323,5461] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [7194,7169,7190,7193,7199,7203,8400,8402,7171,8405,8397,8479,8477,8456,7159,7162,7183,8879,8878,8869,8444,8868,7164,8870,8409,8475,8866,8877] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [4907,4908,4909,4910,808,809,4933,843,825,826,830,836,842,4726,4935,52,54,4934,37,38,40,832,4356,810] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [3632,3633,3643,3637,2097,3649,2838,2861,2859,2844,1539,3650,3615,3617,3620,1541,1543,2096,2095,3616,1913,2120,2121,2122,2847,2845,2119] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [6447,6448,5634,5637,10507,5643,5644,5646,6431,6432,6435,6442,6436,6438,5658,5660,10482,10483,10508,10505,10506,6449,10299] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [4360,498,499,4384,4383,4391,4395,486,492,497,95,97,4363,4365,4370,4396,4372,20,22,490,64,61] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [10104,10105,10094,10098,10101,10102,9591,9592,10095,10096,10106,10107,10110,2657,11035,2655,2656,11080,11082,11079,11081,9876,1689,1690,1711,9629,11089] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [1552,1557,1559,2832,3293,3297,2836,2871,2824,2904,2827,2829,2883,2902] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [788,794,6261,6262,560,563,811,812,860,861,796,806,810,4331,792,586] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [10462,2691,10070,10461,10069,11045,10076,10074,10075,10077,10435,10436,10431,11038,11030,10427,11037] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [4303,4529,4531,4532,4521,4522,4523,4525,4527,4528,4533,5496,8234,8235,5502,5503,5494,5495,3983,4524,4534,4018,4019] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [1495,9876,1692,1694,1695,1687,1689,1690,1708,11047,1711,2646,2647,1500,9629,10104,10105,10094,9591,9592,9601,10095,10097,2657,2655,2656,11082] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [7142,8886,7314,7178,7084,7085,7312,7110,7132,7117,7089,7106,6887,6885,6886,7176] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [9205,9206,9216,9221,9223,9209,7708,7709,9210,8417,8418,8419,8420,8432,8434,7731,7732,7733,7734,9222,8411,8408,7730,7525] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [9908,9918,9906,9916,9863,9877,9878,9884,9880,9891,9901,9905,10088,9859,10086,9858] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [504,4360,4379,4274,4086,4087,4377,4515,4341,4340,4343,506,4286,4272,4273] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [961,963,1320,1322,1817,1313,1321,1306,1594,1598,1599,1600,1601,1603,1304,1614,1862,1581] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [4304,4307,4290,4302,4311,4072,4285,4345,4286,4513,4515,4343,4379,4508,4318] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [2647,2648,1681,1691,1683,1688,2076,2640,2045,2049,2655,1684] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        

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
        
        load "data/6T8X.pdb", protein
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
 
        load "data/6T8X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3774,3742,3743,8813,4331,3776,3780,3785,3790,3810,3738,4340,8810,8814,4337,8836,4330,4353,4364,8804,3782,3340,3342,4376,4373,4375,3704,3730,3707,8801,8802,8561,8563,8564,8565,8566,8572,8574,4382,4389,8577,4384,4374,3700,3741,3744,3745,3746,3784] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [13315,13323,10450,13065,13304,13305,13306,11120,11123,11125,10488,10492,10493,10523,10524,10530,10535,10536,10539,10540,10480,10496,10494,10495,13066,13067,13068,10532,10534,10076,13074,13079,10525,10454,10457,10453,10078,10080,10560,11114,11126,13314,13316,11085,11090,13313,13312,11080,11087,11103,11081] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [7501,7502,7338,7506,6961,7130,7129,6999,7128,7521,7523,7518,6954,6952,6942,6943,6948,6949,6998,6944,7252,7254,6946,7113,7938,7939,6955,7549,7910,7922,8045,8042,8043,8044,8052] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [11637,11460,11462,11463,11469,11507,12560,11456,11457,11450,11451,11638,11728,12418,12447,12430,11506,11452,11454,11455,11846,12550,12551,12552,12026,12030,12031,12032,12446,12029,11760,11762,12553,11621,12010,12009,12014,12024,12025,11995] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [1487,1495,1500,1501,1503,1455,1457,4075,4077,4315,4316,1461,1460,1567,2121,2127,2130,2131,2132,2133,4084,4086,1529,2088,1542,1543,1546,1547,1533,1539,1085,1537,4089,1502,4076,4078,1541,4326,2092,2097,4323,4325,2086,2087,2094,2110,4333,4322,4314] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [1208,1207,790,215,382,787,212,218,213,216,267,1179,819,791,792,793,775,1191,1321,1312,1314,399,523,230,1311,1313,397,398,770,771,768,268,607,521,223,224,229] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [8841,8861,8863,8251,8278,8818,1843,2082,2083,8253,2089,2090,2079,2071,8188,2073,8245,8233,8268,8270,8272,1846,1841,1836,1833,1832,8226,8230,8229,8218,8232,8234,8266,8273,8274,8277,8298,8852,8858,8864,8870,8191,8192,8195] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [9223,9392,10311,10312,10314,9217,9261,9390,9391,9764,9514,9516,10307,10304,10305,9763,10306,9600,9205,9211,9214,9206,9259,9260,10201,9780,9375,9768,10184,10172,9812] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [7421,7422,7138,7423,7425,9037,6857,6910,6907,6908,6909,7441,7462,7463,6865,7148,7151,7134,7142,7147,7135,6989,7137,6991,6992,7006,6914,7155,13013,13014,7420,7424,7426,7427] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [3462,3045,2521,2522,2523,2637,2468,2654,3569,2776,2778,2652,3025,3026,3576,2479,2476,2466,2467,2472,2473,2861,3030,3042,3037,2470,3566,3567,3074,3434,3446] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [4714,4715,4762,4763,4708,4709,5312,5314,5811,4726,4894,4895,5814,5815,5817,4764,5675,5687,4717,4719,4720,4725,4878,5271,5287,5288,5283,5703,5704,5286,5266,5807,5103,5267,5809,5808,5810] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [11933,11935,2275,11497,11499,8472,8474,8486,8511,11932,11934,11929,8512,11662,11649,11650,11655,11659,11641,11642,11643,11645,11646,11970,11971,2299,11365,11415,11416,11417,11418,11373,11514] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [4756,4757,4902,5227,4899,4906,4907,4912,4913,4916,4917,4903,4886,4900,4771,4673,4674,5185,5186,5189,5191,5192,5190,6775,4622,1773,1755,1764,1770,1740,1754,1780,4919,1781,1742] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [10176,10149,10578,10581,10582,10157,10168,10599,10600,10607,9827,9829,10177,10167,10637,9855,10636,9865,10601,10697,10680,10690,10681,10663,10694,10786,10693,10819,10820,10821,10571,10569] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [6084,6085,6086,6174,6121,6122,6165,6166,6167,5657,5660,5662,5671,5679,5680,5670,6066,5652,5330,5332,5358,5367,6148,6067,6054,6056,6178,6271,6305,6306,6063,6065,6092] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [3669,7567,7569,7600,7602,7593,3667,7915,3682,8419,8420,8375,8401,8374,3670] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [862,871,1643,1670,863,1174,8170,1644,1184,834,836,8155,8157,8158,1672,1688,1689] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [3887,3886,3118,3913,3117,3091,3439,1439,3429,3089,3126,1424,1426,1427,3931,3932] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [12423,10417,10419,10420,12921,12922,10432,12413,12877,12073,12075,12077,12108,12111,12101,12876,12903] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [12736,12734,12735,12772,12774,12322,12324,12326,13372,13366,12732,12733,12766,12768,12769,12770,12775,12776,12780,12800,12747,12752,12754,13365,13360,13363,12779] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [9844,9846,10208,10210,10212,10279,9983,9842,9971,9972,9973,9978,9979,9976,9985,9920,10008,10239,10250,10266,10275,10265] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [8472,8474,2268,8504,8505,11935,2275,8512,8513,8514,2279,2264,2272,11934,2276,8549,8464] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [3106,3108,3501,3510,3528,3524,3472,3474,3527,3270,3104,3511,3512,3235,3214,3245,3247,3182,3143] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [13084,13097,13102,13103,13104,11124,11125,13076,13082,11140,11146,13301,13287,11142,11145,13300,11149,13261,13262,13263,13264,13260] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [406,407,681,690,692,694,390,126,177,178,179,134,747,674,676] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [9397,9399,9400,9741,4540,9409,9414,9403,9404,9724,9725,9416,9686,9684] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [1475,3766,3796,3393,3396,3397,3596,3597,3392,3406,3599,3764,3795,1432,1448,3832,1474,1447,1442,1392,1395] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [6021,6024,6605,6610,6019,6015,6017,5579,5581,6624,6608,6609,6617,5577,5578] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [4303,4308,4311,2156,4297,4270,4112,4114,4272,2153,4273,4271,2147,4092,4094,4107,2144,2183,2131,2132,4316] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [2662,2661,2987,3002,2931,2381,2434,2432,2433,2929,2936,2945,2946,2947,2389] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [8209,8210,8215,8216,1776,4919,1798,1800,1802,8211,5210,5211,7841,5209,1779,1809,5197,5198,1837] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [7302,7791,7796,7798,7306,7790,7762,7313,6736,6739,6742,6749,6733,6734,6735,6756,7825,6754,7312,7786,7788,7295] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
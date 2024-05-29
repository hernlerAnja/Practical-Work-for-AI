
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
        
        load "data/4GYY.pdb", protein
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
 
        load "data/4GYY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [931,1474,1166,1168,1169,1485,1486,1487,1198,1199,1200,3997,3998,4014,4016,4017,1471,1501,4632,4015,947,949,926,933,929,963,965,5590,5591,1967,5586,5587,5589,5584,5592,5570,5579,5580,1966,1972,1973,5581,5585,2708,2716,3035,2715,2734,2735,4651,1476,1477,1980,1934,2517,2714,2004,1458,5596,1455,1484,5618,5620,670,938,939,5611,5612,5606,5613,5615,5616,5600,903,904,1145,1146,877,1112,2557,5595,2553,2556,2550,2551,644,645,646,884,1113,1115,1100,1098,4252,4669,4645,3983,3988,3990,3995,4026,4027,3974,4462,4254,4259,4260,4261,5566,4659,4660,4692,4649,4655,5557,5573,4467,5565,4477,1996,4480,4482,4484,4661,3036,3759,1956,1957,3754,3756,3757,4476,4231,4508,4509,4510,4511,4512,4464] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [11019,11015,11018,11020,11023,11024,6906,6908,6909,6888,6890,11028,11041,11043,7989,11014,7982,7983,7984,9429,11008,9430,11012,9427,9448,9449,9684,9685,9686,9683,9422,9415,9663,9406,10998,11005,11003,11007,7405,10092,11009,11013,7399,10091,10093,10101,9942,9943,9944,10124,9939,9940,9941,6903,8166,6932,6933,8148,8165,8167,9458,9459,10085,10064,9420,8467,8468,8457,10081,10082,10083,6365,6367,11001,10985,10989,10994,10993,10962,9894,9899,9896,10964,6100,6371,6370,11040,11044,7991,6074,6361,6363,6918,6919,6577,6600,6601,6887,6917,6916,6576,11046,6336,6545,6546,6578,11047,11048,6877,6547,9446,9447,6395,6397,6630,6631,6632,9693,9692,9687,9691,6568,6544,6309,6530,6532,6287,6379,6381,6358,6102,6335,6072,6075,6076,6077,6316,6317,6078,6285,6286,6288,7365,7366,8146,7397,7398,7404,7408,7436,7412,8140,9914,9916,9908,9909,9912] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [3713,3717,3718,3719,3709,3685,3708,3720,3747,3793,3686,3688,3807,3813,3711,3812,3829,7510,7511,7703,3803,3804,7706,3800,7479,7708,3799,3796,7717,7726,7491,7512,7472] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [1635,1667,1690,1691,1692,1660,2597,2569,2589,2540,2542,5603,5604,1637,1639,1641,5617,1636,5608,5614] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [10238,8169,8172,6896,6933,8164,10228,10231,10234,8175,7003,8178,8158,8363,8348,8352,6925,6930,7004,7006,7002,10233,6981] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [8001,8021,7123,7124,8028,8029,8030,7099,7122,11029,11032,11033,11036,11045,7070,7067,7092,7068,11037] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [2920,1549,1574,4803,4805,4806,1501,1498,2734,2731,2732,2737,4810,2931,2932,2916,2917,1571,1544,1546,1547,1572,1464,1465,1493,2740,2743,2746] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [9157,9236,2047,2059,9231,9232,2078,2276,2294,2079,2271,9228,9136,9145,9154,9155,9245,9148,9244,9156,9225,9261] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [1182,1287,1239,1250,1247,1219,1220,1221,1240,1242,1281,1284,1285,1280,1277,1278,1276,1023,1025,1026,1127,1129,1131,1316,1078,1154,1047,1045,1048,1044] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [9369,10007,10540,8646,8648,8676,10510,10511,8641,10548,8657,8658,8659,8666,8667,10572,10542,10507,10541,10545,9360,9367,9352,9351,9357] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [3209,3203,3220,3214,3216,3244,3919,3925,3926,5079,5080,5082,5083,5114,5117,3234,3226,4575,3927,3935,3937,5144,5112,5110,5113,3225,3227] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [2027,2055,5271,5264,5259,5266,2028,2251,2252,3076,3077,3078,3070,3073,5263,5265,3069,3072,3071,5250,2280,8733,2281,9234,9233,8725] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [7713,7712,7485,7459,7460,7487,7684,8504,8505,8508,8510,8501,8502,8503,10699,3785,3801,3288,3800,3802,3296,3297] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [6477,6479,6510,6586,6615,6651,6652,6653,6455,6456,6457,6458,6614,6716,6710,6559,6561,6563,6748,6671,6672,6674,6713,6719,6717] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [3605,3622,3623,7527,10745,3617,3625,7505,7539,7525,7526,7528,10772,10773,10809,10741,10779,10780,10776,10770,10767] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [5174,5179,3150,4730,3227,5173,5140,5141,5150,5142,5145,5146,5175,5177,3419,3422,5114,5118,5120,3224,3410,3407] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [3763,2250,2252,3078,3079,2021,2022,2211,3767,3788,3075,3081,2209,2210,2248] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [9421,10074,10020,10129,10103,9403,9407,9410] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [10605,10603,10569,10578,10601,8844,8846,8852,8856,8859,8582,8858,10568,10577,10570,8659,10544,10546] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [6227,6325,6432,6437,6300,6302,6429,6466,6203,6202,6413,6431,6224,6226,6200,6198] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [794,771,868,870,1034,893,795,1005,1001] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [9174,9203,9165,9191,7638,7389,10987,10965,10985] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [2513,2587,2786,2751,2531,2778] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [9766,9768,9793,9790,6657,9481,9479,9480,9801] 
set surface_color,  pcol24, surf_pocket24 
   
        
        deselect
        
        orient
        
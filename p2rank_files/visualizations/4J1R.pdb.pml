
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
        
        load "data/4J1R.pdb", protein
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
 
        load "data/4J1R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9465,9466,9489,9478,9479,7306,8478,7296,7302,7305,8484,8531,8532,8533,9588,9589,9592,9593,9594,9595,9026,9077,9477,9506,9056,8629,9031,9050,9051,9586,9587,9505,8482,9044,9448,9449,8646,9608,9616,9733,8490,8496,8512,8514,8515,8644,8499,8504,9731,9742,9734,6961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [4089,4092,4093,4094,4095,2978,2986,2988,2989,3120,2973,2970,2958,3005,3007,4116,4108,3551,3544,3006,2952,2956,4088,4006,4005,4086,4087,3118,3526,3531,3103,3948,3949,3965,3966,3989,4242,3978,3979,3977,1769,1775,1778,3558,3577,1435,2964] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [6729,6828,6829,6832,6833,6834,6835,5776,5777,5778,6826,6827,5727,6745,6746,6284,6291,6298,6296,5723,5729,5732,5725,6706,6982,6689,6317,6717,6718,10056,10062,10065,6266,6108,6271,5887,5874,6282,6288,6849,6856,5735,5741,5749,5757,5759,5760,6970,6687,6688,6851,5889,6848,9720,6973,6971,6974,6978] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [362,364,234,235,1301,1302,1305,1306,1308,252,251,253,1179,1202,1307,204,207,210,198,1219,1190,769,771,790,349,755,1218,1300,761,764,1299,200,202,757,1191,739,737,744,577] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [3141,3128,3137,3485,3486,3487,3438,2982,3144,3468,3127,3129,1419,2967,2972,2981,2990,2991,2992,2993,3000,1981,1982,1984,1980,1991,1993,2976,1413,1565,1414] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [1467,1471,1472,1473,1474,1475,1476,1477,1460,1455,1454,1487,1456,4254,4243,4247,4251,4552,4259,4260,4261,4262,4264,4274,3593,3982,3595,4276,4478,4521,806,1734,1691,1195,4241,4242] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [9759,9761,9764,10052,9760,9762,6994,6998,6999,7000,7001,7002,7003,7004,7218,7261,10021,9978,6982,6333,6722,7014,6981,9751,9743,9747,9741,9742,9754,6983,6987,9482,9776,9095,9093] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [8302,8303,8458,8435,8636,8925,8927,8316,8541,8542,8543,8544,8540,8457,8433,8456,8653,8655,8944,8945,9004,7513] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [3418,3419,2909,3110,3399,3401,3504,3129,2776,2907,2790,2777,3127,3016,3017,3018,2932,3015,2930,2931,1989] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [6244,5900,5898,6189,6170,5784,5785,5786,5787,5788,5789,5703,5678,5680,5561,5547,5548,5701,5702,5881,5882,6172] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [698,237,4201,4206,218,4328,4329,4337,4338,4340,4352,4768,194,263,4769,4770,264,193,245,246,213,4784,4786,4321,372,373,700] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [7078,7080,7508,6946,8498,8502,8508,8516,8985,8986,8987,8667,8663,8493,8517,8518,8519,8526,7517,8653,8654,8655,7092,6940,6941] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [1162,1179,1202,1307,1160,1161,210,4565,232,234,1306,1308,1321,1324,1455,1446,1447,1451,4220,4562,4556,1191,224,1329,1444,1443,1322] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [827,953,826,919,948,950,952,851,862,864,1237,1239,1240,780,782,1224,949,951,989,2515,1226] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [6353,6389,6391,6309,6354,6378,6753,6307,6475,6476,6477,6478,6479,6480,6446,6516,6751,6766,6764,6767,8033] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [22,178,153,155,357,639,641,717,176,177,356,23,36,373,375,658,263,261,264,259,260,262] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [10167,10169,10319,10320,10322,10134,10175,10176,10220,10173,10307,10100,10101,10102,9836,9835,10304,10299,10303,10292,10287,10296] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [9840,10278,10280,10271,5743,5747,5761,5762,9706,9711,9695,9700,9701,9852,6225,6227,5899,5900,5895,5897,5898,5753,5771] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [4775,4795,4779,4799,4634,4673,4676,4667,4669,4767,4720,4335,4336,4602,4783,4772,4675,4600,4601] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [7556,7557,7540,7374,7409,7407,7349,7415,7416,7460,7413,7076,7314,7342,7541,7544,7316,7537,8471,7533] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [1847,1888,1889,1882,1549,2020,2033,2035,1886,1933,2032,2016,2009] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [3738,4049,3739,3740,3776,4024,4026,4027,5276,5278,3614,4013,4011,3567,3651,3649,3613] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [9113,9239,9114,9238,9067,9524,9527,9526,9276,9549,10800,10802,9240,10792,9069,9151,9149,9138] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6259,5662,5677] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [152,137,296,732,731] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
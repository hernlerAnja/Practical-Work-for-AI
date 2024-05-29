
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
        
        load "data/5U7R.pdb", protein
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
 
        load "data/5U7R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4226,4350,4353,4774,4358,4771,4775,4779,4781,4772,4773,3885,3886,3902,4224,6279,10172,10182,10632,10637,10173,12251,12252,10174,10644,12250,4791,4793,10504,10506,10507,10508,10489,4780,4782,4783,11073,11053,11056,11057,11061,3866,11106,3883,10447,11105,10635,10656,10640,10662,10663,3890,4362,3891,3892,6004,6005,3873,3871,3872,3879,3887,4379,4380,4381,11074,11075,12160,6006,6007,6008,11070,10451,12159,3835,10450,12161,4359,4364,6278,4207,10148,10166,10167,10168,4206,4160,4164,4165,4168,4161,4824,5914,5915,12254,5913,10150,10517,10153,10154,10161,10169,10184,10185,10186,12521,10519,4354,4823,10149] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [4839,4842,4843,4844,4845,3780,3782,4049,3943,3772,3926,3927,4703,4995,4718,4719,4741,4838,4197,4344,4837,4730,4731,4397,3802,3756,3764,3765,3787,3803,3755,3748,6051,6053,6046,3744,6056,3750,3753,4396,3768,4349,4367,4371,4372,3910,4756,4757,4758,4345,4858,4860,4865,4986,4044,4045,4047,4027,4028,4046] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [7494,7913,7914,7915,7932,7916,7920,7921,1640,7934,749,750,1217,1233,1642,2864,2865,9146,9147,1650,1651,1652,1638,1633,1630,7027,7025,1085,1066,1209,1212,7026,7020,7023,1027,7012,7019,2773,9149,1024,1682,1683,2774,2771,744,725,7302,7306,7309,7965,9056,731,738,741,2867,746,752,9051,9054,745,7347,7499,7520,7521,7522,7503,7505,9145,7514,7912,7028,7367,7031,7491,7032,7013,7495,7964] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [1694,1695,1696,1577,1600,1698,1701,1702,1704,1578,1719,1562,1703,1717,1718,1726,1560,1561,1848,1854,1846,906,908,951,952,782,783,784,785,786,790,802,639,887,641,642,627,631,632,624,646,904,1203,1204,1616,1253,1617,2912,1589,1254,1256,2910,2914,1230,1231,660,662,609,610,603,614,615,623,612,1220,607,661,769,1226] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [10209,11125,11126,11127,10037,10038,10046,10047,10050,10035,10032,12309,10326,10327,10329,11140,11141,11142,10064,10308,10309,10310,10054,11117,11118,11119,11121,11120,11124,11039,11040,10025,10026,12286,12297,12299,12301,12292,12302,10479,10654,10649,10083,10084,10085,10192,10627,10031,10028,10030,10626,10207,10208,10331,10062,10631,11023,11012,11013,10678,10679,10699,10700,11148,11149] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [7978,7899,7535,7536,7538,7871,7537,6885,9192,9194,7485,7486,6942,6943,6944,7066,7067,7068,6887,6889,7976,7977,7983,7986,7872,7874,6905,6906,6891,6896,6897,7984,7490,7513,7898,7502,7508,7051,7338] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [7844,7843,8008,7986,7859,7860,7985,7999,8000,8001,8002,7188,7190,7084,7984,6906,7233,7882,7067,7068,6924,7168,7169,6921,6923,8125,8133,8126,8127,8130,8135,6909,6913,6914,8113,8117] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [10144,9938,9939,9972,10129,10126,10130,26,12513,23,9934,9935,14,4156,10149,15,12511,10519,9941,10518,10150,10517,10185,10186,10166] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [3313,4102,6228,6243,4069,4072,4074,6226,4110,4111,4066,4067,3248,3253,4112,6687,4071,3270,6685,6698,3269,3273,6683,6684,6700,3254,3255,3265] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [9369,6411,6414,6416,7208,7213,7215,7253,8031,7207,6454,3557,3559,6389,6396,6406,6410,7252,6407,6432,3544,7209,3543,3546,3542,7243,6415] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [9530,9537,10354,10356,10393,10392,10394,10366,403,10348,10349,10384,9556,402,9573,9548,9552,9555,9595,405,416,418,12474] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [743,9419,9420,7348,726,727,763,1094,1096,9417,1083,1085,1081,7298,9438,7273] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [3155,1016,7027,7365,7025,1065,1083,1085,1066,7008,9415,9420,7347,9418,7043,7045,7367,7363,3156,7376,7378,6989,6987,6988,7009,7377] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [10159,5872,5884,5885,4170,5886,4179,4618,4619,4622,4177,4595,4596,4592,4617,4182,5905,5907,5911,5909,5910,5913,4168,4169,5914] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [943,926,931,9825,9826,925,112,113,114,971,924,125,128,129,132,150,172,107,3087,3102,961,9828,933] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [743,9420,726,727,763,1094,1096,7298,9438,706,707,518,704] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [280,2977,2978,278,3040,2968,2970,241,252,245,1134,3049,2967,2962,1135,1138] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [9250,9252,7416,7417,7420,7429,6534,9331,9319,9322,6524,6523,6527,6560,6561,6562,9249] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [4235,4237,6297,3884,3903,3904,6279,3867,3868,3847,3845,6277,6278] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [12365,12354,12355,9675,9701,9703,12427,10558,10561,9668,12436,9664,12357] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [3874,3877,10451,12159,12157,12158,12118,12131,12132,12151,12153,10452,10459,10461,10878,10462,10464] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [3298,6363,6365,6437,6439,3224,3297,3296,6361,6367,6368,6362,3221,6438,3200,93,6345,6338,6340,6307] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [4385,6043,4460,4765,4420,4447,4449,5954,5956,5970] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [4412,5264,5010,5263,5265,5307,5019,4733] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [8160,8162,8406,8433,8448,7875,7552,7866,7553,8473,8475,8151] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [10667,10704,10707,10742,12202,10702,10731,12288,12289] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [1244,1279,2901,2902,2825,2828,2829,1624,1281,1284,1286,2815,1319] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [3420,3421,3419,6181,6109,6111,6118,6119,6123,6190,3386,3382,4279,4276,6103,6108,3393] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [7412,7076,7439,7441,7462,6953,6951,6952,6858,7460,6813,6814,6823] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [2007,2005,2574,2575,2578,2554,2583,2044,2041,1475] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
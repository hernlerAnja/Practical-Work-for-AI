
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
        
        load "data/8DD4.pdb", protein
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
 
        load "data/8DD4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6139,6142,6143,4565,4558,4559,4562,4563,6170,4561,6337,6110,6132,6138,6134,6320,6171,6333,6330,1253,1254,4938,6345,4595,4598,4597,4587,4590,4886,4937,4887,4888,4560,4861,6111,6114,6336,4852,4889,4890,4891,4892,5645,4855,5656,4856] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [6020,5783,5784,5786,6420,6416,6419,6422,6425,6428,5850,5851,6041,6042,7009,7012,5798,6404,6409,6322,6323,6326,6405,7011,6930,6470,6451,7008,7019,6327,6021] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [3084,3343,3344,3276,3279,3280,3264,3369,3370,3361,3364,4649,4650,3355,3353,3354,3360,3363,4657,4994,4995,4996,4993,5011,5012,4651,5018,4653,4655,7638,7696,7692,4664,7644,3357,3359,7695,7697,3302,4662,7649,7650,7646,7654,7653] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [9323,9325,9326,9327,9350,9361,9351,9295,10036,3410,10033,10035,9352,3425,3428,5001,5003,5005,3409,5012,9303,9298,9294,3266,3267,10072,10073,3442,2447,3257,3395,3435,3423,2446,3262,3264,3265,3063,9358,9336] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [8524,8530,8537,3875,4085,4086,4087,4088,4110,4111,8518,8519,8520,8536,8877,8504,3884,8867,8854,8866,8506,8502,8865,8871,8864,4077,3876,3877,4063,4071,2614,2607,2608,2610,3846,3873,3847,3833,8544,3830] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [76,91,322,325,9761,9722,318,315,316,9656,9657,9658,9724,9725,9755,9759,9762,9746,9748,9756,82,9587,9589,9590,9591,9799,84,9797,9798,9629,324,9614,9615,9616,9617,352,9577] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [6800,7456,7907,7941,7971,7938,6797,6798,6799,7191,7203,7224] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [614,591,592,593,33,207,206,34,633,634,441,442,659,678,679,680,522,525,184,185,423,521,526,528,527] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [8279,8281,8245,8246,8214,8282,10223,10221,10227,10228,10222,10257,10260,10261,10262,10263,8943,8192,8191,8193,8957,8958,8955,8985,8986,8987,8989,10297,8199,8202,8205,7153,10292,8195,8280] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [3320,3350,2581,2601,2616,3317,3318,3319,8302,8308,8296,8298,2617,8493,8512,8514,2582,2645,2646,2647,2640,3351] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [10130,3273,10108,9226,10099,10098,3277,3271,3278,3282,3265,10072,10073,9261,9263,9292,9294,9295,3283] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [5152,1220,2146,1219,2142,2148,2149,2129,1209,1211,5137,4847,4848,5627,5189,5190,1229,1231,1809,5628,5661,5688,1812,2162,5144,5148,2163,2165,5149] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [6166,6168,6171,6206,6203,6204,6205,1270,1267,1933,1268,6200,6233,6234,6237,1312,6199,4537,4538,4570,6169,1990,1991,1966,1969,1965,1962,1928,1960,1340,1956,1957,1959,1931,1332,1339] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [9134,10215,10216,9133,9135,10350,9132,10375,9095,9096,10213,7123,10252,10254,10255,7125,10211,10338,10372,10336,10337,10349,10330,10376,10377,10284,10285,9170] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [7221,7238,7266,7267,7268,7391,7264,7265,7338,7339,7319,7297,7314,7392,7393,7990,7988,7989,7986,7970,7999,8000,8002,7966,7967] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [3373,3374,963,964,965,4692,3100,3107,3113,3126,3135,4694,3142,3378,3379,3382,961,3138,947,948,949,3148,3150,3217,3387,4680,3375,3376,4704,4705,972,5030,5035,5033,5039,5043,5009] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [3289,3291,3292,3293,3312,9222,10155,10162,9191,9194,9195,9161,9162,10186,10187,10188,9234,3290,9229,9232,9228,9193,10132,9224,9225,9226,10129,10125,7115,7111] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [8765,8775,8776,8777,8834,8839,8836,8647,8840,8644,8841,8843,8695,8685,8668,8640,8651,8654,8655,8831] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [6418,6410,6411,6412,6413,6414,5677,5679,5971,5972,5995,5996,5997,5678,5970,5967,5969,6435,5968,5966,6001,6012,5634,5646,5648,6014,5654] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [6356,4950,4978,853,4975,859,5268,5271,5274,4954,4955,5243,5263,5300,5267,4927] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [6103,7028,7024,6106,6104,7021,7008,7019,6327,6404,6405,6041,6078,6338,6040] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [8396,8395,8410,3825,8394,7152,8210,8392,7766,7779,7780,7778,7819,7827,7828,7781,7174,7150,7767,8225,8226,8221,8216,8220,8219,3826,7743,7742,7768,7772] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [6013,6396,6397,5641,6014,5881,5266] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [1474,2051,2054,1450,1460,1463,1503,1504,1506,1514,5917,5918,5919,5927,5928,5929,1456,1528,1531] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [7107,7104,7106,7131,7132,7134,8239,10225,8238,8240,8272,8248,8245,8282,10223,8273,10189,10224,10226,10187] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [5657,1804,1821,1787,1819,1940,5961,5960,5679,5678,5970,1942] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [7107,7106,8239,7109,7108,7072,7095,7718,7743,7744,7741,7742,7745,7750,8237,8238,8240,8220,7158,7783,7136,7137,7147,7148,7150,7780,7781,7782,7729] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [4370,4682,4685,4383,4385,4386,4693,4695,4387,2888,2889,4396,4721,4675,4686,4690,4718,4709,3145,3168,3167,4715,4408,4410] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [695,696,72,253,255,403,406,244,63,65] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [7721,7668,7079,7081,7729,7730,7722,7720,3295,3311,7693,7107,7109,7718] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [3138,948,3215,3216,3217,3387,3100,3105,3107,3111,3126,3110,3135,3379,3188,3190,3214] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [4285,4545,4581,6179,6180,7566,6214,1275,6206,6203,6204,4544,1276,4538,4566,4567,4570] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [6875,6876,6922,6884,6885,6886,6899,6898,6900,6477,7216,7214,7230,7231,7232,7249,7259,7260] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [3489,3122,3182,3487,3187,2357,2377,2850,2359,2362,2356] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [42,9849,9846,9848,666,658,650,9494,9495,9881] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [8085,8786,8787,8755,8756,8163,8154,8089,8722,8109] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [643,654,9433,9435,645,9402,9944,9945] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        

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
        
        load "data/5XGJ.pdb", protein
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
 
        load "data/5XGJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6307,6308,6311,5623,4877,4879,4881,4843,4844,4876,4878,4880,6298,6090,6091,6314,6321,4926,4927,4875,4558,4559,4563,4565,4569,4557,4560,4534,4598,6120,6121,4570,6088,6117,4568,6110,6111,6112,5635,1341,5633,6391,6147,6148,6149,6291,2003,2004,4537,1340] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [10151,10185,10186,10187,10188,10183,7076,7761,7111,7115,7125,7127,7074,7075,7073,7079,7080,7083,7084,7085,10149,7129,7132,8187,8191,8194,8217,8227,10184,10224,7054,10216,10219,10222,7681,7707,7708,7078,7077,3245,3260,3261,7699,7700,8218,8216,8244,8214,7646,3243,7087,7059,7060,7057,7674] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [7647,7646,3235,3239,3240,3241,3242,3243,3244,3246,7087,9187,9188,9185,10093,10091,7059,7058,7060,7708,3245,3262,3248,3259,3249,10125,7096,7095,9157,10114,10116,10117,7054,7086,7083,7085,3228,7674,9196,9197] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [2576,2577,2580,2581,2588,3819,3811,3816,3818,3834,3837,4077,4078,4375,2584,4376,3888,8462,8464,8469,8482,8465,8444,8451,3826,3830,3833,3841,3843,2582,2583,2594,2595,2601,4122,2604,4121,2792,2796,3886,3887,4074,4088,8448,3860,4082,8813,8812,8814,8815,4097,4099,8449,8810,2573,2574,2575,4363,4364,4365,4362,7689,7691,3822,7682,7686,7687,3309,7677,7680,8209] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [6020,5775,5763,5764,5807,5829,5761,6996,6997,6989,6991,6987,6992,6995,6990,6998,6907,6448,6300,6301,6302,6303,6305,6382,6387,5828,6000,6082,6083,6084,6056,6383,5806,5999,6429,6431,6908,6473,6394,6400,6404,6398,6037,6040] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [7624,7632,7634,3229,3230,7675,3226,3214,3034,7628,7631,4999,5000,5001,4655,3308,7622,7623,7616,3293,3294,3310,3311,7670,3253,3314,3319,4985,4983,4984] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [3344,3357,3360,3373,3384,4984,4986,4990,4991,9227,3216,9254,9256,9996,9998,9997,10035,9995,9225,9265,9295,9287,9288,9289,9262,9994,9315,9314,3374,9350,9320,9323,9250,9260,3217,3215,3221,3214,3201,3392,3207,3209,3345,4995,5001] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [1051,3060,3061,3085,3088,3089,3092,3166,3167,3139,3164,3144,4680,4692,4694,3091,3098,3100,3064,3324,3328,3329,3054,3325,3055,3171,3326,3138,3141,4704,1034,1035,1036,4705,4703,5023,3330,3332,3335,5028,5024,3336] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [5253,5251,5252,924,5221,561,5277,5278,6340,4939,6334,4964,940,946,4943,4944,4968,4972,948,6343,6361,6363,4974,5241,5217,4916] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [3283,3285,2524,8253,7689,3270,3268,2573,2574,2575,3300,3301,2556,2591,2590,2618,2621,8455,8457,8438,2612,8273,8454,8464,3267,7680,3309,3307,8242,8243,8241,8254,8247,8248,8258] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [926,927,928,905,5195,925,919,921,594,892,894,895,896,922,710,929,930,931,711,690,656,657,658,595,659,897,5229,5230,908,5192,5231,634] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [5141,5142,5138,5177,5178,5179,5137,2220,5605,5606,5639,5149,1298,1307,4836,4837,1306,1316,1317,1318,2210,2206,2207,1880,1883,5666,5665,2202,2203,2205,2199,2200] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [6146,6149,6174,6175,6176,1357,6178,6184,6144,6177,6173,6212,6211,6222,6275,2037,2040,2041,2063,2060,2062,1999,2027,2030,2036,6266,6267,6268] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [3216,9998,2421,9997,10033,10034,10035,3384,3192,3391,3392,2413,3013,3022,3199,3211,3217,3212,3215,3221,3200] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [7129,7132,8187,8191,8194,8217,8227,10184,10224,10194,10185,10186,10187,10183,10218,10219,10222,10223,10216,10252,10253,10254,8216] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [8217,8227,10184,10194,10195,10197,8224,8137,8888,8921,8922,10185,10186,10188,10183,10157,10222,10223,8933,8214] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [1296,1208,1209,1273,1298,1307,4836,4837,5141,5142,5138,5177,5133,5137,2219,2220,5130,2210,1268] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [2006,2009,5635,2011,1341,1891,1892,1875,5656,5657,5939,5949,5938,2013,2000,2005] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [6063,6046,6047,6048,6064,6065,4976,4948,4985,4975,4977,4983,6342,6349,6356,7634,4959] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [1330,1285,1288,1333,1332,1951,1348,1952,1284,1289,4527,4530,4817,4828,4819] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [7745,7754,7758,7756,7778,7871,7805,7806,7794,7793,7803,8337,7152,7151,7797,7782,8150,8151,8161,8155,8154,8160,8164,8165,8184] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [8371,8372,3745,3743,3744,8609,8600,8597,8607,8608,8588,3866,3876,3867,8525,8526,8520,8521,8522,8523,8524] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [8781,8784,8786,8776,8777,8779,8601,8596,8599,8630,8641,8642,8778,8613,8585,8592,8722] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [3818,3834,3837,8459,8464,8466,8469,8470,8471,8472,3830,3833,7686,4365,8207,8208,8209,8473] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [4728,4394,4396,4397,4398,4684,2863,3117,4421,4407,4675,4689,4709,4715,4718,4681,4686,4693,4695,3095,4722,4727,4677] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [6181,6182,6183,6184,6144,1356,4538,1363,1362,6146,6147,6149,1357,2004,4537,4567,4569,4544] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [2333,2331,3451,2824,3133,3475,3448,3476,3137,3444,3132,3131,2336,3440] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [6167,7550,7552,7492,6816,6825] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        

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
        
        load "data/1F5Q.pdb", protein
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
 
        load "data/1F5Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [220,222,1117,1119,86,1043,644,1015,1044,643,651,465,607,627,601,597,598,599,600,602,603,205,635,642,67,116,65,115,117,78,621,623,466,1126,1111,1112,1113,1116,392] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [7543,4045,4120,4046,4004,4006,4008,4000,4036,4037,4148,3940,3946,3949,4561,4562,4122,3908,4158,4119,4121,7568,7541,7542,7538,7540,7544,7575,4576] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [4893,4894,4760,4892,4902,5418,4504,4916,4914,4919,5338,5339,4922,4513,4514,4517,4518,4519,4520,4521,4419,4895,4897,4439,4438,4507,4508,4444,4403,4661,5425,5427,5417,5411,5412,5415,5416,4691,4896,4898,4758,5410] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [4206,4238,4450,4451,4376,4379,4466,4371,4372,4448,3729,4228,4229,4230,4231,4207,4208,4209,4870,4871,4852,4825,4826,4340,4869,4338,4339,4530,4449,4511,4342,4364,4835,4833,4834] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [3677,3678,2873,3679,3464,3500,3503,3504,3505,3506,3473,941,2370,2361,1167,2351,2352,2358,2359,2360,3537,2483,3476,3477,3502,1173,1168,1171,3460,3687,3673,3674,3675,3676,3651,3688,3636,3646,3528,3635,3637,3645] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [5236,7763,5466,6587,6600,6603,6585,6714,6715,5467,5468,5470,5472,7731,7099,6588,7730,7732,7699,7702,7703,7392,7393,7391,5484,7690,7686,6745,7903,7754] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [1778,1784,1789,1790,1791,1819,1813,1818,1775,1808,1392,1394,1809,1390,2128,2137,2122,2130,1389,1399,1410,1376,2129] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [3806,2920,2923,2580,2557,2591,2592,3865,3819,3766,3767,2895,2919,2917,2896,3736,3490,3491,3475,3486,3837,3841,3479,3482,3485,2582,3465] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [6239,6324,6005,6262,5834,5842,6245,5808,6323,5811,5870,6354,6008,6295,6329,6016,6351,6352,6326] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [7143,7173,7145,7149,6812,6895,7121,7708,7711,7705,6814,8067,7122,8091,8032,8045,7992,7993,7716,7717,7962,7712] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [2128,2138,2151,2127,2132,2395,2400,2399,2171,2408,2168,2407,1421,1423,1424,1427,1415,1414,1389,1410] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [5675,5688,5691,6090,6117,6118,5698,6391,6074,6392,6384,6390,6400,5693,6109,6083,6088,6399] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [2972,3008,3011,2607,2614,2615,2636,2647,2649,2696,2968,2993,2695,2637,2638,2639,2641,3062] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [1407,1408,1215,1217,1224,1191,977,1154,1218,1212,1156,1374,1379,1380,1405,2379] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [7193,7194,7237,7198,7238,7287,7288,7254,7286,6879,6868,6869,6875,6876,6870,6871,6872,6873,6881,6928,6925,6927,7234] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [5272,5453,5490,5455,5516,5707,5706,5679,6598,5704,5700,5521,5522,5523] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [7009,7968,7943,7969,7971,7973,7941,7036,7937,7011,8480,7035,7037,8498,7980,7935,7936,7091,7944,7945,7029,7004,7031,7070,7032] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [3199,3200,294,3125,3148,3150,295,306,3195,3196,3202,3173,3178,3201,3143,317,321,322,314,328,329,281,351,3205] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [3715,3745,3747,2864,3709,3711,2803,2885,2859,2801,2802,2805,2806,2844,2775,2777,2779,2810,2772,2809,3718] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [3356,3358,3384,3382,3383,3389,2995,3048,3049,3050,3051,3009,3014,3016,3000,3084,3013,3015] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [1953,2064,2090,1716,1717,1952,1947,1948,1949,1950,2089,1713,1714,1929,1920,1921,1919,2066,2067] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [1252,1208,87,1117,1118,1119,987,1115,1003,1004,1028,1268,1132,1141] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [5439,5440,5558,5417,5416,5298,5323,5282,5281,5299,5418,4419] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [8165,8166,8346,8347,8271,8289,8262,8263,8384,8345,8134,8374] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [7370,4620,4621,5495,4610,4616,4627,4628,7425,7426,7376,4593,4594,4605,7404,7368,7427] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [6982,6987,8527,7016,7019,7024,7047,8529,6985,7495,7498,7494,7497] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [6015,6016,6328,6351,6357,6372,6012,6013,6020,6374,6362,6364,6063,6064] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [5473,6743,4705,6741,6715,6716,6745,4673,4701,4702] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [6259,6262,6324,5833,5834,5842,6242,6244,6245,5808,6323,5811] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [8404,8133,8135,8143,8378,8380,8381,8382,8383,8384,8436,8412,8413] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [1010,1011,1020,1309,1519,1520,1521,1295,1297,1560,1564,1018,675,673,1019] 
set surface_color,  pcol31, surf_pocket31 
   
        
        deselect
        
        orient
        
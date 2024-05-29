
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
        
        load "data/4W7P.pdb", protein
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
 
        load "data/4W7P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10166,10292,10164,10165,10107,10112,10113,10106,10108,11083,11111,10743,10744,10745,11186,11187,12389,11109,11110,12386,12384,10692,10545,10693,10277,10111,10440,11194,11191,11084,11094,11087,11188,10697,10720] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [3871,3872,3820,3873,3814,4898,4899,4901,4790,4801,6096,4452,6101,6102,3999,4001,4900,4000,3835,3834,4252,4397,4399,4894,3984,4404,4427,4796,4816,4818,4893,3818,4817,4451,6086,6091,6093,6080,3857] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [6978,6984,6982,9247,9249,9251,7954,7614,7616,7036,7037,8062,8063,8065,8058,8059,7965,7148,7053,7564,7615,7636,9252,9255,7164,7347,7165,7311,7163,7563,6987,7980,7981,7590,7561,7568,7416,7417,8057] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [710,805,1714,1719,639,692,693,1611,1639,1622,1612,1271,1272,1273,2922,634,635,2907,2912,2917,2923,1004,1220,1221,1715,641,820,822,694,1720,1722,1237,2916,1637,1638,2914,1073,1074] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [115,117,138,6692,3266,3267,3268,3264,3229,3230,3231,3232,3233,3234,3134,3122,3227,3228,3258,191,192,3126,532,3128,3123,3119,3289,113,3291,183,184,109,110,108,114,176,177,134,3257,9339,9341,9342,3140,3141,3138,9326] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [6394,6396,9664,12604,12609,12603,12615,6392,6393,6368,12619,12622,6430,6431,6432,9656,9587,9589,6455,6421,6422,10004,6389,6391,9663,10008,9649] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [6480,9454,9457,9448,6535,9458,6520,6452,6477,6527,6458,6460,6481,9561,9520,9560,9518,9521,9522,9523,9524,9525,9584,6533,6534,6875,9461,9463,9550,9551,9553,9508,9509,6869] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [49,79,3369,3371,6332,6334,78,45,36,37,51,53,6329,50,3705,3288,112,3363,3370,3711,3715,3392,6328,3294,3296,3356,88] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [10394,10396,10397,11207,11208,11209,10128,10293,10294,10116,10118,10119,11192,11193,11194,11056,11191,11072,11094,11216,10310,10136,10140,10143,10147,10148,10298,10131,10127,10149,10150,10166,10146,10135,10145] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [7266,7269,7264,7265,7267,7263,8078,8079,8080,7164,7165,8064,7163,8087,7037,8062,8063,8065,7965,7927,7942,8217,7943,7015,7017,7002,7013,7181,7018,7007,7008,7011,6998,6999,7268,7256] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [4898,4899,4901,4801,4779,3873,4103,4017,4104,4105,4914,4916,3999,4001,4900,4000,3847,3848,3849,3851,3835,3843,3834,4923,4763,4778,5045,5046,5053,5044,3854] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [1112,1113,797,798,799,1098,1097,3193,3195,3196,761,760,3231,3232,3233,3234,3134,3198,3123,3140,3148,3157,3161,3138,3139,3202,3204,9326,3167,3171,3174,779,3168,3169] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [1720,1721,1584,1722,1744,1867,1868,821,822,694,838,656,1865,1599,1600,1874,646,647,655,1735,1736,921,922,1737,924,668,671,913,673,659,664,1622] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [6357,10208,10233,10232,10249,10251,10253,6397,6369,12628,12629,10583,10584,6359,10271,10585,10269,10569,10570,10572,10573,10206,10270,12615,10574,6354,6361] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [9416,6499,6541,9421,9901,9902,9904,6503,6506,7321,7288,7290,7291,7292,7293,7285,7286,7287,7289,9423,9915,9917,6520,6495,6521,6477,6479,6484,6486,6487,7363,9448,7330,7362,7329,7331] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [3339,3340,3342,4129,4157,4127,4119,4120,4131,4165,4166,4167,3323,3320,3321,3322,3315,4122,4124,4121,4123,4126,4139,429,430,6292,444,445,6287,432,6294,3331,3357,3377,6309] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [9670,12567,12569,10450,10459,10460,9614,9615,9624,9628,9630,9608,12584,9650,10414,10420,6775,12562,10422,9635,9632] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [7230,7232,7258,9396,9398,9399,9400,7219,7220,7221,7254,7255,7256,9869,7287,7289,7279,7259,7266,7280] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [3113,3103,136,978,986,987,988,1019,152,142,143,198,3088,950,3611,156,160,163,942,943,945,948] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [4093,4094,4056,395,396,397,4115,4116,4123,4125,4095,393,430,431,6267,6271,399,6283,4068,6281,6270,4066,4062,4064,6269] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [6651,6652,9377,6624,3164,9304,9299,9305,9308,6609,6650,7498,9386,6612,7494,7495] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [3077,936,883,887,914,915,923,876,877,882,3061,3064,3065,3576,3552,916,937,944,946] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [3992,4009,3785,3881,3882,4326,4353,4376,3742,4375,6136,4355,3740,3741,3762,3763,3781] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [9748,9780,9781,9739,10624,9779,10627,12532,12454,9753,12523,12450,12451,12461,12479,12472,12478,12520] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [9470,7441,7445,7455,7124,7140,7454,7456,7142,7122,9469,9471,7443,9488,7104,9486,7102,7103] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [307,2991,308,309,2970,3042,2969,2980,1151,1152,1153,1155,3051,2973,2965,266,267,281] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [1890,1899,2170,1875,1606,2127,2128,1901,1287,1288,1614,1615] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [2589,1494,2579,2580,2581,2583,2048,1513,2009,2010,2045,2559,2011] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [8462,7630,7631,7957,8218,8242,7958,8233,8244] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [3939,3940,3978,3914,3916,14,15,16,17,4292,4291,3958] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [7858,7837,8344,8345,8346,8383,8918,8924,8894,8915,8914] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [11086,11347,10760,11087,11371,11599,11641,11642,10755,10759,10783,11362] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [561,563,702,813,830,1196,1197,1147,1174,1176,584,562] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        
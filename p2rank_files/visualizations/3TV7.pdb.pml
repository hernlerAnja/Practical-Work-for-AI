
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
        
        load "data/3TV7.pdb", protein
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
 
        load "data/3TV7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1263,1632,1602,1604,1605,1264,1266,1240,796,1712,1713,1631,1707,1213,794,795,1241,1218,1236,1066,2922,2924,609,611,613,779,666,667,668,615,616,618,620,629,1610,1708,1709,1615] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [10277,10279,10269,10270,10274,10275,10276,12583,10455,10875,10327,10328,10329,12578,12588,10926,10456,10874,11265,11276,11266,10457,10622,11369,11370,11375,11373,11374,11376,11368,10727,10902,11292,11293,10901,10891,10897,12585,12587,10440] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [9722,9723,9724,6597,9615,9617,9685,9686,9687,9688,9689,9690,6589,6598,6515,6523,9634,6596,6584,9673,9713,9714,9683,6932,6938,9680,9681,9684,9745,9747,6519,6590,9616,9618,9619,6955,7536,7537,7538,9613,9612,9624,9630,9633,6985,7144,6948,6949,6952,7145,9676,9677,7159,7160,7204,7185,7186,7187,7205,7143,7166,7167] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.333,0.702]
select surf_pocket4, protein and id [3840,3842,4469,4860,4861,6153,6155,4833,6151,3838,3844,4494,6149,6146,6156,4295,4937,4938,4936,4941,4942,4023,4025,4943,3858,3859,4442,4008,4443,3895,3896,3897,4447,4465,4470] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.376,0.902]
select surf_pocket5, protein and id [7099,7100,8144,8145,7646,8063,8139,8047,8140,7048,7043,7047,7045,7650,7668,7672,7673,7211,7662,9363,7041,7697,8036,8037,9354,9356,9358,7671,8064,7050,7061,7062,8040,8146,8147,7226,7227,7228,7224] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.306,0.278,0.702]
select surf_pocket6, protein and id [53,23,31,34,54,3729,25,3739,3735,27,4335,3752,4334,3942,24,26,28,29,3941,3964,3745,3749,3781,3783,3940,4002,3982,3984,3963,50,62,52,6431,3312,3318,3320,3386,3394,3395,6412,6414,3380,6430,4333,6410,6411,6413,6415,6416,87,3387,3313,3311,3322,1,3957] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.443,0.361,0.902]
select surf_pocket7, protein and id [3186,3257,3258,3282,506,3248,3251,3253,3281,3255,165,510,3292,3256,3252,3315,3285,3286,3289,3290,3291,735,1102,1104,1105,1106,523,711,713,709,3184,3185,520,3187,516,517,773,500,3241,3245,727,728,712,552,553,3181,3202,3180,3177,3192,83,157,158,166,150,151,91,108,107,152,89,93] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.384,0.278,0.702]
select surf_pocket8, protein and id [9827,12841,12846,9825,9826,12842,12843,12844,10184,10765,10767,12845,10766,10434,6516,6519,9818,6495,6444,6435,6436,6440,10373,10374,10396,10395,6482,6488,6454,6484,6483,6489,12859,12861,12862,12863,10415,10416,12847,12848,6485,10171,10177,10178,10181,6518,9848,10161,6447,6448] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.541,0.361,0.902]
select surf_pocket9, protein and id [4022,4023,4025,4944,4966,4943,3858,3859,3861,5078,4937,4941,4942,4024,4143,4145,4041,4144,4146,4148,4147,3871,3874,3876,4957,4958,4959,4960,4142,4124,4125,5072,5074,3897,4805,4822,5081,5087,5088] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.463,0.278,0.702]
select surf_pocket10, protein and id [796,1713,1715,1714,914,915,917,918,919,896,795,645,647,648,1593,629,630,632,668,812,640,642,643,649,644,913,1577,1730,1737,897] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.643,0.361,0.902]
select surf_pocket11, protein and id [8168,8290,8291,8146,8147,8009,8294,8299,8025,7061,7062,7064,7100,8145,8047,8037,7074,7244,7077,7079,7345,7346,7351,7347,7349,8161,8162,7227,7228,7311,7313,7328,7329] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.537,0.278,0.702]
select surf_pocket12, protein and id [10575,10293,10576,10578,10580,11237,11391,10457,11375,11389,11390,11392,11374,11376,11254,10291,10456,10308,10557,10306,10303,11520,11504,11506,11393,11396,11398,11236,11522] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.741,0.361,0.902]
select surf_pocket13, protein and id [12770,10805,10806,10809,9901,9902,9903,9904,12692,12694,12761,12758,9916,12767,9942,9943,9944,12708,12679,12682,12684,12717,12716,12704,12685,12688,12689] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.616,0.278,0.702]
select surf_pocket14, protein and id [7367,7368,7369,7370,7373,7375,7366,7412,7443,7410,7402,7403,6562,6565,9578,6604,6558,6542,6547,6549,9576,6568,10064,10065,10067] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.843,0.361,0.902]
select surf_pocket15, protein and id [4374,4373,6260,6338,6256,6257,6267,6252,6253,6326,6329,3510,3512,6285,6284,3472,3469,3484,4377,4385,4386,3497] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.694,0.278,0.702]
select surf_pocket16, protein and id [10596,10597,10599,10602,10604,10631,10595,9796,9797,9798,6851,9791,9794,6835,6836,6838,10598,12805,12807,10632,9777,9778,9787,10639,10640,10641,10672,9771] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.859]
select surf_pocket17, protein and id [3038,3028,3026,3027,243,1145,1148,3022,240,283,281,3055,3031,1144,3097,255,3100,3109] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.627]
select surf_pocket18, protein and id [10829,10831,12666,12667,12668,12634,12637,12635,10508,10478,10479,10301,10302,10296,10297,10310,10311,10319,10462,10465,10338,10320,10321,10322] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.757]
select surf_pocket19, protein and id [7082,7249,7250,7600,7601,7602,7072,7081,7236,9406,7056,9407,9408,7090,7091,7093,7083,7067,7068,7092,9440,9421,9431,9432,9436,9439,9443] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.553]
select surf_pocket20, protein and id [4165,4167,4169,4170,4171,4172,4199,4200,4163,4168,4240,4164,4166,4207,4208,4209,3346,3362,3363,3364,3365,3366,403,404,406,3355,3401,6375,3339] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.659]
select surf_pocket21, protein and id [4398,3890,4397,4399,6205,6204,3879,4046,4047,6233,3887,4033,3869,3878,3864,3865,4076,4073,6202,6236] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.475]
select surf_pocket22, protein and id [582,3007,558,559,1140,1157,1169,536,537,677,659,661,1190,1188,1167,676,786,804] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.561]
select surf_pocket23, protein and id [6714,9520,9532,6671,6672,6687,9541,6673,6675,9487,9470,6713,6715,9456,9459,9454,7580,9460,9461,9463,7577] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.396]
select surf_pocket24, protein and id [110,970,971,978,979,980,934,115,118,116,117,134,936,937,938,941,935,135,137,3146,943,172,3139,3144] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.459]
select surf_pocket25, protein and id [6236,3766,3765,3787,4015,3810,3904,3905,3906,4369,4417,4033,4396,4398,3890,4399,4419,3803] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.318]
select surf_pocket26, protein and id [4452,9983,9984,4304,4450,4472,4922,4923,4263,4266,6014,4451,4259,4874,4883,4885,4892,4875,4877,9949,9950] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.361]
select surf_pocket27, protein and id [3012,3000,3008,1170,2976,3005,3007,3011,2973,660,640,649,650,636,846,804,658,839,818,843,832,817,1168] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.318,0.278]
select surf_pocket28, protein and id [10957,11300,12486,12503,12488,10990,10991,12498,12501,10952,10955,10915,10923,10949,10980,12576] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.459,0.361]
select surf_pocket29, protein and id [11169,11719,11681,11682,11680,11716,11166,11165,11148,12251,12254,12259,12269] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.396,0.278]
select surf_pocket30, protein and id [4525,4483,4517,4491,4519,4523,6056,4557,4548,4520,4559,6071,4481,6144] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.561,0.361]
select surf_pocket31, protein and id [8312,8315,8611,8612,8325,8568,8569,8570,8300,8039,8040,7712,7713] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.475,0.278]
select surf_pocket32, protein and id [11252,10942,11268,11269,11799,10941,11541,11544,11833,11866,11555,11839,11840,11835,11527,11529,11552,11554,11528] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.659,0.361]
select surf_pocket33, protein and id [4510,4836,5367,5109,5110,5112,5122,5123,5408,5096] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.553,0.278]
select surf_pocket34, protein and id [12710,6010,5985,4722,4719,4251,4257,4268,4260,4261,4267,4718,4275,4277,4280,4695,4696,4692,4717] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.757,0.361]
select surf_pocket35, protein and id [10800,10801,10465,10849,10198,10243,10337,10338,10447,10352,10220,10197,10219,10828,10830,10815,10814] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.627,0.278]
select surf_pocket36, protein and id [7620,7108,7109,7236,6968,7014,7218,7219,7601,9439,6990,7589,6969,7622,7599] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.859,0.361]
select surf_pocket37, protein and id [1883,2179,2180,2137,2136,2138,1893,1880,1607,1281] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.694,0.702,0.278]
select surf_pocket38, protein and id [9001,9025,9022,8451,8452,8453,8487,8490,7919] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.843,0.902,0.361]
select surf_pocket39, protein and id [4746,4735,5250,5248,5249,4716,5822,5826,5287,4737,5802,5819,5798,5818] 
set surface_color,  pcol39, surf_pocket39 
   
        
        deselect
        
        orient
        
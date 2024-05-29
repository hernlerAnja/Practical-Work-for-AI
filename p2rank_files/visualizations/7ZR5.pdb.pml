
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
        
        load "data/7ZR5.pdb", protein
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
 
        load "data/7ZR5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6052,5438,5906,6039,6048,6059,6060,5437,5439,5435,5436,5768,6436,6437,6438,6062,6070,6071,6072,6074,6078,6080,6082,6454,6177,6452,6065,6066,5896,5903,5856,5857,5908,5859,5798,5866,5867,5868,5797,5430,5413,5434,5440,5441,5444,5753,6055,7813,7811,7812,6036,5415,5417,5752,7794,5327,5407,5408,5409,5397,6030,5458,5455,6037,5912,5916,5917,5909,5910,5911,5486,5488,5463,5786,5788,5799,5828,6033] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.416,0.702]
select surf_pocket2, protein and id [303,304,305,322,324,301,302,307,308,311,326,330,635,327,949,284,306,945,620,1321,1305,654,664,665,666,653,655,658,1303,1304,734,735,1044,1045,632,271,297,298,280,269,2442,262,264,275,896,897,902,903,774,783,904,905,784,922,915,919,926,927,906,928,930,932,933,937,938,941,939,763,724,770,727,775,776,777,778,779,695,929,723,729,2696,2697,2699,2700,900,2681,274,276] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.490,0.902]
select surf_pocket3, protein and id [120,142,6069,140,184,185,149,151,5317,5318,5276,935,936,5253,7798] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.349,0.702]
select surf_pocket4, protein and id [10175,10181,10204,10205,10206,5062,5089,5091,15010,15045,4825,15046,15017,15019,10185,10208,14980,14983,14985,5021,5019,5020,5063,5064,5065,10147,10144,5022,4855,5092,10178,5087,5093] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.408,0.902]
select surf_pocket5, protein and id [9010,9011,9012,8610,9507,9509,9510,9515,9503,9516,10034,9514,9459,9447,9453,8870,8897,8899,8900,8901,9528,9490,9021,9469,9488,8604,8598,8998,8593,8595,8894,8892,8981,8928,8929,10033,8698,8699,9441,10032,10036,10037,8683,9519,8608,8623,8656,8624,10038,8605,8664,8682,8657,10028] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.282,0.702]
select surf_pocket6, protein and id [16715,15814,16045,16044,17036,16823,17033,15543,17032,17040,17041,17055,16820,16819,16130,16131,16054,16055,15560,17219,16093,16092,16094,15779,17218] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.396,0.361,0.902]
select surf_pocket7, protein and id [4840,4145,4146,4837,4860,4862,4318,4864,4610,4317,4309,4681,4680,4624,4626,4631,4627,4115,4705,4088,4090] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.341,0.278,0.702]
select surf_pocket8, protein and id [8985,8984,8921,8366,8367,8802,8822,8456,8455] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.482,0.361,0.902]
select surf_pocket9, protein and id [3489,3491,3495,3500,3544,3897,3898,3503,3543,3542,3551,3546,4402,4925,4397,4401,4936,4394,3507,4395,3569,3570,3582,3584,3585,4914,4915,4918,4919,4920,4921,4923] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.408,0.278,0.702]
select surf_pocket10, protein and id [9604,12568,12569,12581,12585,12586,9607,9614,9621,13032,13033,12571,2267,2279,2310,12570,13023,13029,13031,2273,9500,9565,9611,9610,9641,8879,12556,2294,12557,2298,9598,2295,8881] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.565,0.361,0.902]
select surf_pocket11, protein and id [8240,12575,12576,12578,12572,12573,12574,12577,2309,2336,12561,12571,2279,2282,2308,2310,12560,12579,13023,13024,13070,13071,13072,2273,2274,10446,10447,2335,2334,10421,10423,10456,10457,10444,10445,2324,8241,2327,12562] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.475,0.278,0.702]
select surf_pocket12, protein and id [3908,3784,3868,3814,3815,3497,3481,3482,3781,3480,4377,4375,4390,4395,3756,3757,3787,3884,3885,3906,3907,3874,3878,3880,4396] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.651,0.361,0.902]
select surf_pocket13, protein and id [13555,13556,13557,13522,13127,13121,13189,13151,13191,13161,13165,13166,13447,13448,13601,13609,13592,13598,13579,13580,13129,13321,13130,13131,13767,13768,13770,13578,13775,13529] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.541,0.278,0.702]
select surf_pocket14, protein and id [3782,3872,3804,3253,3254,3709,3342,3808,3231] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.737,0.361,0.902]
select surf_pocket15, protein and id [12711,12763,12710,12658,12659,12762,12720,13014,12718,12787] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.604,0.278,0.702]
select surf_pocket16, protein and id [12426,12016,11890,11917,11921,12012,12013,12009,11980,11982,11913,11915,12433,11986,11984,11891,11892,11864,12073,11863,11898,11900,12425,12427,12484,12461,12463,12462,12483] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.820,0.361,0.902]
select surf_pocket17, protein and id [161,164,7849,10274,10315,7772,994,189,199,158,167,7850,7851,7854,7857,7858,202,203,204,7845,10272,10273,10282,10283,10286,10298,217,219,220,205,212,990,1364,988,978,10316] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.671,0.278,0.702]
select surf_pocket18, protein and id [7642,7955,7965,7922,7921,7926,7931,7956,7662,8251,8250,8272,7641,8239,8243,7638,7632,10385,10384,10382,10383,7607,10365,8263,10368,8264,10364,8246,8252,8253,10381,10486,8265] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.894]
select surf_pocket19, protein and id [9977,9973,9259,9948,9950,9952,9737,9738,9740,9975,9256,9257,9255,9325,9723,9350,9292,9261,9266] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.663]
select surf_pocket20, protein and id [3710,3712,3713,3715,3724,3245,3236,3748,3747,3250,3723,3725,3057,3058,3092,3023,3025,3263,3320,3265,3321,3019,3031] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.812]
select surf_pocket21, protein and id [7790,7831,7832,2677,2691,2718,2719,7804,7820,5336,7824,202,179,7789,2684,7797,7848,176,177,2690,198,186] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.596]
select surf_pocket22, protein and id [10029,10030,8699,9429,10035,10005,10007,5045,5046,9417,8688,10028,5007,4984,4985,5015] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.725]
select surf_pocket23, protein and id [10462,12595,10446,10447,10450,12594,13003,13005,12579,13022,13070,13072,13099,13098,13006,8913,12578,13097,8912,10467] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.533]
select surf_pocket24, protein and id [2385,2386,1993,2387,2453,1984,1988,1990,1992,2448,2404,2406,1556,1558,1559,1527,1540,1518,2451,1509,1544,1547] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.643]
select surf_pocket25, protein and id [15809,15818,15821,17212,15569,15570,15573,15604,17204,15603,17435,17222,15825,15834,15836,15591,15585,17455,15589,15826,15564,15566,17232,17234,17223,17456,17457,17460,17233,17459] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.467]
select surf_pocket26, protein and id [2589,2590,2599,1994,2211,2213,2214,1993,1958] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.557]
select surf_pocket27, protein and id [13373,13375,13607,13606,13608,13372,13374,13376,13371,13624,13625,13742,13602,13342,13370,13739,13745,13771,13747,13740,13769,13770] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.400]
select surf_pocket28, protein and id [9671,9673,9639,9640,9500,9611,9641,12590,12597,9642,13025,13026,13029,13031,12586,9621,13032] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.475]
select surf_pocket29, protein and id [7500,6651,7564,6680,6681,6642,7499,7563,7565,7562,6649,7561,7103,7721,6691,7519,7106] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.333]
select surf_pocket30, protein and id [12250,12056,12030,12031,11678,11737,11738,11739,12065,11699,11700,11701,12252,11622,11623,12034,11736] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.388]
select surf_pocket31, protein and id [12505,12506,12522,4476,4491,4493,4504,4528,4387,4569,4451,4452,4531,4534,4535] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.290,0.278]
select surf_pocket32, protein and id [12334,12332,12335,12336,12085,12363,12365,12356,12357,12359,12360,12080,12082,12084,12241,12393,12394,12497] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.416,0.361]
select surf_pocket33, protein and id [12344,12345,12025,12366,12276,12274,12026,12368,11677,12272,11674,11675] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.357,0.278]
select surf_pocket34, protein and id [7360,7368,7377,12162,12161,12192,12193,4529,12146,12199,12198,7381,7382,7384,7386,12227] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.502,0.361]
select surf_pocket35, protein and id [14456,14459,14464,14465,14467,14468,14455,14466,14400,14398,14469,14441,14442,14438] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.424,0.278]
select surf_pocket36, protein and id [12625,12626,13429,13130,13133,13145,12963,13144,13146,13141,13143,12979,12978,12628,12630,13430,12627,12629,13111,13113] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.584,0.361]
select surf_pocket37, protein and id [11737,11738,11739,11767,12064,12065,12101,11829,12063,12092,12061,11789,11790,11793,12176,12177,11795,11796,11797,12175] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.486,0.278]
select surf_pocket38, protein and id [15971,15726,15727,15983,15985,15469,15445,15511,15459,15449] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.671,0.361]
select surf_pocket39, protein and id [7707,7708,7375,7118,7112,7113,7111,7083,7130,7340,7357] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.553,0.278]
select surf_pocket40, protein and id [8861,8828,8837,8363,8365,8358,8369,8376,8349,8434,8435,8205,8170,8138,8132,8835,8836,8838,8826] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.753,0.361]
select surf_pocket41, protein and id [15278,15312,15064,15065,15083,15047,15077,15338,15066,15068,15113,15114,15115,15111,15280,15276,15279] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.620,0.278]
select surf_pocket42, protein and id [2547,2549,2875,2578,2559,2902,3083] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.839,0.361]
select surf_pocket43, protein and id [8879,8903,9530,9497,9565,9566,9495,9674,8904,12585,12587] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.686,0.278]
select surf_pocket44, protein and id [10618,11137,11136,10645,10646,11099,11100,11101,10612,10613,10616,11168,11138,10647,10648,10649,11068,11113] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.878,0.902,0.361]
select surf_pocket45, protein and id [4316,10158,10159,4304,4305,4887,4890,4892,10097,10121,10120,3575,4916] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.647,0.702,0.278]
select surf_pocket46, protein and id [5417,5738,5752,5734,6469,6470] 
set surface_color,  pcol46, surf_pocket46 
   
        
        deselect
        
        orient
        
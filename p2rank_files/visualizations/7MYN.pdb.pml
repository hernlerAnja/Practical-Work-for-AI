
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
        
        load "data/7MYN.pdb", protein
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
 
        load "data/7MYN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6243,1346,1347,2031,2032,2033,2034,2035,4659,4661,4662,4663,4654,4630,6394,6245,6387,6403,6184,6206,6208,6212,6213,6216,6217,6244,6417,4973,4975,4977,5719,5728,5729,4972,4974,4976,5730,4939,4940,4942,6410,5022,4694,5023,4655,4656,6182,6407,6409,5723,6404,6242,6271,6278,6279,6270,6272,2092,2030,2067,2068,2071,2072,2101,1359,1360,1361,2060,2061,2062,1362,6276,6307,6308,2093,6319,6390] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [7105,7109,6544,6978,6567,6568,6569,7003,7004,7091,6490,6496,6494,6525,7093,6401,7095,7107,7087,6400,6483,6094,5924,5925,6495,5860,6115,6116,6479,6478,6095,5857,5858,5872,5903,7067] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [5079,5080,5081,5095,5096,5097,3455,3170,3366,3430,3350,3362,3365,3447,3450,3368,5073,7720,3429,3442,3441,3444,3388,7776,3371,7772,7774,7775,7726,7728,7732,7736,7738] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [3460,3471,5119,1057,4799,4801,3234,3236,3315,3464,3465,3468,3472,3473,3190,3191,3301,3302,3303,3196,3224,3227,3228,3275,3193,3200,4776,4788,4790,3180,3462,3186,5128,4767,5094,1040,1041,1042] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [8515,8504,8495,8513,8514,8516,8531,8532,8533,4216,4218,4217,4189,4192,4194,4195,4196,8502,8494,8501,8498,8500,8865,8861,2692,2693,2694,2695,2696,4170,4184,2706,2707,2713,2716,2905,2908,2904,3984,3957,4178,3980,8874] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [6874,6875,7262,7292,6899,6900,6901,7240,6873,8009,8010,8021,8011,8044,7987,7989,7300,8023,8053,7538] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [3405,8257,8258,8266,8295,8292,2686,2687,2703,8267,8269,8298,8288,8489,8508,8515,7784,7793,7785,7801,3403,3404,3406,3407,3415,3418,3419,3437,2667,2668,2702,3436,2731,2733,8303,8304,8305,3443,3445] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [10084,10086,3527,3528,2526,10085,3152,3158,10049,3351,3352,9307,10114,3521,3335,3336,3347,3354,3357,3358,10113,9239,10145,3149,3360,10121,10144,9275,9277,3348,3369,3509] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [6486,6487,6488,6042,6031,6033,6040,6511,1347,2031,2033,1923,2042,2044,6035,6034,2037,5728,5729,5731,5751,5752,5753,6070,6044,6041,6043,1906,5730,6485,6075,6059,2030,2115,2071,2072,6382] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [9308,10049,3351,3352,9305,9307,3480,3481,3521,3343,3345,3353,9339,9337,9338,9340,5067,5082,5086,5087,9315,9316,9278,3357,9375,3496,3493] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [714,934,935,937,663,696,697,901,903,5357,690,694,662,700,676,698,699,5358,715,640,911,12,16,10,5323,5288,936,5289,5290,5324,5325,5326,5297,5300,5653,5327,5348,5349,5626,5652,5658,5659] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [4932,4933,5243,2238,1312,1313,1323,1324,2241,2233,2237,2234,2236,5273,5275,5701,5702,1914,1322,5272,5274,2250,2251,5234,2231] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [2692,2693,2694,2695,4174,2696,4170,4184,8515,8513,8514,8531,4459,4460,4461,7793,7795,3922,8225,3940,4173,8520,8538,8526,3937,3983,3984,8540,3907,3918] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [5060,5039,5040,5374,952,5373,5345,5317,6430,6436,6434,6458,5337,5035,6439,6442,6443] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [10274,8275,8276,8188,8278,8189,8985,8241,8242,10275,10240,10241,10244,10245,8983,8984,10273,8939,8944,8982,8187,10211,8271] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [4913,1290,1291,1292,1294,1338,1339,4924,1330,4896,4914,4915,4623,4624,4625,4626,1206,1202,1268,1269] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [2685,2686,2687,8257,8258,8259,8260,8521,7786,7793,7790,7797,7795,4460,4461,3913,3914,8225,8520,3912,3915,3918] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [3315,3465,3468,3473,3190,3191,3301,3302,3303,3196,3224,3227,3275,3193,3297] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [889,890,895,896,891,894,865,869,870,605,607,868,579,580,581,585,599,600,601,924,970,977,978,981,1010,587,964,967] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [3380,3381,3376,3377,3378,3379,9238,9236,10167,10168,3382,3385,10176,10201,10202,9237,9239,10145,10143,10142,9235] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [5985,5988,6002,1882,2155,2156,1567,5989,1566,1574,2160,2170,2171,2172] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [2974,2975,4781,4789,4791,3253,3254,2972,4778,4805,4811,4814,4493,4494,4501,4824,3231] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [5081,6445,6446,6452,5071,5072,5073,6161,7738,6144,7753,7732] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [7775,7785,7175,7778,7803,7804,7811,7812,8269,3381,7173,7176,7750,7177] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [4641,1368,1369,6251,6277,6280,6319,6254,7648,4392,4643,6288,4677,4640,4665,4634,4666] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [9670,9783,9641,9809,9564,9773,9775,9603,9604,9565,9590,418] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [8187,8180,8953,8951,8952,8954,8198,8209,10311,10313,10310,8189,8985,10275,10273] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [8773,8640,8837,8652,8832,8835,8761,8826,8650,8655,8656,8664,8693,8636,8681,8692,8647] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [1954,2185,2186,2220,1261,1263,1950] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [4298,4307,3742,4299,3736,3770,4059,4061,4062] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
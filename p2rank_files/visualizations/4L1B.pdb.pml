
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
        
        load "data/4L1B.pdb", protein
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
 
        load "data/4L1B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4984,4985,4986,4987,4988,4989,4990,5732,6420,6423,6221,6417,6407,6400,1335,4952,4953,4954,5751,5742,5743,6199,6200,6430,5035,6432,5036,6226,6229,6230,4678,4669,4670,4666,4667,4668,4672,4707,6197,4705,4699,4696,6256,6257,6258,1334] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [3330,3331,9374,10115,10117,2536,10154,9384,3460,3472,3475,3488,3499,2520,3507,5093,5095,5099,5100,3459,9406,9407,9408,9379,9442,10182,10153,5110,3322,3324,3326,3332,3327,3314,3329,3333,3316,3506,3315,3137,2529,3128,10213,3336] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [6109,6491,6492,7090,7082,5872,6108,5938,6508,5873,6503,6509,6513,6515,6512,6540,6999,7000,6507,6127,6129,6165,5915,5916,6193,7083,7084,7089,7088,6413,7079,6409,6410,6414,7063,7081,6557,6490,6411,6496] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [7151,7152,3353,3355,3356,3358,9304,9306,9307,10212,10210,10235,7150,7750,7146,7176,7177,7178,3360,3377,3374,10244,7185,7187,7175,9276,10233,7180,9242,9243,10268,10231,10232,7738,7739,3350,7767,3357,10213,7740,3364,9315,7114,9313,9314,9316,7188] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [8581,8582,8583,8584,8601,8563,2703,8570,8572,2716,3947,3952,3997,4186,3950,3995,3996,4184,4187,2697,2699,4216,4218,4196,4197,4201,2698,4202,4210,4209,2714,4224,2708,2709,2710,4231,4229,4230,2907,4183,4191,8931,8932,8942,8565,8567,8568,8929,3993,4208,4207,4473,2691,2695,4472,4474,3942,3943,8588,3939] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [7814,7852,7853,7788,7791,7792,7813,8333,8334,8336,8300,8306,8284,7818,7130,7138,7170,7178,7179,7203,7222,7223,7224,10270,10306,10307,10304,7165,7192,7201,10268,10297,8310,8313,7169,7207,7219,7220,7167,7773,7794,7799,7789] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [7716,7724,5109,3419,3420,3425,3426,3345,5110,3408,3409,3322,3329,3149,3316,7715,7720,7723,7708,7714,4763,4764,4762,3434,4760,3423,3421,7726,7764,7766,3341,3344,3336,3335,3340,3368,3330,5092,5093,5094] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [1045,4789,3215,3282,3441,3439,3443,3444,3179,3447,3450,4812,4814,4813,1029,1030,3200,3203,3206,3254,5131] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [5330,918,940,942,5362,5360,5361,555,6471,6472,5386,5387,5053,5048,5052,5073,5077,6449,6452,6455,6442,6443,5081,5084,6445,5350,6447,5025,5326] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [5714,1915,1916,1919,5775,4946,1300,1310,1311,1312,2240,2236,2255,2256,5715,5748,1298,1301,4945,5250,5285,5286,5287,5288,2272,5246,4943] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [6255,6256,6258,2097,2099,6253,2035,4679,1351,2065,2066,2036,2038,2040,2096,6280,6286,6287,6291,6292,6293,6320,6321,6322,6331,4677,4678,6282,6283,6284,6384,6403,6285,6323,6375,6376,6324,2076,2105,2107] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [6301,7613,7615,4388,4389,4656,1362,4647,4653,4655,1356,1357,1358,6290,6291,6292,6293,6332,6330,4679,1350,4646,6267,7633,7636,4676,4690,4404] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [3384,8362,8372,8366,8367,8371,8373,8557,3383,3382,2690,2706,2705,8576,2670,2671,2736,3415,3394,3397,3398,3400,3416,8574] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [8309,8313,10343,8346,10341,8343,8345,9040,9041,10313,10316,8256,9007,9012,7223,7224,10307,10302,10303,10304,10308,10309,10278,9053,9045,8339,8306,8308,8333,8334] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [56,1,9451,539,541,542,544,545,546,28,30,9483,9480,36,38,40,37,9449,9450,9477] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [3384,8361,8362,7769,7772,7774,3385,3383,3382,2688,2689,2690,2692,2706,2705,8576,2670,2671,3415,3394,3397,3416,3424,7781,7783,3422,8583] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [7778,7785,8328,3944,3946,8327,8326,3943,3928,3925,3927,4473,2689,2690,3931,4474,7779,7780,3920,7781,7783] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [6498,6505,6083,6085,6088,6072,5763,5765,5766,6059,6499,6500,6501,5744,6055,6521,6054,6057,1911,6048] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [1324,4636,1282,1326,1327,4637,4638,4639,4928,1194,4926,1277,1278,1318,1279,1283] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [7898,8269,7963,7896,7897,7242,7243,7244,8279,8312,8266,8270,8272,8304,8303,7889,8280,8283,8284,7851,7852,7836,7837,7845,7846,7848,7850,7870,7874,7882,7886,7895,7838] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [588,589,535,536,537,568,921,891,705,701,554,702,704,923,914,945,913,951,956,957,916,919,886,915,918,555,553,943,944] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [1282,1327,1968,4639,1190,1194,1279,1283,1254,1256,1280,1258,4926,1277,1278,1250] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [3944,3945,3946,8327,8326,3943,8588,8589,8590,8592,8585,7778,8328,8325,8360,8361,3927,7779,7781,8583] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [6291,6292,6293,6332,6331,4647,4653,1347,4655,1356,1357,1358,1361,4656,1362,2069,1374,1394,4679,1349,1350,1351,4646] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [8718,8732,8897,8895,8896,8708,8720,8905,8704,8711,8903,8841,8892,8893,8900,8749,8760,8761] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [5335,5337,5358,5395,702,703,704,923,925,5368,705,4,687,678,682,5370,5371,5361] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [4802,4804,3210,4793,4784,4516,2977,2978,3232,4503,4506,4507,4818,4824,4827,4795,4799] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [1335,1928,5744,5766,2041,2042,2045,2047,1926,1927,1911,2036] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [2077,2106,2045,2047,2049,1927,2117,1911,6046,6047,6048,6044] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [3906,3961,8626,3937,3941,8293,8525,8609,8524,8455,8439,8459,8460] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [3913,7589,7881,7598,7602,8475,8476,7914,3895,3897,3909,3894,7593,7594,7910] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [5728,5782,5968,5706,6483,6484,5353] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        

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
        
        load "data/8DCP.pdb", protein
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
 
        load "data/8DCP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6474,6329,6330,6331,6332,6295,6297,6481,4742,2043,2042,5810,6490,6491,6494,6497,6574,5806,5815,5816,5817,6498,4732,4733,5016,5015,4770,4731,4729,6274,6275,6269,6271,6273,4741,6300,6293,6299,6303,6504,5048,5049,5051,5053,5047,5050,5052,5098,5099] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [6202,6203,7234,5947,5958,5959,6012,6564,6566,6180,6181,6565,6570,6581,6183,6011,7224,7228,7229,7232,7233,7235,7226,7119,7227,6586,7208,6631,7144,6656,7145,6612,6486,6488,6583,6587,6589,6239,6265,6266,6267,6223,7247,7248,7231,7230,6201,6182] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [8722,8720,8686,8688,8689,8721,9061,9062,9050,4270,4271,4068,4272,9038,9051,9052,4058,4060,4246,4253,4254,4264,4059,4067,8709,4032,2698,2699,2703,2709,8702,8703,8705,4260,4265,4268,4273,2710,4292,4293,4294,2716,2911,8693,8691,8684,8690,2719,2907] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [3457,3460,3463,3464,3465,3467,3468,4843,3193,3194,3183,3196,3203,4852,954,4864,4866,3224,3199,3347,3458,5203,4875,4877,5204,5170,5179,5196,5200,5161,4822,953,936,937,938,5195,3239,3490,3474,3489,3491,3471,3318,3475,3476,3237,3227,3305,3306,3278,5191,5193,5194,4876] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [9464,3338,3350,3351,3354,3355,3356,3357,3360,9432,9463,9461,10241,10267,10269,10242,3161,3152,3153,3361,10277,3346,9434,9471,5162,10301,3483,3484,3496,3497,3498,3499,3513,10202,10204,10205,3331,3512,3514,3517,3522,3524,2520,3530,3531,10212,2536,2529,9527,9528,9531,9495,9496,9494,9521,9556,5163] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [7859,7861,7864,7865,7868,7869,3447,7870,7871,3365,3368,3374,4823,4837,3432,3450,3444,3433,3369,3389,3390,7853,7907,7908,7909,7912,7875,3340,3173,5173,3458,3353,5155,5156,5157,5172] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [6572,6573,6575,5815,5816,5817,5818,5838,5840,6130,6132,6157,6598,5839,6122,6574,5806,1930,1931,1243,1932,1915,1929,6121,2038,2040,2045,2051,2053,5795,5807,6158] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [3409,8678,8697,2670,2690,2705,8699,8493,8477,8481,8482,3407,3406,3408,2706,8704,8677,8488,2727,8695,8706,8713,2671,2734,2735,2733,2639,3439] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [6327,6360,6395,6361,6364,6365,6367,6394,2077,2080,2101,2067,2076,2103,6358,6357,1301,6405,1257,1259,2069,2071,2073,4742,2043,2044,2042,1256,4709,1255,6329,6330,4739,4718] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [2257,2275,5350,1208,1209,5008,5009,2253,2260,2240,2250,2242,1200,2252,5788,5348,5351,5789,1206,1216,1218,1219,1220,1923,5822,5823,5309] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [826,848,850,5432,5429,5402,5404,5116,5115,6517,5088,5400,5405,5424,6521,6545,5458,5460,5461,5428,6523,5141,5144,5146,6526,5111,5120,5136,5140] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [7332,7330,7331,9329,9331,9364,10324,10357,10358,7329,3382,3400,10330,3397,9401,9391,9393,3378,3380,9402,9404,9362,3381,10298,10300,10332,3385,3388] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [7773,3964,3951,3955,4191,4463,4462,4473,4474,4477,4498,4189,7808,3986,7770,7774,4499,4226] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [594,595,596,5711,5714,571,572,829,799,592,593,590,586,828,830,831,833,5410,5411,5412,5413,5414,5434,5435,5436,5445,5713] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [4890,4894,4899,4900,4568,4847,4566,4569,4854,4857,4865,4867,3234,2978,2977,3256,3257,4881,4887] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [8401,8404,8405,8033,8034,4008,8406,8579,8581,8580,7983,7991,7995,7994,7997,7388,7996,7376,7378,7987,7958,7985,8414,8410,8411,7957] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [5122,6513,4803,5130,6245,6246,5093,5091,5094,5096,4793,6275,6243,6272,6276,6244,4764,4766,4769,7849,5120] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [4013,4014,4015,8709,4033,4060,4246,4247,4248,4249,4250,3983,3994,3998,2695,2698,8702,8704,4535,4536,4537] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [790,505,765,506,759,762,763,474,490,493,481,796,494,866,871,786,787,785,791,792,820,860,863,874,906,877,878,873] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [4553,4554,4855,4856,2997,2998,2999,3442,3444,3452,3437,4822,4829,4832,4830,4831,3448,4525,4527,4528,2686,2684,2685,3466,4853] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [10392,10393,10395,10432,8456,8457,8458,8425,8431,8424,7319,7348,10394,10356,10362,10365,10366,10358,7355,7357,8434] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [7918,7944,7908,7910,7911,7943,7945,3384,7294,7296,7883,7890,7935,7937,8458,7289,7275,7324,7320,7322,7942,7276,7939] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [7936,7321,8424,7958,7933,7966,7968,7322,7956,7957,7960,7963,7996,7376,7378,7995,7381] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [3279,3614,2446,3270,3271,3578,2451,3276,3576,3583] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [7922,7958,7985,3990,8413,8414,8410,8411,8421,8417,7957,8034,4008,8406,8404,8581,8580,7983,7994,7987] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [8950,8961,8962,8882,8951,9018,9019,8825,8836,8841,9026,9021,9024,8881,8870,8839,8853] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [829,612,613,821,823,827,797,592,462,820,860,863,794,792,796,496,600,561,444,477,822] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [8581,8572,8575,8576,8588,8747,8743,8744,3967,4051,8745,3968,4000,4004,4005,3969,4050,4024,4009,8587] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [5856,6175,6042,6557,6558,5781,5427,5452,6020,6041] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [10427,10429,10430,10431,10433,10428,10434,8398,8376,8378,9139,9140,10466,10467,10469,8369,9173,10404,8467,9171,9170] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [8348,8239,8241,8294,8321,8940,8941,8336,8339,8346,8971,8972,8907,8291,8266,8292] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [2695,2697,2698,2676,2699,2679,4279,4281,4536,4533,4250] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [2964,2950,2958,2963,3661,3704,3705,2403,4276,4335,4298,4302,4336,4337,4340,4304,4334] 
set surface_color,  pcol33, surf_pocket33 
   
        
        deselect
        
        orient
        

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
        
        load "data/7Z38.pdb", protein
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
 
        load "data/7Z38.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5460,5461,5466,5470,5489,6480,6462,6463,6464,5481,5812,5823,5817,5813,6238,5932,5929,5934,5935,5886,5854,5943,5933,5936,5938,5512,5513,5514,5937,5960,5963,5966,5462,5434,6100,5463,5464,5465,5779,6056,7917,6062,6096,6097,6063,6065,6074,6085,6086,6087,7898,5435,7915,7916,6095,6081,6106,6108,5893,5894,6104,5824,5825,5882,5883,5922,5851,5852,5853,6088,6120] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [330,778,779,800,804,353,354,355,654,653,807,395,306,784,897,301,302,303,304,305,774,657,658,1077,1078,1079,1321,635,1304,1305,903,906,915,2716,2733,2734,2735,922,297,298,275,276,280,284,620,666,723,735,694,695,724,726,727,665,919,763,770,926,927,928,929,775,776,941,945,947,949,936,937,938] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [10928,10929,10497,10909,10910,10489,10490,10506,10507,10930,10911,10912,7542,7544,10488,10487,10957,12067,10927,10972,10974,7497,7498,7499,7551,7496,7526,7527,3835,10494,10531,10532,10529,3852,3156,3821,10939,7485,7484,7552,10958,12100,12101,12093,12094,3159,3151,3161,3834,3204,3833,11003,11005,12106,11001,12068,3850,3851] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [3789,4452,4449,4450,4430,4431,3532,4391,4407,4409,4410,3942,3941,4419,10499,10502,10505,10511,4417,4408,3814,3818,3819,3821,3787,3517,3817,3903,3516,10531,10496,3852,3823,3826,3915,10497,10507,10912,4590,4593] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [8973,9586,9584,9592,9587,9583,9585,9582,13948,8974,9589,9599,9601,9007,10406,10432,10399,8996,9001,9004,9003,9031,8699,9021,9085,9091,9094,9096,9124,9125,13969,9123,9613] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [2296,2297,2293,2033,2049,2052,13837,2262,2279,13805,2276,2281,2282,2073,2075,2072,13811,13814,2606,2324,2598,13862,13863,2307,2305,2313,2316,2317,2034,2036,2628,2629,2630,2074,2005] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [2842,2529,12026,12027,12028,12029,2843,2844,2878,2564,2876,3174,2877,3195,2850,12008,12009,12012,12128,3172,3181,3185,3186,3194,12025,12024,12052,12099,12100,12101,12131,12130,3171,3168,3175,3179,3180,3162,3163,3167,3161,2560,2563,2566,3165] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [10924,10950,10691,10599,10604,10607,10609,10601,10602,10559,10556,10919,10513,10518,10540,10541,10542,10567,10569,10917,10619,10667,10666,10656,11300] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [8339,10437,2362,10404,13902,13901,13903,13900,13905,10441,10411,10412,10401,10402,10403,8348,8343,8347,8341,2360,2361,2345,13873,13874,8338,8333,9017,13936,10405,10431] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [2469,1569,372,1571,317,344,346,1581,1582,345,883,885,880,2466,2467,1844,1552,1568,901,2453,2465,1561] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [3357,3757,3758,3760,3759,3745,3291,3295,3298,9733,3285,3728,3099,3127,3749,3750,3058,3064,3060,3271,3356,3093] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [10144,10156,4978,4965,4966,4974,4975,8727,4979,8728,9650,9651,9649,9647,4467,3546,4468,4470,3545,4962,10157,10160,10148,10142,8758,8761,5010,4980,5011,4986,5009,10124,10128] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [5476,6727,6728,6730,5531,6740,6741,5505,6039,6042,5504,6035,6037,6043,6032,6726,6711,7647,7635,7648,7651,7054,7056,7026,7027,7055] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [11354,11037,11353,11435,11036,11355,11039,11227,11356,11358,11357,11504,11468,11505,11077,11228,11229,11061,11469] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [12231,12819,12260,12302,12820,12222,12894,12895,12873,12237,12235,12223,12221,12842,12843,12821,12263,12848,12225] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [8236,8275,8309,8248,8939,8965,8940,8941,8942,4551,8242,8453,8467,8479,8539,8932,8910,8249,8246] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [2420,2025,2441,1512,1548,2019,2419,2422,2393,2487,2489,2510,1519,1520,1516,1518,1509,2394] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [7908,7924,7927,7934,7935,2711,198,2726,178,7893,7894,203,7936,2725,2752,2753,2754,2741,2743,2744,2745] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [7602,7603,7210,7207,7604,6668,6675,6707,6670,6671,6677,7623] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [13830,13125,13127,13442,13443,13453,13457,13460,2061,2062,2064,13434,13416,13162,13164,13444,13448,13128] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [13715,13716,13718,13508,14069,13507,14067,14098,14131,10349,14037,13694] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [1523,2493,2742,2746,2482,211,1532,1530,2499,2487,2512] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [5367,5370,6691,7928,7924,7926,7927,6682,7675,6681] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [13706,13264,13266,13499,13501,13464,13465,13469,13470,13426,13468] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [5376,5379,6153,11917,5314,5325,5378,5320,5322,2776,11941,11942,2767,11921,11954,11957,11918,5360,5371,5348,2766,2779] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [9790,9806,9808,9679,10159,10175,10178,9809,10160,9784,9783,10156,9642,9643] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [4872,4645,4870,4353,4895,4897,4181,4352] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [11308,10638,10666,10637,11591,11621] 
set surface_color,  pcol28, surf_pocket28 
   
        
        deselect
        
        orient
        
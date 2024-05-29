
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
        
        load "data/6OGE.pdb", protein
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
 
        load "data/6OGE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10524,8444,8445,8447,8449,8777,8452,8453,8457,10536,10537,10550,4619,4620,8450,8474,4520,4521,4523,4638,4625,10527,4479,4482,4504,4492,4493,4494,4495,4496,4497,4463,4478,10506,10528,10529,10530,10532,10533,4499,8494,8496,8504,8446,8448,8483,8500,4644,4648,4649,4650,8473,8475,4631,8498,4498,8501,10523,4365,10521,10522,4545,4546,10520,8778,4621,4509,4510,4373,4603,4613,4614,8306,8309,4503,4515,10508,10511] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [6647,6842,2173,6796,6797,6799,1892,2168,2170,1875,1878,6819,6820,7194,7199,7202,7201,6784,6840,6826,6646,6812,6813,1891,1893,1890,1879,1883,2162,1910,1911,1908,1946,1909,1955,1939,1901,1963,1967,1968,5455,5476,5478,6841,5443,7211,7213,7214,5501] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [271,30,34,35,36,20,25,5,6,7,3559,3571,33,210,211,28,207,3600,3574,3597,3588,3590,3587,3137,3133,3159,3184,3186,3358,3363,3364,3365,3366,3375,3374,2134,2135,2136,2106,2103,2110,2204,2121,2118,2122,2123,2125,270] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [938,1133,1159,895,896,912,1417,1419,733,735,749,737,1008,1010,1418,1478,1414,1473,1474,1404,1112,747,748,868,890,1061,1062,934,1481,1157] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [2647,2649,2922,2923,2921,3145,2267,2924,2216,2217,2246,2252,2260,2212,2256,2200,3138,3140,2201,2209,2210,2457,2458,2211,2467,3150,3152,2215,2221,2226,2231,2206,2397,2416,2410,2414,2392,2431,2433] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [4273,4389,4385,4386,4388,4390,4391,4264,4269,4277,4156,4158,4281,4157,4155,4159,4160,4403,4395,10121,10147,10123,10124,10139,4274,4276,9939,9943,9945,9940,9946,10517,10492,10515,10516,10518,9958,9960,9952,9961,9962,10514,10544,4366] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [2939,3168,3170,3177,2519,2520,2521,2441,2442,2448,3152,3151,3156,3179,3171,3172,89,2659,2660,2937,2938,2956,2957,2958,2959,2447,2443,2445,2516,2509,2514,2690,2691,2692,2673] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [2061,257,273,445,446,447,1757,1740,1746,1753,1756,1747,1741,272,274,2057,2059,2062,1760,1796,1797,2060,1762,1717,1738,1726,1727,2045,2054,1798,1799,1817,16,2049,2051,2066,2067,23,258,437,15,250,22] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [6063,6047,6048,6050,6071,6072,7672,7673,7681,7696,7684,7679,6024,7689,7691,6103,6104,6073,5812,5813,6085,6023,6028,6043,6083,6022,7692,7828,5814] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [10780,10768,10770,10771,10773,9684,10749,10750,10752,9717,9718,9719,9721,9720,10747,10738,11376,9673,9672,10733,9685,9686,9688,9690,11373,11374,9681,10806] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [2040,6620,2053,2054,2055,2056,2057,2058,1774,2196,6602,6619,6997,6968,6973,6977,274,463,658,659,460,461,2038,2184,2187] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [6693,6770,6892,6927,6922,6923,6924,6925,6928,6771,7131,7133,6691,7102,7135,7103,7049,6768,6847,6848,7031,7033,7050,6681,7130,7132,6668,6776] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [3170,3169,3177,3178,2957,2959,3220,3237,108,111,3195] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [3094,3118,2948,3212,3326,3300,3228,3066,3301,3044,2968] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [11100,11102,11057,10889,10882,11101,11043,11042,10426,10427,10429,10033,10034,10637,10032,10031,10899] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [5300,5298,4907,5308,5401,4889,4890,4891,4892,5559,5335,4837,4849,5560,5313,5315,5312,5314,5332,5334] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [3213,3288,3517,3518,3826] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [9401,9402,9366,9379,9380,9381,9345,9344,9363,10989,10990,10993,10994,11148,11150,11011,11012,11013,11147,9120,9121,11000,9338,9341,11164,9122] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [2355,2363,2367,2370,2371,2357,2236,2237,2238,7188,7225,7223,7202,7203,5130,5449,4974,4975,5450,2369,2375,5120,5122] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [10941,10942,10943,10945,10979,10947,11141,11142,11143,11147,11181,10818,11182,11152,11156,11164,11209,10990,10991,10975] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [1766,1770,1772,6980,6981,1179,1193,1194,1197,969,967,970,978,1205,1176,1177,1202,644,646,645] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [1646,1664,1769,1553,1197,1180,1668,1670,1559,1562] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [6129,6131,6130,7745,7532,5991,7729,5990,7742,6128,6145,7790,7791,7792,7787,7788,7515] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [5665,5666,5667,5656,7419,7423,5774,5775,5787,5790,5646,7410,7492,7409,7425,7424,7489,7413] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [3396,3651,3634,3446,3648,3475,3479,3655,3677,3472,3473,3474,3626,3627,3628,3633] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [7316,7317,7321,7329,7762,7330,7561,7779,7781,7736,7303,7110,7112,7111,7088] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [3197,3198,149,147,171,3389,3620,107,112,115,145,139,142,95,101,3178,62] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [4072,4075,4232,4252,4254,4256,4304,4182,4013,4065,4000,4062,4055,4231,4071,4064,4083] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [10253,10450,10452,10009,10218,10251,10350,10089,9986,10088] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [5806,5803,7490,7477,7815,5633,5634,5789,5790,7465] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [396,379,337,311,403] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [3465,3735,3738,3678,3707,3699,3729,3457,3463,3700,3491] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [8112,8259,8316,8611,8613,8315,8288] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [8294,8297,4599,4356,8787,4357,4358,4585] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [7512,7518,7523,7378,7372,7386,7382,7387,8007,7922,7935,7937] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [10366,10389,10630,10419] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        

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
        
        load "data/7MO9.pdb", protein
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
 
        load "data/7MO9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1883,1665,1666,1667,1668,1669,1670,1671,1833,1892,1896,1898,1967,1968,1969,1970,1971,1884,1900,1902,1652,1657,1656,1558,1567,1649,1650,1651,1550,1554,1845,1576,1578,1887,1890,1973,1549] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [9557,9336,9335,9376,9456,9334,9375,9349,9544,9526,9543,9545,9523,9657,9446,9455,9451,9292,9294,9449,9448,9467,9276,9204,9279,9636,9639,9635,9389,9390,9444,9558,9442,9323] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [2799,5916,5927,5911,5912,5931,2797,2801,3933,3958,3956,3937,3938,2787,2782,2751,2753,2807,2945,2946,2917,2924,2925,2926] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [5196,5234,5235,5236,5199,5368,4924,4853,4852,4842,5005,4851,5218,5384,5373,5176,5175,4915,4921,4922,4928,4935,4947,4939,4940,4920,4817,4832,5031,4829,4822,4835] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [2307,2309,2414,2275,2278,2279,2280,2427,2428,2430,2549,4300,4301,2411,2468,2485,2487,2308,4302,4303,4304,2544,2546,2547,2536,4334,4299,2535,4324,2273,2271,2272,2298,2301,2296,2297,2299,4325] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [310,303,304,308,382,696,312,70,71,72,317,326,1064,1066,1082,1083,820,725,798,799,714,73,378,379] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [73,708,702,1471,703,704,705,1792,798,797,773,774,711,1539,1496,1484,1486,1487,1488,62,64,1537,70,66,772,775,759,1359,1472,1474,1358,743,738,740,741] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [4091,4096,4102,4105,3918,4174,4180,4195,3912,3921,3878,3694,3695,3920,3957,4120,4127,4132,4128,3908,3882,4110,4158,4168,4169,4173,4184,4177] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [247,254,260,1595,1596,1597,443,444,442,249,253,99,101,660,98,53,100,677,679,657,658,1563,1585,1587,1584,1586] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [7928,7936,7939,4569,5552,4563,4565,5051,5057,5551,5553,5556,5060,5061,5064,4562,4566,6121,6125,6131,6126,6612,6118,6120,5566,6620,6622,7947,7941,7944,7953] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [8329,8351,8324,8326,8338,8339,8342,8341,8349,8486,8492,8495,8443,8669,8209,8671,8674,8516,8497,8500,8501,8502,8504,8225,8321,8462] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [8238,8239,8240,8231,8232,8930,8939,8677,8667,4393,8241,8220,8219,4392,8261,8931,8932,8764,8765,8767,8699,8929] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [7279,7304,7308,7311,7312,7271,7270,7272,7338,7266,7277,7280,7268,7036,6463,6179,6369,6431,6432,6439,6440,6441,6443,7370,6464,6462,7399,7373] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [5404,5403,4918,4908,4909,4910,4911,5412,5480,5760,5208,5754,5751,4906,4907,5501,5206,5207,5402,5426,5456,5424,5425] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [8969,8650,8651,8652,8821,9023,8636,8866,8637,9025,8837,9022,9041,8552,8550,9024,9123,9125,9127,8819,8865] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [6400,6401,6402,6409,7330,5603,2909,2910,2911,2908,6416,2958,2932,5602,3251,3252,3228,3229,2961,3230,3231,3225,3226,3227] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [6534,993,1297,1298,995,1160,1161,1162,1211,1208,1210,1213,1174,1175,1020,1230,1232,1295,1296] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [5764,5201,5202,5203,5765,5755,5512,5517,5518,5182,5522,5188,5779,5726,5728,5723,5724,5725,5727,5526] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [5075,5174,5558,5507,5649,5903] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [4698,4833,5031,5029,5030,5041,5044,5167,5168,5234,5235,5236,5218,5176,5175] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [5612,3850,3853,3854,3815,5108,3812,5609,3806,3809,4182,4183,4181,4114,5106,4103,4112,3810] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [7149,7154,7155,7156,7160,7163,7165,7195,7197,7215,7216,7364,5955] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [3224,3220,4312,2541,2529,2566,2558,2559,2568,4272] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [9409,9390,9444,9558,9308,9309,9172,9413,9445,9442,9419,9557,9335,9323,9571,9166,9167] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [4125,4126,5881,4124,4131,5869,2623,2622,5870,3577,3578] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [8111,7879,8109,8110,7864,4454,4455,4479,4476,7863] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [4284,4320,4317,4318,3291,3292,4311,2872] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [2700,2702,3544,3974,2694,2695,3541,3973,3989,3415] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [5449,5422,5470,5473,5448,5447,5485,5486,5487,5906,5856,5410,5897,5913,5916,5909,5917,5920] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [2143,2380,2577,2115,2128,2131,2377,2590,2592,2378,2454,2381,2382] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [1079,1096,815,816,719,554,555,558,563,723,391,721,540,1080,1081,1083,392,393] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [135,458,491,492,648,650,652,457,151] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [7844,7846,8190,8192,8191,8193,8194,4422,4414,4460,4461] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [4365,8545,8560,8562,8563,4337,4338,4341,8643,8557,8558,4359] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [4262,4263,4304,4291,4293,4290,4327,4295] 
set surface_color,  pcol35, surf_pocket35 
   
        
        deselect
        
        orient
        
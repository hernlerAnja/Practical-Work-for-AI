
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
        
        load "data/6Q0J.pdb", protein
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
 
        load "data/6Q0J.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [530,531,532,534,533,938,549,552,602,592,591,598,599,931,932,934,935,937,952,614,617,916,917,918,535,547,551,564,567,510,513,950,951,953,490,511,969,972,967,489,492,493,471,636,642,692,691,694,696,258,255,703,706,720,252,253,251,618,619,620,621,700,298,302,283,267,270,273,652,413,416,627,624,649,679,682,431,436,415,666] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [1904,1905,2077,1925,1926,1927,1928,1908,1930,1942,1944,1947,1959,1962,1987,2040,2041,2043,2044,2074,2089,2086,2087,1646,1650,1648,1653,1678,1697,1693,1647,1661,1664,1665,1668,1662,2061,1884,1885,1887,1888,1906,1866,2047,2364,2367,2345,2346,2347,2009,2012,2333,2312,2329,2330,2348,1997,1993,1994,2311,2313,2016,2031,2090,2092,2095,2097,2091,2098,2101,2115,1810,1808,1811,2037,1826,2326,2327,2362,2013,2014,2019,2022,2015,1831] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [3436,3437,3430,3431,3433,3434,3417,3590,3584,3561,3565,3378,3847,3364,4304,4286,4288,4289,3413,3414,3415,3416,3418,3419,3395,3396,3397,3398,3399,3400,3403,4270,4269,4284,3432,3548,3551,3322,3329,3323,3326,3328,3342,3345,3315,3344,3346,3530,3533,3544,3349,3536,3545,3596,3600,3605,3810,3812,3827,3526,3792,3813,3527,3511,3523,3452,3453,3456,3617] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [5107,4843,4862,4881,4861,5078,5101,5082,5806,5821,5803,5804,5805,4912,4913,4914,4915,5784,5786,5787,5801,4949,5028,5117,5040,5044,5062,5068,5049,5050,5344,5053,4845,4846,5364,4863,4866,4936,4954,4931,4932,4933,4935,4950,4917,4934,4920,4916,4892,4895,4947,4951,4953,4969,4973,4970,4832,5046,5047,5061,5134,5122,5329,5309,5327,5330,5043] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [514,515,513,516,953,954,957,534,533,938,552,1259,922,936,937,916,917,918,919,920,923,902,535,538,498,501,495,497,970,973,977,956,972,479,480,496,971,974,1309,1162,1163,1165,1166,1169,1184,1168,1185,1186,1291,1293,1294,1273,1289,1290,1271,1274,1255,1256,1252,1182,1183,1199,1200,1201,1204,1248,1249,1154,1150,1146,1329,1307,1308,481,1143] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [2352,2560,2561,2563,2564,2580,2557,2558,2577,2579,2315,2317,2578,2599,2367,2347,2349,2333,2331,2332,2348,2318,2549,2584,2581,2351,2596,2372,2683,2684,2686,2689,2666,2668,2669,1928,1911,1908,1909,1910,1929,1930,1933,2654,1947,2688,1892,1893,1895,1896,2703,2704,1890] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3442,3798,4164,4165,4168,4169,4190,4094,4111,4112,4115,4093,4092,3832,4079,3852,4036,4096,4097,4100,4095,4205,4215,4220,4077,4080,4189,3811,3812,3814,3815,3830,3833,3834,3792,3813,3797,3795,3421,3419,3422,3407,3402,3387,3401,3403,3404,3405,3385,3388,4217,3438,3439,3437,4172,3456,4109] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [5611,5632,5614,5617,5596,5613,5349,5553,5689,5707,5315,5626,5629,5681,5682,5612,5594,5732,5597,5704,5706,5722,5328,5329,5331,5332,5347,5350,5348,5351,5309,5312,5330,5308,4936,4938,4939,4954,4937,4919,4918,4920,5369,4955,4956,4959,4973,4924,4940,4921,4922,4902,4905,5734,5737] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [2924,3011,3015,3276,3286,2906,2908,3049,3039,3005,3057,3058,3059,3062,3065,3069,2899,2893,2903,2919,2885,3226,3227,3228,3229] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [4793,4803,4572,4573,4574,4520,4563,4752,4759,4748,4750,4751,4411,4412,4414,4415,4792,4749,4433,4527,4530,4439,4526,4408,4434,4577,4580,4423,4418,4421,4432,4584,4745,4564,4554,4400,4743,4744,4746] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5008,5018,4985,4988,5117,4967,4968,4983,4984,4726,4730,5115,5116,4698,4699,4701,4702,5143,5137,5139,5133,5132,5134,5135,5130,4668,4670,4679,4683,4686,4680,4681,5022] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [3505,3613,3616,3617,3213,3471,3451,3450,3466,3209,3599,3598,3600,3602,3511,3166,3184,3162,3163,3151,3169,3626,3164,3223,3501,3623,3622,3491,3468,3467] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [3270,3271,3281,3644,3084,3285,3291,3616,3074,3132,3133,3154,3631,3135,3136,3232,3237,3642,3645,3134,3241,3660,3169,3626,3223] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [50,54,143,103,144,96,332,351,347,348,328,361,368,360,362,154,352,115,44,40,43,45,134,372,20,106] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [4649,4652,4653,4650,4754,4788,4798,4651,5148,5162,4792,4749,4671,4670,4686,4740,4808,5143,5144,5133] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [4649,4652,4653,4650,4754,4788,4589,4787,4798,4651,5148,5159,5161,5162,4792,5177,4601,4671] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [5398,5510,5513,5535,5538,5539,5395,5509,5512,5543,5235,5238,5242,5320,5391,5394,5230,5335,5336,5339,5393,5318,5319,5321,5634,5637,5492,5225] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [3801,3802,3803,3804,3819,3822,3876,4026,3713,3708,3881,3874,3875,3877,3878,3718,3721,3996,3993,4022,4018,4021,4117,4119,4120] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [1539,1445,1449,1439,1757,1727,1742,1767,1491,1747,1743,1746,1538,1549] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [1539,1440,1445,1439,1757,1723,1727,1498,1510,1435,1415,1529,1501,1503,1767,1756,1763,1755] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [5951,5972,6343,5968,5969,6001,6342,6318,6317,6320,6323,6041,6408,6026] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [1056,1053,3957,3959,3962,3963,3966,828,853,850,852,813,810,3687,3690,3691,3961,794,803] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        
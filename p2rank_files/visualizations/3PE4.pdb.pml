
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
        
        load "data/3PE4.pdb", protein
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
 
        load "data/3PE4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [916,1153,1154,1471,1472,5621,1469,1470,914,1121,1456,1504,911,912,918,922,923,5637,5643,1129,1130,1131,862,1443,5645,1436,1440,1430,1434,1426,653,654,887,888,885,889,861,5615,5616,5617,5620,2705,2714,2720,1460,1461,1462,1919,2699,2701,627,629,630,631,5640,5641,869,870,1097,1098,1099,1100,838,840,1083,1085,839,837,4024,4041,4043,4022,1486,4053,4664,4042,4044,4291,4292,1183,1185,1184,4293,948,950,932,934,5594,5603,5604,4025,5605,5608,5609,5610,4687,2715,2718,2719,4681,4683,4685,4054,5585,1951,1957,1965,1989,4692,2693,3020,3021,4691,3008,3010,1941,1942,5581,5597,1981,1958,4284,4286,4263,4540,4544,4001,4541,4543,4699,4677,5589,4499,4494,4496,5590,4010,4017,4508,4509,4512,4514,4539,4516,4542,4720,4693,5560,3768,3771,3769,3766] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [11092,6931,6935,6937,11096,6947,6918,6960,6961,11118,6628,6629,6915,6944,6945,6946,6905,6901,11120,9500,9516,9518,9517,9519,10139,9528,9529,9485,9492,9497,9476,9738,6423,6425,6658,6659,6660,9499,6386,9759,9760,9761,9758,9762,9766,9768,9767,6393,6399,6363,6388,6391,6398,11095,11112,6389,6604,6605,11111,6407,6409,6128,6129,6105,6344,6364,6606,11116,11113,11115,6103,6104,6106,6596,6337,6558,6560,6572,6573,6574,6575,6336,6313,6345,6314,11074,11078,11079,11080,11083,11084,11090,11091,11085,11065,10015,10018,10019,10016,11064,9969,9974,9971,6936,8193,8194,8195,10156,10157,10158,10160,10174,8176,8168,7432,7433,10167,8495,8496,9991,10166,10168,10017,10195,11072,11069,11056,11033,11035,9977,9983,9984,9987,9989,10014,7464,7440] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [2906,1529,1534,1557,1559,1532,2902,1449,1478,1479,1531,1556,1450,2722,2725,2717,2916,2917,2728,2731,2901,4827,4829,1486,1483,4834,4830] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [7032,7034,7030,7031,8206,10313,6958,10305,10302,10304,8376,8381,7009,10299,6924,6929,6961,6954,6953,8187,8192,8197,8200,8203,8391,10309] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [11101,11104,7151,7152,7127,7095,8029,8049,8058,8056,8057,7120,7118,7096,7098,11108,11117] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [3735,3736,3734,3702,3726,3730,3725,3737,3759,3805,3825,3728,3729,3824,7539,3819,3841,3703,3705,3815,3816,7505,7507,7519,3812,3808,7500,7736,7754,7538,7540,3793,7731,7734,7745] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [1677,2582,1652,1645,1676,5629,5633,5639,1623,2554,2574] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [9212,9210,9211,2032,9287,9291,9209,9283,9286,9299,9300,9280,2030,2025,2261,2044,2278,2279,2063,2064,9200,2256,2270,9191,9203,9316] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [8763,2040,5288,5290,5295,5301,5287,5289,3062,3063,3061,3055,3058,2038,2012,2237,2265,2013,8754,8755,8764,9288,9289,5274,5283,5296,3057,3054,3056,3052] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [1951,1965,1950,1952,5601,5609,5610,1918,1919,2541,2536,2701,2545,2542,5616,2535,2538,5611] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [1011,1139,1114,1266,1269,1270,1263,1116,1008,1032,1029,1030,1033,1063,1112,1301,1299,1167,1224,1235,1272,1232,1231] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [9437,9439,10611,10581,10582,10578,10579,8675,8703,9422,9430,10081,10082,8673,8685,8693,10643,10644,10612,10613,10616,10619,10620] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3779,3800,3060,3063,3064,2233,2237,2234,2235,2194,2196,2195,3775,2007,2006] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [6483,6507,6612,6589,6614,6700,6486,6643,6642,6591,6699,6744,6707,6747] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [3639,3640,3622,10841,3642,7533,7567,7553,7554,7555,10880,10838,10844,10848,10812,10813,7556] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [8531,8532,8533,8536,10749,10758,8529,8530,7515,10770,10765,10772,10763,10762,8538,3280,3814,3813,3289,3288,10776] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [4607,5136,3962,3964,5107,3228,3209,5168,3211,5145,5138,5141,5103,3204,3210,3218,3193,3187,3198,3200,5106] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [10149,10176,10177,10175,10200,10202,9491,9473,10095] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3556,3867,3869,3886,3241,3885,3943,3243,3533,3245,3530,3531,3503] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [2079,2092,5405,2081,2082,5361,5363,5368,9114,9115,9108,9097,5366,5337,5373,5374,5376] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [1482,4646,4647,4651,4652,4654,1511,4811,4657,4075,4087,4088,4994,4648,4802,1507,1508] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [1909,1911,1918,2541,2161,2156,1923,2157,1913,2545,2546,2542,1938,1947,1950,1952,1931,1932,1933,1922,2177,2178,2180] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [7393,7427,7426,7394,8011,11086,11085,8017,8010,8012] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [6328,6330,6458,6460,6461,6494,6252,6254,6255,6353,6465,6230,6226,6228,6231,6457,6459] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [4002,4543,4696,4697,4700,3998,4717,4721,4003,4005,4722,4725,4727,4620] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [2516,2572,2573,2736,2763] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        

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
        
        load "data/4QT8.pdb", protein
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
 
        load "data/4QT8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [11818,12402,12419,12420,11898,12394,12078,12085,12073,12318,12406,12116,11883,12088,11899,12089,12092,10963,10949,11867,12118,12121,12119,12120,12122,11814,11875,10965,12125,12123,12295,12345,12349,12344,12380] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [10406,10408,10578,10399,10401,10402,10403,10404,10097,10405,9232,9234,10702,10093,10150,10166,10158,10632,10626,10627,10628,10368,10371,10375,10663,10361,10181,10182,9218,10601,10677,10685,10703,10356,10689] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [6691,6141,6143,6144,6148,6150,5660,5661,5668,5237,7979,7980,7981,4776,4787,5226,6687,7966,7967,7975,7976,7983,7969,7991,7995,7589,6699,6701,6702,6706,7603,7604,7986,6152,6155,5677,6708,5662] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [1571,1573,1574,2129,1578,1580,1582,1585,1107,1090,667,1098,2137,2139,2146,2140,2144,1091,1092,2125,3402,3405,3406,3407,3015,3409,656,222,233,3421,3412,3029,3030,3417] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [8608,8621,8905,8906,8551,8552,8550,9073,9075,8622,8851,8772,8837,8737,8746] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [4169,4514,4284,4516,4345,4048,4160,4266,4195,3976,4512,4513,4515,3978,3977,4346,4034,4047] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [52,50,4224,3687,4221,4222,4225,4227,4228,69,4064,4065,48,4066,4072,4073,4239,3913,3928,3929,4240,4237,4238,3659,3641,3642,3643,3654,3661,3685,3650,3651,3644,3648] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [4596,4582,4594,4583,4584,8800,8235,8228,4620,8216,8233,8234,4613,8215,8217,4585,4599,4601,8797,8815,8816,8638,8639,8640,8646,8259,8261,8224,8225,8647,8502,8503,8521] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [2818,2819,2820,11289,11278,11288,11505,11509,11510,11508,11514,11522,11277,11286,11499,11493,1863,11279,1844,1845,1846,1881,1882,1883,1847] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [6013,6004,5998,5999,6000,7233,7411,7412,7230,7402,7404,7405,7298,9555,9556,9563,7388,6439,6440,9557,9545,9546,6434,6433,6435] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [5982,5974,5975,5976,5980,5981,9570,5977,5978,9336,9387,9339,9605,9606,9607,9358,9344,9539,9540,9521,9535,9386,9390] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [6411,6412,6414,9801,6413,9793,9795,9787,9788,7392,7394,9561,9772,9784,6430,9552,9551,9789,6448,6449,6450,9562] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [3271,3278,3683,3259,3277,3685,3657,3659,3661,3662,50,3687,3260,48,3628,3691,3281,3626,3681,3682,3690,3703,3704,3706,3707,3272] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [2733,2830,2828,2665,1443,2668,1428,1434,1429,1866,1868,1872,1873,1430,1867,2837,2838,2814,2831] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [7752,7884,7860,7862,7554,7555,7535,7551,7539,7769,7843,7842] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [11115,11118,12138,11117,12142,12143,1405,11253,11254,11239,11246,11248,1338,12161,12163,11238,11240,1401,12141,1408] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [5908,10446,10444,5971,10424,10421,10425,10426,9512,9519,9521,9526,9527,9386,9387,5975,5978] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [7851,7833,7834,4599,8277,8278,7855,8265,8256,8280,7845,7846,7852,8231,8235,8236,8233,8234,4596,8200,8202,8257,8259] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [3268,2961,3286,3288,3269,2977,2965,3120,3176,3178,3179,3195,3310,2980,3132,2981] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [2604,2636,2637,2638,2631,2623,2624,2854,1700,1703,1770,1786,2645,2647,1930,1708,1714] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [7428,7188,7171,7172,7185,6270,6353,6273,7212,7189,7196,7210,6278,6284,7201,7202,7203,6337] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [11297,11334,11333,11075,11067,11332,11070,11088,11089,1410,1405,11262,11248,11121,11118,11266,11267] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [656,222,233,3421,673,1091,3405,3406,3407,239,3420,237,3412,1090,667,666] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [6376,6377,7060,7061,7062,6197,6198,6388,6389,6392,6411,6447,6448,6449,6450,6470,7082,7377,6446] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [1879,1880,1881,1882,1883,1626,1821,1822,1825,2516,2495,1809,1810,1844,2496,1628,2494,1903,2803] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [5237,5236,5660,5661,7979,7980,7981,4776,4787,5226,4793,7994,7995,4791] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [1136,11543,1141,1142,11531,11546,12044,12053,12029,11525,11528,11529,1139,1835] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [8218,8222,8337,8212,8502,8503,8504,8487,8489,8490,8334,8224,8647,8639,8646,8206,8215] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [1479,9000,9001,9002,2638,2681,2682,2635,1488,1489,1713,1478,1712,8962,1721] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [550,581,583,931,950,946,948,943,958,961,957,571] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [4171,4284,4516,4176,3997,4283,4288,4295,4008,4317,4318,4182] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [9808,5712,9825,10309,10310,9810,5711,5706,5709,6402,9807,9822] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [5861,5853,5993,5847,5588,5583,6001,6005,5991,5986,5982,6004,5582,5849,5848,5578,5585] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [9076,9087,8748,8753,8759,8868,8872,8875,8582,8850,8851,8571,8855,8566,8567] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [6124,6126,6482,6259,6106,7225] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [1536,1689,1915,2660,1554,1556] 
set surface_color,  pcol36, surf_pocket36 
   
        
        deselect
        
        orient
        
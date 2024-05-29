
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
        
        load "data/7MOA.pdb", protein
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
 
        load "data/7MOA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1971,1883,1884,1898,1900,1968,1970,1902,1652,1657,1578,1550,1576,1892,1896,1649,1651,1554,1833,1667,1668,1669,1671,1656,1665,1666,1549,1845,1887] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [3642,3639,3643,10737,10929,10735,10766,10901,11940,10781,10782,10783,10785,3337,10925,11942,3567,3568,3623,3624,11916,11917,3628,11921] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [378,379,382,84,696,70,71,72,73,82,310,308,312,313,45,304,305,364,373,377,350,1064,1066,1082,820,1083,392,725,389,798,714] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.333,0.702]
select surf_pocket4, protein and id [2879,2930,2880,2944,2946,2947,2948,2546,2627,2632,2633,2634,2636,2911,3096,2547,2640,2550,2564,2743,2394,2545,2563,2887,2753,2756,2888,2908] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.376,0.902]
select surf_pocket5, protein and id [10529,10531,10528,10530,12318,10533,10469,10520,12308,10257,10255,10256,10453,10452,10471,10259,10291,10293,10280,10281,10282,12283,12284,12286,12287,12288,12311,10292,10398,10414,12309,10283,10285,10467,10519] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.306,0.278,0.702]
select surf_pocket6, protein and id [708,711,741,701,702,703,704,1471,1792,798,797,773,774,775,1487,1496,1486,1488,1477,1481,1484,763,772,758,1354,1358,1359,1474,743,740,730,736,1352,1365,1360,1537,1538,1539,66,70,73,705] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.443,0.361,0.902]
select surf_pocket7, protein and id [8968,7632,7634,7633,8935,8957,8960,8970,7815,7816,7817,8936,7473,7475,8033,7626,8050,8052] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.384,0.278,0.702]
select surf_pocket8, protein and id [12086,11904,11905,11902,12104,12111,11896,12112,11678,11862,11892,12168,12157,12158,12152,12153,12087,12088,12089,12093,11856,12142,12113,12116,12119,12164,12070,12178,12161,12179,11679,12075,12165] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.541,0.361,0.902]
select surf_pocket9, protein and id [6362,6681,6364,6578,6577,6531,6533,6735,6737,6666,6363,6664,6665,6753,6236,6734,6736,6834,6836,6349] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.463,0.278,0.702]
select surf_pocket10, protein and id [52,53,1563,1586,1596,260,1595,1597,99,1587,1585,677,679,101,657,658,660,253,249,442,444,247] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.643,0.361,0.902]
select surf_pocket11, protein and id [6477,6479,5950,5951,5953,6480,5931,5941,5943,5944,5945,6643,6644,6651,6642,6379,6389,5531,5532,5952,5972,5973,2104,5932,2105,6460,6456,6431,5517] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.537,0.278,0.702]
select surf_pocket12, protein and id [3263,3264,5651,5656,5640,5645,5646,5648,5653,2281,2278,2277,2772,3268,3269,2763,2769,2773,2776,5665,5667,3830,3832,3833,3837,3843,4324,3838,4332,4334,3278] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.741,0.361,0.902]
select surf_pocket13, protein and id [5023,4152,4153,4155,4157,4982,4983,5016,4984,5020,5032,5050,5082,5051,5049,4144,4081,4748,4978,4993,5111,5086,5085,4968,4980,4989,4176,4174,4175] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.616,0.278,0.702]
select surf_pocket14, protein and id [3213,2918,3168,3192,3136,3137,3138,3124,3114,3116,3463,3466,3472,2919,2920,2595,2629,2630,2618,2619,2620,2621,2622,2623] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.843,0.361,0.902]
select surf_pocket15, protein and id [7764,7765,7913,8093,8095,7936,8455,8469,8509,8096,8092,8094,8204,7751,7925,7927,8490,8492,8493,7931,8466,8470,8474,7916] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.694,0.278,0.702]
select surf_pocket16, protein and id [989,993,4246,1297,1298,1010,1160,1161,1162,1210,1211,1213,1174,1175,1176,1177,1208,1232,1293,1295,1296,1315,1020] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.859]
select surf_pocket17, protein and id [7828,7829,7864,8021,7865,7805,7508,8023,8025,7890,7513,7523,7888,7581] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.627]
select surf_pocket18, protein and id [7752,7755,7751,8098,8191,8456,8096,7683,7677,7679,8087,8070,7681,7686] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.757]
select surf_pocket19, protein and id [10574,10576,10438,10127,10099,10112,10115,10097,10561] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.553]
select surf_pocket20, protein and id [11837,11838,12167,12165,3321,3324,11799,11801,11796,12082,11834,12087,12095,12096,2820,2818,11793,11794] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.659]
select surf_pocket21, protein and id [3435,3476,3477,3491,3439,3229,3230,3234,3437,3224,2914,2915,3467,3238,2913,2900,2894,3438,3440,3436] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.475]
select surf_pocket22, protein and id [9384,9390,9233,9490,9767,8883,8884,8885,9235,9786,9803,9822,9377,9380,9492,9488,9411,9487,9497,9498] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.561]
select surf_pocket23, protein and id [3219,3361,2886,2787] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.396]
select surf_pocket24, protein and id [4875,4877,4909,4861,4864,4867,4872,4866,4868,4879,4927,4928,3658,3666,3667] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.459]
select surf_pocket25, protein and id [10513,10541,10543,10525,10537,10542,11204,11208,12256,12296] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.318]
select surf_pocket26, protein and id [8731,8732,8113,8114,8116,8147,8869,8863,8857,8737,8843,8844,8849,8850,8845] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.361]
select surf_pocket27, protein and id [5574,5576,5591,5821,5822,2206,5823,2163,2166,2203,2184,2188,2187] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.318,0.278]
select surf_pocket28, protein and id [5921,6228,6383,6386,6061,6053,6041,6063,6212] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.459,0.361]
select surf_pocket29, protein and id [7061,7257,7060,7242,7369,7238,7235,6916,6990,6991,7347,7179] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.396,0.278]
select surf_pocket30, protein and id [9346,9030,9341,9343,9344,9273,9275,9217,9219,9206,9256,9043,9044,9329] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.561,0.361]
select surf_pocket31, protein and id [2562,2568,2563,2564,2905,2909,2910,2612,2640,2654,2659,2627,2911,2616] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.475,0.278]
select surf_pocket32, protein and id [491,492,135,650,652,457,151,648,458,651] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.659,0.361]
select surf_pocket33, protein and id [8158,8139,8138,8701,8703,8708,8554,8563,8519,8565,8159,8160,8161,8574,8692] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.553,0.278]
select surf_pocket34, protein and id [12246,12247,12277,12274,12286,12288,12311] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.757,0.361]
select surf_pocket35, protein and id [8984,7411,8983,8985,7410,7412,7621,8966,8968,7634,8967,8969,8970,9290,7631] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.627,0.278]
select surf_pocket36, protein and id [345,359,360,9314,217,202,204,205,216,197,505,9310,199,9308] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.859,0.361]
select surf_pocket37, protein and id [4500,4501,4305,4486,4488,4656,4207,4658] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.694,0.702,0.278]
select surf_pocket38, protein and id [11972,11973,11957,10680,10682,11398,11399,10678,10679,10681,10683,11974] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.843,0.902,0.361]
select surf_pocket39, protein and id [3953,3516,3813,4072,4167] 
set surface_color,  pcol39, surf_pocket39 
   
        
        deselect
        
        orient
        
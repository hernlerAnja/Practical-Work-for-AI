
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
        
        load "data/6VP6.pdb", protein
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
 
        load "data/6VP6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2100,2102,1454,1791,1790,2134,2136,2097,2064,1861,1444,1821,1827,2066,2068,1443,1447,1448,1860,1837,1699,1700,1858,1819,1820,1832,2096,1738,1739,2166] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [4258,4267,4268,4269,4286,4287,8529,8530,3775,4259,3769,3776,3759,3761,3760,4203,3757,3135,2728,2730,2732,2734,8492,2724,2725,3187,3158,3162,3165,3132,4248,4249,4284,4228,4230,4340,4237,4238,4227,3802,4336,4337,4331,4332,4333,4328,3792,8525,8523,8494,8496] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [395,396,425,1633,61,472,473,454,704,62,1641,439,655,398,619,401,1679,1667,78,326,347,345,92,76,77,60,1654,1806,1655,434,435,675,687,433,436,400,649,676,429,431] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [1470,1783,1471,1473,1474,1490,1491,1494,1529,1369,1371,1523,1779,1781,1459,1388,1389,1390,1395,1396,1487,1489,1488,1401,1399,1424,1671,1628,1370,1569,1570,1571,1528,1782,1784,1600] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [9132,9133,9135,9341,9342,9343,7599,7600,9128,9130,9324,8649,7450,7709,7710,7601,7683,7695,9329,9336,9323,9325,7287,9316,7286,8677,8681,9317,9123,8650,7250,7251,7458,7259,7254,7253,7588,7586,7587] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [8948,8949,10485,10492,10493,10494,10495,10481,10483,10484,10486,10512,10513,8959,9983,8960,8956,10000,10001,10002,10453,10461,10475,10480,10499,9995,10426,10427,10464,10454,9384,9410,9413,8910,9422,9421,9423,10463,9388,9389,8950,9391,8906,9987,10028,10029,10566,10563] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [2904,3098,12457,12456,3087,3089,3097,3090,12141,12142,12143,12305,12306,12307,12551,3091,2455,12290,12563,12564,12495,2905,2906,2907,2908,2909,12444,12539,12552,3117,3103,3115,3105,3099,2901,2902,2424,3084,2421,2423,2457,2458,12106,12107,12313,12427,12108] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [8445,8446,8441,8444,8479,4688,4708,4709,5749,4687,5750,8412,4686,8411,5782,4297,4295,4712,4713,4716,4296,4720,8470,4718,4747,8503,8431,8432,8440,8433,8437,8406,8408] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [2208,2209,2614,2597,2609,2610,2613,2580,2581,2582,2595,2599,2568,2601,2557,2558,2567,2573,2576,2577,414,2833,2309,2310,2311,2817,382,385,2318,362,363,364,365,407,2822,2821,2314,2315] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [9718,9950,9402,9439,9565,8721,9563,9710,8740,8742,9405,9946,10394,9949,9952,9742,9957,10383,9743,10399,10400,9412,10397,10429,10389,10395,10398] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [11525,11527,11529,11985,11841,11851,11867,11868,11863,11502,11839,11840,11870,11544,11507,11545,11522,11948,11958,11983,11597] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [11059,11061,11048,11062,10880,10971,10974,10976,10957,10958,10960,11078,11327,10956,11390,10879,11339,11337,11360,11361,11362,11326,11331,11363] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [4323,4324,4863,4452,4325,4434,4446,4864,4469,4472,4427,4429,3945,3994,3995,3996,4084,3943,3946,4451,4985,4986,4099,4430,4978,4979] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [7999,5563,7987,5562,5858,5856,8007,8005,8010,5588,5798,5799,5553,5831,7982,8284,8012,8264,8265,5556] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [10913,10745,10746,10771,10911,10912,10920,11033,11053,11054,11043,11044,11037,11039,11040,10899,10949,10951] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [3312,3313,3297,3287,3288,3289,639,2540,2551,2552,637,962,960,973,951,972,2539] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [9206,9232,9233,9686,9687,9228,9229,9230,9231,8730,8731,9265,9266,8752,9685,9283,9281,9207,9592,9591,9663] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [3177,3179,2516,3337,3484,3724,3186,3720,4201,3339,3213,4174,4165,4167,4157,4168,4169,4172,3516] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [6481,6482,6470,6475,6505,6023,6388,6121,6483,6192,6118,6120,6100,6206,6024,6104,6205,6207,6468,6534,6533] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [10843,10845,10827,10859,10828,10844,10846,10847,11168,11169,11339,11224,11340,11341,11348,11351,11202,11203,11204,11166,10876] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [6984,7012,7013,6985,6995,6663,6667,6669,6997,6999,7106,7109,6671,6646,6688,6666,7092,7102,7127,7129,7131,7108] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [376,1899,384,385,1866,1869,2221,2201,1836,375,1842,1840,1871,1874,2197,2198] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [9970,10037,10038,7227,7228,7229,10595,10602,10597,10585,10586,10589,10041,10061,10060,9975,9971,9969,9976] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [8688,7707,7710,8664,7706,7728,7727,7838,7840,8034,8191,7696,7697,9634,9637,7437,8663,8665] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [7012,6688,7092,7102,7127,7129,6741,7095] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [2502,2504,3460,3365,3366,3461,3346,3438,3441,3437,3056,3057,2980,2524,2525,3034,2518,2519,2522,3035,3036,3037,3038,3039,3040,2526] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [3808,3809,3810,3811,3815,12080,12084,12079,12081,4357,3812,3816,3819,4360,4363,4369,4371,4375,3834,3744,3745,3739,3768] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [1838,1698,2203,394,392,1844,2204,427,429] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [10827,10859,10828,10879,11339,11340,11341,10876,10977] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [1243,439,440,443,444,1272,1271,1276,446,1221,1222,1224,1225,50,52,1279,38,1228] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [10310,10169,10174,10550,10551,10653,10660,10323,10325,10221,10220,10222,10171,10672,10326] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [2486,3055,3441,3443,3071,2470,2406,2418,2428,2446,3057,2940,2966] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [12582,12583,12584,12904,12905,12906,10795,12890,12894,12899,12579,12901] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [117,139,351,153,118,119,127,128,129,352,349,140,144,145,130,131,147] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [4677,4699,5189,5717,5714,5737,5739,5738] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [3276,648,2622,412,413,2623,2575,3264,3274,3257] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [5774,4650,4624,5570,4618,5546,4611] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        
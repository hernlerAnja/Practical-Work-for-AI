
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
        
        load "data/4D0L.pdb", protein
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
 
        load "data/4D0L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [14540,14522,14524,14528,14536,10636,10637,10641,10642,10644,14434,14409,14554,14555,14556,14558,14565,14566,14570,14559,10632,10639,10640,15472,15247,15461,14425,14426,14576,14575,14421,15231,14398,14399,14400,15232,15233,14959,14980,14394,14397,14408,14412,15224,14420,14396,14780,14781,14771,10638,10665,14978,14981,15225,15226,15230,15254,14972,15223,15255,14416,14419] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [12772,12378,12393,12395,12410,12411,12413,11833,11831,11842,11885,11886,13389,13288,13387,13390,13396,13397,13398,12827,12685,12456,12457,12458,12684,12686,13386,12417,12412,11855,11856,12447,12448,12449,13410,13411,13414,13420,13255,13421,13423,13424,13452,13961,13962,13422,13451,13483,12771,12379,12783,12786,11834,11905,12164,12801,12155,12192,12138,12141,12193,12124,12683,12794,12789,12814,13310,13311,13312,12823,12681,12154,12158,12803,12809,12800,12792,12797,11906,11817,11818,11924,11925,11923,12194,11802] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [4054,4058,4749,4751,3927,3949,3952,4742,3918,3926,4750,3930,226,231,233,254,255,4073,4072,4076,4077,4083,4089,3939,3943,3944,4094,4084,4088,4299,230,227,228,229,4765,4990,4764,4984,4988,4978,4040,4042,4748,4979,4983,4771,4772,4773,259,256,4477,3919,3915,3916,3937,3938,3914,4293,4298,4289,4489,4496,4499,4801,4490,4744,4046,4074] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [1400,1412,1414,1415,1411,1466,2893,2894,2404,2408,2409,2435,2871,2402,2384,2395,1486,1506,1399,1487,1504,1736,1722,1719,1773,1774,1775,1705,2263,2265,2357,2364,2370,1959,1960,2352,2367,2980,2981,2353,1975,1976,2895,2972,2261,2262,2264,2266,2376,2267,2968,2970,2975,2969,2978,2979,2971,2973,2373,2378,2381,2382,1745] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [7468,7575,6921,7557,6595,6596,7165,7569,7572,6667,6941,7587,6950,6978,6924,6927,6910,7181,7558,6592,6593,8175,8177,7613,8099,8178,7603,7609,8098,8100,7640,7641,7470,7471,7472,7467,7469,7600,7589,6923,7595,7578,7583,8083,8183,8184,8185,8186,8174,8076,6647,6668,6685,6687,6564,6579,6580,6581,6980] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [9252,9164,9130,9138,9139,9954,9962,9129,9131,9142,9151,9161,9285,9295,9126,9127,9128,9155,9156,9301,9306,9492,9149,5394,5395,5396,5397,5398,5400,5421,9961,9963,10200,10196,5426,9984,9985,9983,9960,9976,9977,9509,9511,9296,9300,9510,9304,9500,9497,9150,9122,9505,9501,9284,9258,9266,9286,9289,9254,9270,10202] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [15514,15515,15516,15517,15518,15547,15510,15519,3579,3615,14463,15485,15486,15487,15495,15503,15507,14460,14462,2756,3738,3736,3724,3725,3731,3732,3734,3735,3755,3616,3638,3704,2784,2786,3762,3756,3757,15501,15496,15497,3729,15523,3726,3555,14501,14502,14503,14504,2830,2813,3590,3591,3593,2776,2779,2782,2812,2814,3554,3583,3578,3580,3585,3586,3053,3056,3071,3052,3057,3059] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [5871,6446,6438,6460,6465,6467,6468,6469,5845,5549,5550,5551,5787,5582,5869,5836,5868,5835,5837,5830,5834,6426,6427,6425,5839,5820,5821,5838,5810,6770,6751,6483,6484,6485,6488,6756,6757,6758,5867,5828,6759,5547,5548] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [349,354,360,381,382,384,678,383,620,672,667,653,654,665,671,1303,1569,643,663,1589,415,380,1279,668,669,670,1257,1265,1284,1286,1287,1301,1302,1288,1304,1244,1245,1246,1578,1307,1575,1577,702,704] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [7243,7203,7180,7181,7558,6619,6593,6604,6595,7165,8184,8185,8186,8174,8178,8199,7213,7179,6647,6648,7196,7197,7198,7199] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [2070,2071,2046,2281,702,703,704,2287,2294,2047,2274,2275,2276,1265,2104,389,391,380,385,386,388,421,422,730] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [7275,7276,7479,7480,5553,5555,5547,7481,7251,7252,5589,5588,5558,5897,5870,7499,7486,5871] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [12693,12694,12695,12697,12700,10791,12522,12489,12490,10797,10800,10802,12523,11684,11114,11115,11689,12465,12466,12713,10799,12499,10832,10833,11141] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [13191,13230,13247,13534,13538,13539,13195,13196,13199,13201,13231,13541,13171,14216,14238,14244,14239,13203,14218,13173] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [7987,7989,7991,8944,8946,8948,8950,8268,8968,8969,8974,8271,7979,7981,7983,8264,8269,8019,7984,8035,7961] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [2980,2981,1975,1976,1991,1992,1993,1994,2978,2979,2973,1466,1467,1423,1438,1414] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [4133,4134,4246,13668,13669,13068,4245,13659,4231,13670,13087,13064,13063,13065,4146] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [9185,9186,9223,9224,9351,9339,2189,2190,9335,9334,2208,2209,2194,2193,9289,2191,9331,9336,9178,9180,9155,9154] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [11601,11788,11790,11791,11575,11776,11779,11797,11798,12108,11764,11765,12255,12103] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [11721,11081,11722,11064,11065,11078,12008,11994,11054,10795,11988] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [6842,6843,6844,6360,6363,6550,6552,6553,6538,6541,6527,6559,6560,6887,6889,6894] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [12613,4011,4012,12627,12608,12628,4122,12609,12611,4074,3973,3974,3943,4123,3968,4119,4124,4127,4077,3969,3941,3942,3966,4139,3950,3952] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [10791,10792,10793,10794,10795,11079,11083,11089,11111,11112,11080,11684,11113,11114,11115,11081,11082,10826] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [2402,2403,2386,2387,2392,2394,2899,2913,2916,2443,2438,1717,1718,2532,2533,2534,2570,2571,2907,2572] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [3247,3272,9568,3203,3234,3236,9595,3721,3686,3688,3239,9565,9567,9586,3235] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [1378,1369,1371,1663,1667,1666,1836,1683,1684,1360,1811,1346,1357,1682,1689,1379] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [12950,12951,12986,12989,12949,12987,12988,13316,13323,13324,13329,13330,12806,13320,12822,12805,12811,12812,12136,12137,12813,12816] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [293,294,295,321,72,75,4761,4762,286,292,263,4765,4991,265] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [11994,11996,11995,11997,11665,11078,12008,11072,11707,11081] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        
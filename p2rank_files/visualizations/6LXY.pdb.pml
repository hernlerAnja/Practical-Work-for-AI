
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
        
        load "data/6LXY.pdb", protein
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
 
        load "data/6LXY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [240,243,249,250,253,237,238,385,257,268,271,386,387,1162,1256,1257,1263,1127,1143,1144,264,254,1390,1391,1393,1399,266,267,234,235,371,740,283,284,285,232,236,769,628,739,1178,1254,1255,768,737,738,742,743,764,748,1154,1155,1179,787,788,791,795,796,820,859,867,187,189,230,231,829,762,767,775] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [3354,2467,3329,2426,2427,2433,2434,2469,2421,2424,2422,2425,2569,2570,2455,3330,2962,2966,2967,2991,2990,2414,2415,2420,3030,2931,2933,2935,2939,2419,2468,2555,2938,2373,2416,2418,2946,2952,2958,2959,3000,2371,3035,3038,3429,3337,3430,3435,3436,3438,3431,3432,3353,2913,2914,2908,2909,2910,2911] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5312,5336,5282,5301,5304,5305,6292,6293,6294,352,6291,5357,1201,3042,1203,5265,5277,5278,5281,3040,5258,5260,5261,5313,5314,5161,5592,5594,5596,5203,5595,6284,6286,6279,6285,634,635,636,637,638,642,751,5306,5584,583,584,585,5582,771,750,601,1239,1240,1241,590,598,599,602,591,606,759,353,356,357,358,755,756,11,25,16,618,1204,1195,1226,1227,777,6275,6272] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [5235,4636,5196,4635,4641,4682,4683,4684,4642,4643,4645,4647,4648,4654,4670,4655,5554,5538,5630,5631,5632,5633,5636,5639,4778,4779,4780,5117,5119,5167,5171,5172,5555,5530,5531,5243,5136,5138,5140,4637,5143,5144,4639,4640,4764,5151,5205,5157,5163,5164,5145,5115,5113,5114,5116,4595,4597] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [3378,2920,2921,2922,2807,2808,2809,7470,7448,7478,7479,7480,2773,7758,7760,7748,7750,7761,7762,7756,3401,3367,3370,7425,7426,7427,2777,7327,7424,7431,7443,7444,7447,8446,7502,7418,2941,2789,3414,3415,3416,2805,3402,2761,2762,2926,3379,2541,2542,2930,2948,2537,2540,8438,8437,2536,8427,8444,8424,8443,871,869] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [6799,6805,7721,7696,7697,7704,7797,6851,6853,6950,6839,6951,6952,7796,7285,7802,7805,7799,7798,6798,6804,6810,6811,6817,6818,7304,7302,7306,7309,7330,7310,7311,7720,6936,7281,6852,7290,7279,7280,7283,6758,6760,6800,6802,6803,7371,7362,7329,7333,7338,7337,7409,7397,7401,7317] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [1219,1220,3374,884,885,785,935,936,937,938,927,929,2947,1197,1199,1206,786,1209,1208,776,775,900,882,878,3060,3071,3391,3393,3395,3072,3073,3076,4110,3055,2946,2956,2957,3049,3134,1898,905,906,1897,1906,3100,3135,3383,3384,883,889,901,7413,902,1904,3107,3108,3077,3098,3096,4119] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [306,2489,2490,2502,2503,2504,2505,185,193,204,206,2303,761,762,775,2947,2542,2930,2932,184,191,192,186,189,318,320,321,136,358,359,305,304,301,210,216,217,218,2388,2389,2371,2368,2369,2402,2390,2394,2318,2378,3035,3038,2377,2375,2933,2488,2373,2946,3000,3049] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [5297,5298,5301,5303,5305,5289,326,350,352,351,6290,6306,334,337,6573,6575,6576,6578,6567,6574,11,650,34,35,37,39,56,648,654,651,327,365,653,328,6325,6326] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2824,2825,7471,2217,2215,2216,7469,7467,8710,8711,8713,8715,7457,8478,8477,8704,7496,7464,7455,2821,2822,2536,2549,2511,2512,2535,2534,2237,2521,8442,2518,2519,8458,8459] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [7301,7303,7319,4345,3237,4320,7744,7745,7746,3235,3236,3199,3177,3179,3178,3176,2768,2776,7318] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [605,5135,5153,5579,597,5578,4740,4745,4744,5126,5580,1000,1024,1031,1033,1061,1062,2107,4737,1070,4750,4751,1004,2132,5131] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [5538,5539,5637,5638,5639,4779,4780,4666,5519,5531,4647,4648,4654,4670,4655,4684,5520,4658,4659,4662,4830,5502,5503,5759,5750,5753,5660,5661,5662,4877,4876] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [3329,2426,2427,2433,2434,2437,2455,2445,2441,2570,3330,2438,3318,3319,3594,3302,3587,2448,2450,2451,3337,3438] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [2775,2776,2777,3135,3401,7426,7427,3134,3158,3159,3179,2784,2785,3397,3402,3388,3130,3403] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [6810,6811,6817,6818,6820,7685,7686,7669,6832,6836,6834,6853,6839,6951,7805,7704] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [3865,3878,3879,3863,6037,3864,6009,6010,6058,6059,6017,3882,3844,6251,6270,5995,6228,6253,3845] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [6036,6037,6046,3865,3889,3838,3890,3891,3837,3829,3830,3845,3823,4095] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [3014,6268,6269,6270,5219,6002,3830,4093,4094,4095,3012,3015,6010,3838] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [7385,8420,8421,7383,8422,8158,8166,7386,1882,1881,1880,843,1638,844] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [3437,2587,2895,2663,2704,3436,3438,2448,2668,3451,2664,2569,2570,2585,2445] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [7768,7755,7764,7770,7500,7501,7502,7526,7525,7159,7160,7546,7769,7152] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        

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
        
        load "data/7JXK.pdb", protein
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
 
        load "data/7JXK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2735,2556,2738,2756,2755,2562,2731,3063,3064,2988,3066,3067,3609,3611,2585,2722,3087,2586,2739,3081,3082,3617,3618,2982,2986,3612,3640,2584,2546,2550,3529,3500,3514,3530,3610,3106,2968,3641,2874,2906,2565,2567,2848,2568,2843,2870,3649,3650,3651,2847,2788,2814,2905,2989,2845,3622,3638,3635,3637,2903,2904,2837,2534,2535,2537,3099,3128,3135,3136,3104,3101] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [359,360,361,378,184,353,357,345,347,163,165,206,207,208,164,156,157,467,686,689,465,377,469,470,471,688,1284,410,1244,1263,703,704,1233,1234,1239,1241,1262,342,343,608,525,497,498,501,610,492,527,757,758,782,1232,1240,1122,1136,344,721,159,595,589,590,591,705,1151,1152,750,726,604,187,496,1273,1278,1283,1285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [4899,5466,5480,5481,5489,5490,5493,5892,5561,5559,5560,5084,5449,5891,5083,5443,5444,5445,5876,5971,5972,5980,5979,5522,5497,5498,5862,5519,5517,5523,4946,4947,4948,5087,5093,5097,4895,4896,4897,4902,4903,4905,4907,4908,4911,4912,5100,5101,5099,5461,5082,4900,5474,5425,5426] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [4928,4929,4930,5117,5118,6002,5984,6001,6003,5265,5267,5990,5991,5999,5137,5426,5429,5350,5428,5344,5348,5330,5205,5207,5209,5210,5238,5241,5150,8483,5177,5211,5236,5351,4919,4920,5100,4926,5099,5097,5973,5974,5979,5981,5443,5444] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [12527,12536,12537,12539,12565,12568,12543,12544,12509,12512,12520,12535,11943,11945,11993,12130,11941,11942,11947,11948,11992,11949,11951,11953,11954,12507,12908,12922,11958,12147,13026,12514,12937,12938,13018,12489,12490,12495,11994,12145,12146,12139,12143,11957,11961,11977,11966,12606,12607] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [9967,10734,9963,9969,9998,9999,10159,9972,10081,10160,9941,10155,10157,9660,9848,9864,9881,9940,9942,9968,9929,9936,9938,9907,9930,10061,9996,10079,10075,10715,9661,9655,9828,9830,10733,9656,9658,9849,10175,10702,10704,10705,10710,10174,9832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [8373,8343,8344,8349,8372,7467,7469,7606,8354,7602,7580,7579,7581,7488,7798,7487,7463,7575,7635,7637,7714,7715,7718,7720,7721,7634,7699,7700,7705,7452,7814,8341,7453,7813,7815,7454,7607,7608,7611,7796,7799,7577,7297,7298,7299,7300,7503,7701,8360,8361] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [10622,10623,10197,10194,10199,9630,9815,10192,10593,10703,10711,9679,9831,9832,9677,9678,10175,10702,10710,10180,10174,9828,9814,9824,9813,9816,9627,9628,10253,10228,10229,10221] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [7033,7034,12057,12064,12067,12075,12054,12060,12061,6996,6968,6995,6998,12068,12063,11833,12039,12051,5920,5931,12069,5532,5533,5569,12078,5632,5634,5630,5592,5593,5633,6952,6954,6955] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [711,712,714,4693,718,715,4699,4700,4702,4703,4701,4705,3096,325,3114,3115,3097,2690,2702,2710,2707,2708,2709,737,2335,735,736,2703,330,331,332,722,229,312,324,329,2323,2331,2333,3092,3093,3089,4719,4714,2351,4721] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [7318,7271,7266,7267,7316,7317,7269,8349,7471,7467,7469,8350,7463,7836,7837,7838,7454,7452,7814,8261,7453,7813,7273,7275,8232,8246,7892,7867,7868,7863,8262,7860,8342] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [12311,12312,12475,12284,12287,12163,12196,12255,12256,12390,12391,12394,12396,12397,12314,13040,13041,12278,12283,12253,13019,13020,13027,13036,13037,13030,12145,12146,12143,12471,12472,12474,11973,11970,11971,12164,12147,13024,13025,12489,12490,13017] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [14079,14087,14085,14086,14091,12504,12521,12522,12523,5069,5070,5071,5072,5064,5052,5065,12110,12117,12118,7065,12115,12116,12505,12508,4969,7083,12500,7055,7061,5458,5459,5451,5452,5454,5462,5476,5477,7067,7062,7063,7068,14107,5907,7064,14088,14089] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [12679,12680,12966,12967,12977,13992,14057,13988,13989,5032,12612,12638,12578,12579,12648,13970,13973,13966,14019,14022,14018,14055,12678,13994,12675,12676,12677,5011,5015,5014,5021,5022,5023,12615,12639,12642,4839,4787,5016,5017,5018,5029,4993,5005,5008,14058] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [4587,3240,4577,4580,4584,3230,4581,4603,4606,4633,4636,4568,278,3231,3234,3271,3267,3269,3270,3272,3268,268,274,282,283,289,292,3204,3207,47,253,271,275,276,277,3569,4671,3170,3171,3309] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [852,891,893,2214,2217,2210,2659,2670,2652,2646,2649,853,856,890,892,894,1180,2232,1181,1191,2236,2301,2631,2263,862,792,793,829,2661] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [7434,7439,7448,7725,7726,7175,7357,7358,7359,7361,7362,7364,7356,7153,7154,7155,7728,7806,7214,7805,7731,7174,7811,7817] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [9720,9723,9725,9722,10089,10087,10086,9514,9516,9724,10167,9535,9536,9717,9718,9795,9800,9809] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [4730,2352,2961,3091,3595,2936,4727,2347,2349,2308,2315,2316,2319,2276,2975,2978,2979,4736,2946,2947,4739,2933,2921,2926,2929,2930,2931,2408,2977] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [5292,5293,5298,5336,14072,14074,5333,5337,5339,5340,5359,14075,5283,4770,5294,5341,5291,14062,14064,14101,14071,14032,5957,7092,5323,14108,14105,14104,7089,5453] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [14116,12379,12369,12383,12385,12386,12344,12338,12339,12329,12334,12337,7008,11816,7039,7080,7081,7084,14113,7047,7048,7051,12499,13003,12496,7077,7040,12343,14118] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [600,601,4646,4678,4685,4689,543,597,599,4686,713,4722,596,583,593,1217,30,548,551,552,553,554,2357,4719,4717,555,558,2360] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [11913,11914,3420,12154,12155,3416,2383,2385,12005,11985,3414,11986,2915,2916,3421,2917,12153,12450,12451] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [2652,2266,2646,2653,2425,2649,2264,2656,2301,2631,2263,1191,2233,2236] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [578,977,952,955,919,579,1186,2374,2375,2377,2373,2061,945] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [5318,5319,5717,5692,5685,5659,5695,7105,7106,5926] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [7999,8000,8002,8001,8003,8004,9310,7963,7972,7962,9303,8290,8291,8301,7939,7941,7902,7903,7856] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [12922,12923,12911,12912,11958,12147,12886,13026,11965,11957,11961,11977,11966,11973,11970,11994,12146] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [167,168,171,172,175,360,361,180,1240,1136,1100,179,187,189,1126,1125,1137] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [6336,6337,6339,5867,6060,6061,6347,6282,6333,5863,5514,5865,5866] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [3355,3297,3323,2956,2957,3330,3331,3333,4745] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [1945,1947,7519,1939,1933,1940,7518,7520,1360,1935,1410,1411,1357,7547,1429] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [12364,12705,12738,12739,12741,12763,12731,13817,13839,14129,14130,12365] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [8087,8062,8029,8065,7688,7689,9468,9469,8063,8296,9466] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [7289,7294,7282,7285,8347,8348,8372,7470,7471,8350,8235,8236,8210,8246] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [4864,4867,4956,4958,1006,4863,4871,4872,1041,1042,1043,537,4959,4892] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [6357,6211,6212,6214,6358,6634,6636,6638,6480,6442,6043] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        
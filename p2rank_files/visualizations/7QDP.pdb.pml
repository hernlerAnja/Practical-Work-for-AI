
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
        
        load "data/7QDP.pdb", protein
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
 
        load "data/7QDP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2172,274,802,3368,3393,3400,3401,2175,277,1269,1447,3671,1276,1286,3670,1264,1270,1271,273,295,1448,1466,1467,1496,1468,1469,1477,1495,3363,3336,3341,3326,3327,3330,3367,3365,3366,787,3328,3338,3340,3178,3179,3337,3176,3335,1735,1736,3652,3604,3605,3606,3653,3654,3655,3307,3309,3306,3156,3157,3163,3164,2171,2674,2192,2193,3162] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [949,94,656,657,659,665,83,688,967,934,935,936,946,947,953,661,669,382,968,981,702,704,86,87,90,91,85,682,4656,379,402,918] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [7423,7687,7716,7802,7803,7804,7699,7289,7252,7688,7153,7155,7308,7792,7227,7293,7142,7239,7406,7408,7292,7304,7290,7635,7472,7647,7447,7448,7449] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [1621,1120,1121,1623,1625,1620,1629,1362,1633,1888,1365,1927,1925,1087,1091,1652,1082,1083,1924,1646,1666,1668,1084] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [7324,7147,7629,7309,7313,7627,6686,7137,6996,7033,7032,7292,7300,7294,7297,6838,6689,6683,7293,7141,6997,6977,6741] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [4400,4567,4570,4571,4016,4068,4573,4003,4008,4009,4010,4012,4081,4555,4337,4339,4395,4396,4399,4403,4155,4343,4347,4336,4589,4595,4593,4301,4900,4297,4577,4579,4346] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [12745,12960,12969,12973,12757,12971,12978,12706,13138,13117,13120,13122,12670,13127,13134,12693,12959,12962,12854,12856,13023,13026,12972,13024,13025,13027,13028,12985,12997,12848,12896,12898,12671,12746] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [5486,5435,5441,5442,5445,5481,5482,5483,5484,5436,5459,5452,5601,5187,5189,5605,5426,5585,5236,5425,5222,5224,5588,5169,5170,5172,5433] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [10540,10553,10383,10509,10512,10531,10511,10519,10520,10367,10662,10659,10675,10199,10679,10203,10187,10188,10669,10186,10250,10256,10258,10264,10495,10505,10508,10249,10251,10252,10189,10265,10268,10359,10365,10357,10371,10372,10358,10506,10378,10379,10381,10496,10503] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [8167,8212,8213,8027,8034,8037,8038,7865,8028,8223,8077,8319,8320,8335,7852,8373,8375,8063,8067,8170] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [6598,6158,6597,6580,6581,6583,6482,6148,6582,6152,6216,6218,6219,6223,6584,6585,6586,6213,6403,6420,6483,6485,6459,6212,6287,6207,6209,6170,6435,6162] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [2008,2006,2007,2009,2568,2012,2016,9654,2562,2539,2819,2537,2291,2536,2852] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [5787,5792,5796,5857,5858,5928,5929,5721,6000,5774,5775,5776,5892,5773,5785,5788,5988,5989,6098,5934,5935,5938,5939,5945,5946,5847,5703,5704,5706,6099,5708,5707,5719] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [8957,8958,8960,9021,9122,9571,9287,9284,9286,9417,9911,9416,9574] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [13059,13097,12768,13046,13048,12658,13107,12635,13098,13100,13101,12647,12648,12782,12795] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [2374,2391,2119,2489,2488,2716,2469,2681,2741,2340,2522,2708,2465] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [778,327,777,779,3387,3469,3471,3497,3355,3356,3530,3531,3470,3504,3529,3323,12338,328] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [769,762,757,3565,3577,3573,3576,3322,3551,3554,3556,3300,3328,3358,3359,765,766] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [4597,4610,4884,4313,4314,4315,4316,4323,4430,4445,4446,4324,4303,4622,4866,4309] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [12067,12066,12050,12047,12046,11894,12570,11990,11994,11866,12009,12006] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [11994,12033,12804,12038,12041,11866,11419,11857,11859,11417,12009,12006,12050,12047,11889,11890,11395,11403] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [2626,2648,2896,2336,2218,2231,2900,2233,2234,2907,2893,2237] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [10974,10975,10849,11097,11093,11096,11110,11176,11111,11101,10921,10870,10952,10953,10954,10955,10956,10941,10847,10855,10848] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [8231,8234,8235,8107,8110,8296,8298,8240,8244,8242,8245,8246,8243,8144,8087,8088,8133] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [1965,1966,1968,1710,1972,1298,1314,1317,1368,1380,1413,1370] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [9822,9645,9651,9653,2530,9850,9851,9852,9853,9638,9641,2502,2533,2525,2527,9824,2537,2534] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [10934,10935,10923,11164,11165,11151,11153,10938,11115,11274,10780,11108,11109,11275,11110,11111] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [4648,4655,4656,4657,4840,4641,4644,4839,647,650,645,646,652,653,654,622,4811,4842] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [9109,9128,9129,9130,9343,9211,9342,9348,9344,9382,9383,9327,9168,9169] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [2741,2764,2072,2101,2712,2489,2510] 
set surface_color,  pcol30, surf_pocket30 
   
        
        deselect
        
        orient
        
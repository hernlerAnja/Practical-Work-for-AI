
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
        
        load "data/7QG2.pdb", protein
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
 
        load "data/7QG2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7833,7834,7826,7397,7871,7872,7858,7222,7382,7404,7386,7014,7388,3055,3067,7835,3068,3060,3066,5281,7015,5275,4088,4093,4094,4095,7227,7219,7220,7223,7224,2951,3393,3395,3391,7258,3108,3135,7378,7377,7376,7009,7013,7010,7251,7255,7239,7245,7256,3383,7211,7212,3102,3104,3071,3072,3091,4102,4103,4100,4101,4081,5283,7832,5290,7403,3042,3050,3051,7857] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2957,2961,2962,2986,2459,2460,2500,2502,2467,2468,3354,3429,3329,3337,3430,3435,3438,2469,2603,2604,2933,2954,2452,2501,2588,2926,2928,2941,2953,2955,2995,3353,2903,2904,2905,2906,2908,2909,2914,2439,2446,2449,2447,2448,2453,2454,2521,2404,2450,2451,3033,3025,2403,2399] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [5570,5595,4676,4678,5578,4654,5670,5671,5676,5679,4694,4696,4798,5208,5207,5571,5174,4646,5170,5172,5179,5200,4695,4782,5160,5176,5594,5149,5150,5151,5152,5154,5155,5187,5203,5199,5201,4643,4647,4648,4649,4651,4641,4642,5241,5231,5232,5271,5279,4645,4600] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [7516,7521,7527,7847,7849,7851,7528,7529,7509,5615,5620,7511,7512,5625,7510,5349,5350,5306,5312,5301,5313,5624,5632,5634,5636,5187,5197,5198,7556,7557,7591,5337,7532,7533,8564,7555,7562,7563,7564,7565,7589,5314,5317,6340,6341,6327,6334,5318,6346,6347,6348,6349,5376,5340,5341,5342,840,846,8535,8556,8555,8542,8549,848,8563,5294,5295,5296,5297,7830,7837,5290,7838,7412,7413,7403,7402,7840,3029,3037,7839,3035] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [860,1918,1920,866,879,882,883,902,1911,1912,4768,4769,4763,4764,4767,5616,5619,7498,7496,5162,5167,5190,5608,5163,5171,5173,5189,5609,5610,5611,914,1198,1200,1201,1189,915,877,913,905,941,939,907,903,762,804,859,861,862,5024,5656,4996,4997,5040,5043,5041,5042,5044,5643,5012,5008,5657,5005,5642] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [6940,6941,6942,6888,6893,6894,6899,6900,6906,6907,6908,6910,6897,7785,7810,7886,7793,7885,6911,6891,7387,7389,6892,6846,6889,7395,7396,7809,7375,7391,7394,7368,7043,7044,7028,7364,7365,7366,7418,7422,7415,7423,7447,7456,7486,7494,6852,7402,7408,7414,6843,6845,7786,7483,7484,7505,7482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [236,237,238,239,240,243,244,765,766,768,772,797,1135,1160,739,737,741,744,194,241,249,292,394,256,257,1143,1236,245,247,250,1244,242,378,291,714,715,717,725,719,1159,599,806,844,836] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [7388,7389,6963,6961,6962,6974,6976,6978,6867,6873,6874,6875,6862,6863,6784,4599,4621,4596,4606,4615,4616,4618,4617,6766,6777,6781,6782,4715,4716,4600,4717,4732,6842,6845,4731,6861,5173,5174,5187] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [5440,1181,1182,5003,5416,5447,1183,1184,1185,5476,5477,5478,6625,6588,6589,6590,6591,6566,738,753,754,747,727,364,732,354,360,365,5010,5011,5417,5418,5420] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [2943,2944,2921,2925,2927,2574,2575,2570,8806,7655,8781,2942,7225,7227,7635,7234,7217,7218,7226,7634,7631,2941,3375,3377,3378,3379,7662,7664,2916,7692,7691,7693] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [4398,4399,4401,4402,4403,4392,6994,6654,7271,6678,6697,6699,6677,6680,3157,7275,7272,7008,7009,7274,6983,6986,3093,3095,3132,3134,7259,3088,3091,3079,4099,4115,6991,4116,4135,4134] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [4434,902,890,4738,4739,4740,4748,4761,4762,1932,1952,892,1951,5056,4431,4432,4433,4452,4453,5059,5057,5060,906,899,901,904,2216,2218,963,2220,2215,2209,4427] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [6862,6863,6963,6976,6978,4599,4621,4596,4615,4616,4618,4538,4617,4627,4628,4535,4715,4717,4629,4520,4732,6842,6845,4729,4731,6861] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [2602,2471,2474,2604,2697,3437,2655,2890,2621,3436,3438,3318,2470,2656,3460,2480,2482,2484,2661,3319,3302,3540] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [5371,5642,5638,5644,5400,5420,5641,5643,5010,5011,5012,5019,5020,5372,5373,5374,762,861,862,1201,6624,753,754,752,5624,5629] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [1884,1602,1887,1853,1854,1866,1872,1846,1852,8301,8302,1857,1859,8288,8287,8305,1896,1877,1879,1624,1644,1615,1616,1617,1669,1670,1609] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [8253,8261,1893,1894,1895,1896,1877,7470,7468,7471,7462,8539,8540,8521,8538,820,1609,1617] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [6073,3827,3845,3826,3841,3843,6098,6286,6288,6275,6053,6099,6045,6046,6168,6107,6031,6038,6316] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [8246,8253,8268,8260,8261,8314,8313,8288,8540,1660,8490,8501,1643,1644,1657,8530,8531,8498,8496] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [3799,3800,4040,4042,3807,3852,3853,6090,3861,3873,3785,3792,6073,3827,6072,6087,6088] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [5136,4932,4889,4890,4891,5678,5692,4897,4669,4672,4815,4894] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [7893,7894,7109,6920,6912,6918,6913,7916,7915,7917,7999,7775,8010,7758,6911,8003,8004,8001,8002] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [6002,6417,6419,6034,6261] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        
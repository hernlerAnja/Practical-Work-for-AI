
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
        
        load "data/4ZTL.pdb", protein
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
 
        load "data/4ZTL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3036,7798,7799,7800,7342,3013,3014,3033,4050,4053,6949,4045,6950,6953,6954,6955,4043,4044,7347,7370,7363,7351,7353,7348,7341,7343,7220,7791,3340,3049,3053,3328,3336,3338,7223,3339,7837,7836,7176,7177,7184,7185,7796,5203,7369,7368,2993,2986,2992,7822,7823,3009,3004,3010,4031,4051,4052,4038,2997,4024,5201,5195,2984,2990,2935,3002,3008,7191,2893] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [875,7461,1913,1920,887,888,1906,5536,869,7463,911,4715,891,892,1926,1928,1925,5528,5531,5532,5103,5087,5110,5082,5083,1216,4949,1218,5576,931,4938,5577,912,914,4982,4984,4981,5562,5563,870,862,864,868,871,1217,927,929,919,771,813,1214,956,4937,1206,958,4952,5539,4716,1918,1919,5109,5091] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [4597,4598,4593,4594,4595,4734,4646,4647,5119,5120,5123,5152,4592,4612,4613,4599,4600,4603,4605,4606,4648,5128,5107,5099,5092,5094,4550,5090,5490,5514,5515,5590,5591,5592,4976,5071,5073,5074,4748,5075,5498,5593,5596,5597,5599,5127,5096,5100,5080,5069,5070,5072] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5232,5268,5270,5552,5554,5555,5542,5544,5118,7493,7474,7481,5545,5535,7475,7476,7477,5237,5238,5257,6286,6288,5233,7519,7521,7494,7497,7498,8548,5259,5261,5262,5295,5296,8538,857,8540,871,8539,8545,8546,6279,7802,5215,5216,5217,5556,7795,5117,7378,7812,7814,7492,7815,7816,5540,7377,7556,7805,2979,6280,7804,7528,7529,5221,5214] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2462,2496,2497,2498,2730,2847,3298,3374,3375,3376,2456,2457,2458,2459,2460,2461,2469,2476,3282,3381,3383,3377,3380,2868,2870,2872,2856,2584,2416,2849,2599,2851,2896,2899,2904,2928,2937,2903,3274,3299,2967,2875,2883,2889,2895] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6833,6834,6880,6881,6839,6840,6882,6981,6983,6843,6852,6845,6846,6853,7750,7758,7775,7850,7851,7852,7853,7856,7857,7859,6984,7352,6835,6837,6792,7360,7356,7774,7359,7214,7340,7330,7331,6968,6838,7333,7112,7335,6982,7383,7367,7379,7380,7412,7387,7388] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [225,228,226,227,233,234,1152,1176,1177,1252,1253,750,753,754,755,608,183,230,231,744,748,777,781,806,761,773,774,236,1160,367,723,724,726,280,281,379,380,728,729,607,609,1258,1259,1261,245,246,382,1254,279,238,734] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3034,3035,3037,4350,6625,6627,6628,6925,6934,6619,6623,7236,6624,6626,6645,6600,7237,7240,7234,3076,3077,3030,3033,6949,6962,6948,3021,4342,4351,4353,3023,4085,4084,4049,4065,4066,6933,3101,4352,4348] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4713,4714,4691,899,1940,4699,901,1959,1960,1941,911,4715,1924,4383,4405,4385,4384,5000,5001,4995,4998,2217,2223,2225,979,2226,2228,908,949,4379,4997,4360,913,915,4690] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [8244,8297,8298,8270,8271,8272,1665,8286,8287,8289,1854,1865,1624,1867,8285,1904,1625,1610,1862,1874,8237,8252,8230,8505,8524,8245,8514,8515,1617,1631,1632,1652,8482,8485,8474,1666,1667,1669,1650,1651,1664,1676,1677,1678,8487,8494,8507,8251,1895] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [741,745,764,736,1202,1200,762,763,1198,4951,4952,4953,4944,4960,5337,4943,5338,5340,6563,6564,348,5360,6530,6529,5398,6505,5397,6504,5336] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [7190,7191,7192,2884,2885,7199,7182,7597,7598,8790,7596,8789,7620,3320,3321,3322,3323,3324,7657,7600,7599,8824,7658,8765,8764,8823] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5291,5562,5563,4961,5320,1218,5293,5294,5295,5296,870,864,871,4951,4952,4953,4960,5340,771,5544,5545] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3791,5984,5985,3794,6036,6037,6038,5992,6012,3776,3777,3790,3789,5977,6225,6227] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [3777,3750,3757,3801,3802,3803,6029,3749,3990,3992,5992,6011,6012,6025,6024,6026,3735,3742] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [4678,4679,4680,4682,4684,6788,4696,4669,4681,4683,6791,6807] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [7684,7158,7686,7903,7899,7127,7128,7129,7136,7130] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5621,4629,4630,5620,5463,5480,5727,5728,5734,5725,4614,4616,5598,4617,4615,5479,5498,5499] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [2951,2949,3742,2952,4028,4029,4027,6264,6262,6263,5167,5173,5175,5977,3750,5985] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        
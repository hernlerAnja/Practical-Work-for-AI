
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
        
        load "data/8GUA.pdb", protein
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
 
        load "data/8GUA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6262,6263,6234,6235,6236,6237,6265,6230,6932,6925,6959,6964,6965,6966,6968,6969,6429,6420,6421,6902,6904,6931,6935,6937,6938,6264,6963,6983,6343,6223,6224,6331,6430,6985,6388,6390,6335,5958,6015,6016,6017,6252,6253,6254,6255,6256,6257,6251,5960,6143,6062,5936,5937,5939,5940,5941,5914,6122,5967,5968,5965,5966] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3702,3731,522,523,1213,3705,5477,5478,5481,5484,4796,5468,4793,5560,4805,5561,5562,4097,3761,3765,3767,4096,3735,3728,3729,3730,3733,3704,5262,5493,5256,5259,5281,5318,5319,5461,5462,5317,5282,5291,3737,5258,5286,5287,5290,4050,4051,4045,4046,4048,4011,4014,4020,4047,4049,4803,4804,4812] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2531,2536,2538,2534,4194,2528,4168,2539,3850,233,2274,3862,3864,4198,4201,3841,4202,3873,3875,2418,2562,2542,2545,2546,4159,4193,2260,2265,2267,2270,2377,2254,2271,2299,2300,2301,2302,2376,2375,2349,2381,217,218,230,2311,225,223,4189,241,4190,3874,224,2525,3820,2529] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [6161,6148,6151,6158,6159,6152,4959,6044,6070,5618,6069,5599,5642,5470,5472,5474,5475,5573,5252,5253,5254,5169,5190,5551,5553,4945,4946,4977,4978,4934,5168,5170,4997,4999,4916,4931,4932,5552,5557,5564,5569,5568,5570] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [2450,2451,2529,2446,2447,2448,2449,6640,6641,6642,6643,3821,3834,2445,6689,6634,6636,6635,2520,2521,2523,2530,2241,2244,2438,2424,2427,2517,2519,2515,3825,4128,6647,6645,6646,6650,6651,4170,2419,4171,2417,4155,4153,4154] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [4774,4775,4776,4348,4004,4317,4319,498,1411,4347,4349,489,488,500,1422,452,453,4760,4761,1414,4833,4834,4835,480,391,390,400,4315,4311,4309,1409,4310,1426,1416,4303,4307,4300,1441,4006,4809] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5558,5559,5560,5149,4805,5561,5562,4826,1101,1209,1214,1215,5116,5118,1218,1220,1222,5108,5109,5566,5146,5153,5585,5105,523,1249,1250,1292,1293,4827,4804,1084,1098,5145,5160,5162,4824,5139,5133,5117,5119] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [539,5344,5345,5346,5354,537,538,1240,1242,5319,5445,5464,5316,5317,1249,1250,1269,5438,5439,1270,1271,1272,5456,1208,1211,1212,1213,5381,5382,5385,581,5392,5437] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4113,4391,4422,4419,4421,106,122,128,130,4111,4114,5517,4138,4142,5520,4134,5513,5518,5519,4448,5506,5510,4447,4086,5504,4109] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [6791,6863,6485,6487,6898,6899,6900,6901,6902,6903,6904,6484,6784,5968,5977,5948] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [2980,2981,2979,2982,3222,3212,3007,2996,3223,3006,3245,3246,3247,3005,3013,6614,3497,3544,3546,3533,3535,3248] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [3750,3740,545,3714,3715,544,3751,3738,3739,5323,5327,5328,5353,5351,5352,5354,538,540,546,550,3464,3466,6562,5362,5392,5393] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [3852,3863,3865,2305,3896,3897,3885,3888,3879,2117,2118,2327,2328,3589,3564,3567,3568,3855,3566,3577,3845,3597] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3187,3188,3213,2983,3224,2962,2949,3472,3475,6552,6553,6555,3471,6589,6590,3214] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [437,438,439,440,435,436,1364,1397,1398,1363,1043,1128,1132,1126,1117] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5234,3768,4095,5499,5231,5233,3801,4091,4126,4092,4093,4119,4120] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1830,2509,2510,2517,2519,2511,1828,1829,3534,2462,2480,6710,6708,6689,6700] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1090,1092,1414,1091,5063,5068,5069,5070,1112,1349,1381,1350,1379,4836,5051,5056,1413,1060,1061,5062,1059] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [4327,4330,61,1449,1444,56,59,23,53,89,4331,4339,4302,1445,4338,4280,62,1468] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        
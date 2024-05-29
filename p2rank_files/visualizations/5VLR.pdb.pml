
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
        
        load "data/5VLR.pdb", protein
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
 
        load "data/5VLR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4241,4242,4927,4922,4925,4926,4928,1183,1184,1186,1185,5283,5285,5286,5502,5505,4240,4916,5499,5344,5482,1666,5307,5489,5498,4238,4935,3930,3931,3933,3935,3936,3895,3904,3907,1173,1179,3896,4215,4192,1166,1167,1168,4208,4209,4285,3970,5318,4284,3929,5316,5315,5311,5312,3945,5341,5343,1667,4191] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5578,6138,5195,6054,6146,6136,6139,5215,6147,6120,6121,5602,5583,5596,5600,5624,5042,5043,5639,5104,6055,5599,5103,5622,5309,5494,5496,5277,5279,6140,5576,5194,5579,5213,5214,5506,5577,5507,5631,5660] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [2388,2389,3755,3764,3766,3803,4095,4096,3802,4087,4091,4060,4049,4050,4107,4051,4086,4089,4057,4052,4034,4056,4061,4064,4080,2609,3779,3781,3782,3783,3792,3793,3773,2379,2629,3714,3720,3726,3722] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [1685,1686,1632,1365,1415,1418,1262,1263,1264,1354,1376,1252,1363,1364,1251,1585,1509,1584,1765,1766,1279,1417,1656,1631,1369,1372,1398,1400,1401,1658] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2596,2597,2340,2359,2646,2647,3006,3007,3011,3026,3038,2339,2341,1864,1865,1867,2343,2345,2342,1888,1889] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [808,806,807,809,836,838,839,840,7446,7424,7390,7445,805,7392,7395,7391,7416,4331,4348,4323,800,4372,4375,4367,4374,847,872,873,834,835,2862,2877,2878,2876,4344,4347,4346] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [4348,4349,7333,7327,7328,7359,7360,7392,2887,7299,7335,7336,7297,7325,2742,2872,2741,4347,4355,2732,2734,2871] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [2844,2578,902,2599,2602,2606,2655,2656,2701,2571,2681,2683,2678,2685,899,2612,2614,2845,2847,4055,2849,2852,2859,2855,2856,2863,887,885,886,2688,2864,4375] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [3707,3708,3710,6621,3467,3750,3751,3761,3762,6758,6759,6646,6619,3744,6669,6671,3745,3734] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [779,784,4302,4328,798,4560,4561,4562,4589,4590,4297,5526,5528,5530,5531,4335,5534,5538,4274,5558,4610,5559,4581,4583,4580] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [5722,5756,6292,5645,6062,6063,6061,5646,5868,5870,6329,6304,6290,6291,6302] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [6110,5912,5944,6130,6131,6001,6002,6267,6047,5926,6260,6263,6264,6266,6305,6281,5924] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [2839,2838,4354,4355,2732,2831,2739,2546,2549,2814,2815,2726,2826,2830,2755,2828] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [4488,4490,4492,4489,4526,1116,1117,1837,1836,1838,4201,4899,1162,1557,1839] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2736,2742,2872,2737,2740,2537,8059,2717,2914,2918,7326,7327,7328,8058,8020,8022] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [573,581,438,488,489,442,446,447,592,589,546,4564,4589,4568,4571,4538,778,777,457,780,779,4540] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [1785,1503,1786,1124,1161,1577,1578,1839,1819] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [2721,2922,2929,1972,2242,2263,1996,2441] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [1023,1024,1049,1060,4472,1047,1143,1144,4490,4493,4495,4484] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4584,5570,4604,4576,4866,4889,4961,5132,5186,5112] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [5444,5441,1211,1212,1199,1202,5403,5405,1636,1637,1718,1720,5461,1692] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [1424,1509,1779,1765,1766,1278,1279,1417,1420,1418] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2433,2434,2065,2424,2436,2440,2437,2929] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        
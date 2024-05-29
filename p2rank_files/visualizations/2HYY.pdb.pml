
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
        
        load "data/2HYY.pdb", protein
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
 
        load "data/2HYY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4689,4807,5260,5353,4688,4808,4491,4493,4591,4593,4792,4479,4812,4478,4477,4487,4789,4590,4616,4617,4588,4589,4642,4686,4316,4347,4344,4345,4343,4314,4369,4370,4337,4318,4319,4846,4856,4857,4860,4832,4840,4829,4833,5261,4828,4317,4826,5351,5347,4866,4891,4888,4682,5333,5334,5126,5189,5339,5340,5341,5343,4644,5127,5167,4608,4609,4610,5185,5177] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2374,3251,3253,3160,3161,3254,2708,2707,2712,2588,2232,2244,2209,2211,2213,2214,2242,2212,2726,2728,2243,2373,3236,2766,2760,2757,2746,2756,2732,2729,2265,2264,2388,2382,2386,2689,2493,2516,2517,2239,2240,2238,2241,3248,3239,3240,3245,3247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [6449,6761,6884,6559,6879,6880,6427,6898,6394,6396,6397,6398,6399,6450,6571,6573,6567,6861,6864,6429,7332,7333,7423,7425,7408,6760,7412,6692,6423,6668,7411,6417,6938,6963,6919,6929,6932,6912,6901,6904,6900] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [639,663,664,636,1061,1062,115,633,626,631,141,168,143,145,147,114,142,167,277,289,291,285,400,596,495,614,615,609,619,493,496,424,276,1148,1146,1152,1154,1137,1141,1140,667,116,117] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2588,2542,2544,2586,2514,3026,3083,3027,3067,3070,3234,3233,3236,3089,2582,3243,3239,3240,2509,3077,3085,2493,2490,2516,2517,2508] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [990,933,934,984,451,489,968,969,971,417,986,416,978,1144,1134,1137,1141,1140,1135,423,397,425,395,424,400,495,493] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [6760,7412,6714,6716,6758,6691,6692,6689,6712,7405,7408,6663,6683,6684,6668,7411,6665,6754,7261,7263,7257,7413,7415,7249,7239,7242,7198] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [1270,3775,3777,3776,8044,8032,8036,8026,8110,8108,8142,8143,8146,1179,3740,1239,3738,8039,3746,3747,3748,3749,8015,7995,1200,1202,1203,1219,1229,1234,1271,1272,1269,1201,1183,1188,1177,1194,1199] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [1238,1237,1241,1247,1250,3461,1239,3736,3738,3739,3400,3398,3336,3340,3346,3347,3349,3381,3333,3379,3462,3464,3465,3399,3730,3757,3761] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [1296,1297,1298,1359,1360,1361,1362,1363,1659,3343,3352,1663,1641,1637,3341,1631,1632,1638,1640,1233,3336,3340,3346,3349,1238,1244,1247] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [6046,6047,5939,1649,1651,1650,1677,1678,1679,1642,3341,5936,6015,6016,5930,6044,6043,3374,3305,3373,3321,3290,3298,3282,3276,5945,6013,5948,5947] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [1545,1792,798,801,820,822,1505,1539,1805,800,818,819,824,1804,856,1509,1821,1822,825,830,1794,1797] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [6004,5023,5983,5984,4994,5971,5012,4991,4993,5011,5013,5015,5017,5018,5049,5687,5723,5724,5727,5721,5691] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3919,3920,4131,3902,3903,2923,3642,3889,3890,2894,2915,2913,2949,2891,2893,3643,3603,3607,3640,3637] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [2783,3135,3629,3676,3679,3680,3687,3421,3422,2782,3670,3293,3316,3312] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [7085,7083,7084,7089,7090,7093,7063,7065,7066,7095,7087,8070,8083,8082,8099,8100,7823,7121,7787,7817,7820,7822] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [7008,6974,6970,6972,6922,6923,6924,6925,6926,6997,6998,7004,7005,7045,7046,7369,7371,7010] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [5546,5549,5545,5430,5431,5433,5435,5548,5814,5482,5483,5484,5845,5846,5847,5822,5417,5463] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [4902,4898,4900,4851,4853,4854,4925,4926,4932,4895,4933,4852,4927,4938,4973,4974,5297] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [5966,5962,7827,7854,4950,4952,5744,5745,4949,4983,6985,6987,7025,7026,7834,7835,4965,4990,4954,5726] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [7526,7527,7528,7529,7530,7641,7579,7580,7578,7642,7645,7561,7563] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [3698,3559,3560,3562,3843,3838,3987,3989,3990,3992,3988] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [5927,5782,6068,6070,6071,5646] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        

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
        
        load "data/4NIF.pdb", protein
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
 
        load "data/4NIF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3772,3670,2814,3770,3771,3689,3763,3764,3765,3769,2656,2655,2657,2662,2666,2669,2674,2677,2653,2654,2690,2691,2692,2812,2813,3256,3257,3688,2806,2797,3901,3632,3649,3664,3898,3905,3912,2661,3895,2926,2925,2920,2921,2922,2929,2934,2830,2930,2962,2963,2635,2641,3305,3661,2644,2646,2647,2636,2637,2639,3274,3277,3662,3321,3323,3324,3334,3322] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [7916,7917,8606,8607,7928,7923,7926,7922,7972,7974,7957,8092,8094,8605,8933,8934,8935,8578,9042,8940,9040,9041,9039,8096,8244,8095,8212,8216,8112,7935,7936,7937,7939,7943,7944,7959,7956,7948,7951,8208,8204,8207,9179,9186,8905,8922,9169,9175,7929,8958,8959,9034,8079,8566,8571,8575,8550,7918,7919,7921,7973,8077,8080,8082,8529,8088] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1704,1679,2276,2277,2278,2274,1675,1701,1706,1707,2254,2256,2285,2286,990,991,992,993,1001,1006,1461,1467,1462,1463,1464,1465,1466,1468,1900,1437,1438,1008,1476,1410,1908,1916,1918,1959,1411,1420,1440,1412,1436,1439,2500,994,995,997,2503,1935,1936] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1171,1172,1174,98,100,102,103,108,134,107,280,281,282,152,628,629,154,267,1044,681,1035,1165,1059,1060,1061,498,633,652,651,91,97,92,93,95,650,646,1175,380,614,1167,412,497] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [5444,5570,5571,5572,5442,5557,5788,5918,5919,6455,6346,6347,6321,5967,5941,5942,5937,5385,5383,5381,5940,6330,5424,5398,5392,5397,5387,5388,5390,5702,6457,5573,5670,6458,6465,6461,5787,5904,6463,6462,6464] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [6990,7568,6700,6701,6702,7215,7787,7216,6755,6987,7196,7198,7789,7790,6961,6992,6993,7565,7567,7577,7576,7545,7569,6965,6726,6727,6729,6723,6725,6730,6280,6283,6710,7239,6276,6277,6278,6757,6753,6754,6294,6766,7547] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [9534,9285,9287,9259,9267,9284,9130,6543,6542,9128,9129,9137,9138,9141,9142,9150,9194,9195,9525,9529,9532,9535,9192,6540,9168,20,25,28,29,33,34,32,218,23,24,546,6549,11,6544,9232,9174] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3985,3867,3868,3872,3988,3859,3873,3880,3858,3860,3958,5324,1253,5319,5322,5310,5317,5318,5323,5315,5836,5314,1259,4242,4251,4255,4258,4260,3921,4261,3919,1251,5301] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [20,30,31,32,9765,9735,9738,1,2,3,11,10,9,9542,9544,9768,9770,9766,4,8,19,9267,9273,9275,9279,9741,9529,9568] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [6580,6587,6581,6586,6598,257,522,259,261,521,631,634,637,639,6579,6563,6568,239,241,6614,245] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [4295,4328,4515,4329,4756,4495,4005,4754,4004,4406] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4005,4453,4456,4459,4483,5292,5320,5321,5322,3999,4001,3993,5310,5315,4268,4270,4484,4485,4486,5293,5298,5300,5309,5294,5301,4294,4255] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [8595,8597,8631,8632,9184,9185,9208,9210,9220,9222,9427,9475,9186,8922,8593,8918,8919,8930,8934,8935] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3322,4201,3320,4153,3324,3934,3935,3936,3655,3911,3946,3948,3357,3664,3910,3912] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4495,4457,4458,4459,4460,4461,4754,4426,4004,4756,4406] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8893,8895,9077,9078,9122,9310,9312,9306,9097,9120,9133,8875,9085,9094,9126] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5811,1278,1284,1290,5812,1291,1296,1312,1314,5549,5551,1289,5531,5529] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [4023,4029,4032,3807,3808,3815,3824,3828,3850,3827,3622,3602,3620,4038,4033,4036,3852] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
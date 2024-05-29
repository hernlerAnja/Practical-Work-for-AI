
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
        
        load "data/4Z16.pdb", protein
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
 
        load "data/4Z16.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2336,2337,2393,2392,2339,2534,2672,2888,3407,3410,3412,3414,2889,2518,2936,2940,2941,3299,2933,3308,3328,3329,3330,2340,2932,2911,2914,2776,2893,3406,3405] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [5650,5653,5655,4579,4777,4915,4636,5657,5571,5572,5573,5648,5649,5542,5551,5184,5211,5663,5176,5179,4761,5019,5020,5154,5136,5157,4580,4582,4583,4947,4635,4634,5131,5132] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [183,184,185,1122,681,1121,706,680,568,1197,569,496,1212,326,464,1091,1105,1198,1199,1202,1204,1206,1100,1210,127,128,129,134,131,132,728,733,760,725,310,685,703] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [7344,7779,7780,7781,6790,6969,7228,7227,7155,7362,7365,6842,6843,6844,7340,7339,6786,6787,6788,7856,7750,7759,7764,7861,7863,7857,7858,7865,7871,7123,6985] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [2369,2374,2376,2604,2372,2601,2365,2354,2355,2358,2379,2381,2533,2550,2549,2380,3584,3588,3591,2633,2634,2671,2597,2599,2600,2551,2627,3449,3450,3428,3568,2632,3569,2629,2534,3411,3412,3413,3267,3434,3435,3436,3593,3597,3277,2393,3303,3313] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [453,1246,423,1330,1247,1243,5404,5405,5005,5402,5403,6601,6599,6600,6550,6576,6567,6568,6570,5423,5424,5425,5426,5428,5431,5002,5004,5400,5401,5398,414,1260,1264,1320,1321,1322,1323,1325,1263,1316,1329,1302,4994,5433,1324,1334] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [6820,6823,6825,6827,7863,7864,6985,7885,7122,7877,7085,7080,7878,7879,7078,7084,7051,7052,7055,7002,7048,7050,7886,6805,6806,6809,7001,7000,6830,6832,6831,6844,6984] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [4612,4844,4615,4793,4597,4598,4622,4623,4624,4870,4872,4876,4840,4842,4843,5654,5655,5656,4776,4777,4914,4636,5669,5670,5671,4617,5520,5677,5678,4882] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [411,374,376,404,412,413,377,6552,6540,6547,5413,5421,5451,443,6534,6536,6543,5981,6531,5947,5948,5949,5945,5957,5960,5450,5448,5449] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [3893,3905,2955,2956,2995,3942,3930,3926,3929,3937,3943,3637,3302,3304,3636,3850,3891,3892,3909] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [444,471,481,506,611,646,480,6557,6584,6585,504,505,589,612,627,22,629,6527] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [747,748,750,1686,1687,1700,1662,1683,1651,1650,1607,1694,1393,1094,1092,1093,1699,1394,1633] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [5544,5545,5199,5543,6138,6151,6150,5844,5845,6099,6101,6134,6137,5198,5238,6102,6084,6058,6145] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [8307,8052,8264,8266,8053,7755,8309,8321,8345,8346,8359,8358,7406,7407,8310,7753,7446] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [146,147,161,164,172,166,1218,1219,1220,1204,1205,171,173,174,175,185,325,326,342,463,1226,1227] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [7467,7468,7429,105,7382,7456,7378,7381,114,115] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [8201,8383,8384,8533,8671,8528,8673,8033,8198,8672] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [6023,6331,6176,6175,5990,5993] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [4107,4257,4253,4254,4255,4256,4117,3785,3968,4112] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1725,1542,1572] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
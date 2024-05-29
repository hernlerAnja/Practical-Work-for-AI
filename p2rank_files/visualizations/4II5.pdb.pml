
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
        
        load "data/4II5.pdb", protein
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
 
        load "data/4II5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1159,1182,398,257,258,259,1024,1157,1158,1160,1064,1080,1081,1052,692,688,680,681,365,366,120,276,637,639,640,635,644,242,661,664,1057,94,101,89,92,95,116,118,102,695,721,141,87,140,656,658,83,84,86,1173,1174,1153,1152,428,638,502,1320,1040,1041,1183] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4591,4593,4576,4579,4709,4710,4711,5605,4851,5604,5516,5606,5609,5610,5611,5612,5511,4547,4546,4553,4554,4568,4535,5504,5140,5147,5173,5533,5133,5532,5132,5509,4541,4544,5634,5625,4850,4569,4570,4572,4818,4817,4537,4592,4694,4539,5108,5110,5116,5113,5124,5087,5088,5089,5091,5092,5086,4955] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3687,3685,3567,3569,3502,3538,3536,1232,1233,1247,2835,1248,2832,2845,3503,1246,1245,1216,1217,1230,4357,2844,3146,2849,2851,2850,3662,3652,3655,3656,3629] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2805,3219,3184,3167,6202,6203,2800,2802,2798,6127,6161,2807,3218,2793,2817,6130,6133,6105,6135,6136,6172,6173] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [7324,7349,7351,8194,7352,7355,7941,8285,8286,7947,8263,8186,8308,8235,8234,8184,8190,7145,7930,7935,7358,8250,7014,7015,7006,8244,8246,7386,8233,7001] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2191,2193,1835,2183,2192,1421,1868,1869,1826,1434,2184,1840,1841,1842] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [8137,8139,8809,7296,8019,8021,7289,7293,7954,5698,5699,7287,7955,5684,5685,7988,7990,8114,8104,8107] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5698,5699,5700,7302,7598,7955,5682,7989,7990,7597,7303,7305,7925,7964,7962,7957,7961,7963,5656,7588,5660,5428,5429,5659,5668,5669] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [2849,2851,2853,3510,3511,3512,1208,2850,1202,1203,1204,1207,1216,1217,1230,1247,1248,3503,1246,3146,1268] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [5873,6320,6322,6287,5886,6644,6645,6278,6629,6635,6636,6321,6311,6312,6315,6294,6292] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2548,2549,2554,2563,3833,3834,2520,2875,3495,3483,3489,3478,2899,2900,2545,2903,2906,2562,2872,2873,3486,3488,3738,3736,3742,3732,2897,2934,3798,3856,3781,3782,3791,3811,3792,3794,2555,3734] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1459,1460,1466,2414,2416,1219,1234,1239,1240,2397,2395,2396,1228,1231,2183,2192,2182] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [346,561,3380,3382,337,292,572,291,314,3342,3343,3344,3346] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5476,5516,5611,5612,5493,5509,4570,4572,5634] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [5633,5726,5731,5747,7611,5727,5729,7602,5634,5631,5627,5629,5630,5639,4816,4813,4811,4812,4838,4840] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4744,5024,5022,4746,5013,7834,7795,7794,7832,4789,4790,4792,4798,7827,4743,7798,7796] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
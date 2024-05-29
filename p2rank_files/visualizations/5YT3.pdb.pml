
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
        
        load "data/5YT3.pdb", protein
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
 
        load "data/5YT3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2553,2554,2556,2557,2560,2562,2563,2564,2568,2569,2551,2565,2566,3450,3462,3463,3471,3432,3433,3434,2571,2589,3563,2588,2686,3486,2548,2549,3461,2543,2545,2546,3487,3086,3067,3583,3584,3591,3586,3587,3594,3412,3575,3820,3401,2720,2721,2722,3598,3599,3601,3595,3821,3797,3802,3635,3808,3810,2704,2705,2706,3567,3062,3063,3135,3137,3112,3136,3104,3103,2542,3127] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [7200,7201,7202,7538,7899,8042,7946,8037,8038,7603,7936,7937,7586,7587,7611,7612,7083,7084,7085,7037,7038,7044,7045,7039,7537,7962,7558,7562,7961,7561,7579,7542,7041,7182,7042,8060,8061,8058,8059,7925,7924,7938,8074,7059,7052,7053,7056,7060,7071,7884,7907,7909,8295,8296,7908] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [447,329,330,446,1305,807,427,1220,1221,283,856,811,848,879,880,881,830,827,1297,855,1195,1204,284,286,287,1197,1196,294,297,316,289,290] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [4939,5711,5736,5737,4940,5375,5380,4894,4897,5405,4902,4895,5038,5351,5403,5354,5372,5404,4941,5330,5331,5052,5051,5807,5815,4900,4901,4905,4908,4909,4906,5712] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [5808,5222,5809,5810,5816,5824,5330,5814,5328,5316,5819,5317,5150,5149,5220,5232,5234] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [4905,4908,4909,4910,4912,4906,4916,4917,4919,5698,5699,5700,5713,5712,5682,5683,8141,8142,8136,4918,8145,4901,8123,8129,4915,8131,4941,5052,5051,5721,5720,5815,5811,5684,5711,4902] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [2930,2942,2943,3071,2353,2912,2343,2344,2345,2372,2346,2347,2351,2373,2374,2375,2901,2890,2891,2377,3517,3532,3070,3072,3549] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [5043,4867,5059,4821,5269,5270,4820,4822,5308,5309,4846,4816] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [1257,1016,2155,995,1259,1262,667,669,1046,42,62,63,64,65,1272,991,1274,1017,1267,994,996] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [1250,1251,142,110,113,114,115,711,1265,1266,79,80,78,87,88,653,649,92,93,411,813,816,815,1283,820] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [4732,4733,4734,4736,4706,4704,4705,4713,4714,4716,4717,5191,5187,5212,5224,5793,5336,5344,5339,5752,4708,5776,4710,5763,5225,4735,4737,4765,4744,4767,5180,5173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1184,1197,3648,3654,1167,3656,1183,304,301,298,3660,3661,447,446,1304,1303,1305,1204,1302,1166,1168,1320] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [3516,3517,3502,3069,3070,3072,3549,3073,2672,2670,3076,2402,2369,2373,2374,2398,2399,2344,2345,2372,2966,2967,3071,2666] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [1184,1197,3648,1196,871,1182,1183,3728,3711,3656,295,298,304,301,3666,3667,3670,3671,3672,3673,3660,3661,306,307,1204] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [6869,6877,6879,7544,6902,7445,7551,6872,6905,7166,6875,7545,7547,7977,8006,6845,6846,6848,7548,7564] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [8076,7887,8075,8060,8061,8059,8074,8073,7059,7060,7884,7907,7909,8295,8296,7908] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [8126,7286,7285,8095,8092,8094,7229,7232,7255,7474,7228,7510,7226,7476,8127,7250] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [3396,3829,3834,3835,3841,3789,1755,3403,1790,1791,3349,3347] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [7777,7401,7403,6825,7747,8015,6798,6823,6824,9004,7722,6822,6815,7389,8008,8011,8004,7998] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [8277,8283,8285,7876,7884,8295,8296,8272,8110,8078,8102,8076,7887,8061] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [1361,1365,3431,3434,3438,3886,3819,1395,1398,3817,3850,3849] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [8493,8494,8522,8670,8491,8690,8430,8549,8685,8688,8689] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        
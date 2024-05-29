
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
        
        load "data/5LQF.pdb", protein
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
 
        load "data/5LQF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2517,2518,2519,8722,8745,9423,8743,8744,9386,8687,2515,2516,9398,9412,9413,9424,9370,9399,9372,9374,2561,2562,8609,8610,8611,8612,2566,2567,8712,8713,8714,8715,8716,8644,8645,8643,8711,8635,8605,8608,2541,2576,2577,8688,8683,8670,2528,2527,7869,7880,7886,7893,7837,7868,7870,7897,7898,7900,2507,3748,3749,2512,7874,7867,7871,7872,7841,9414,7832,7839,7842,7843,7845,9375,2503,7892,7909,7910,2563,2565,8573,2525,2532] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [1201,277,1202,1205,1206,1207,1208,1221,120,159,145,107,108,110,112,113,119,657,659,660,661,526,655,656,665,157,158,260,105,449,1091,1107,1126,1200,1095,1097,1099,682,688,1125,677,685,102,104,128,1230,1060,123,1229,418,419,275,276,292,293,294,142,385,134,1298,137,708,711,698,704,693,696] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [5843,6223,5227,5228,5233,5234,5846,5229,5231,5232,5828,5831,5817,5814,5820,5240,6327,6331,6233,6326,6230,6252,6251,5661,5800,5823,5833,5839,5832,5284,5285,5286,5239,5246,5247,5387,5546,5796,5794,6328,6335,5402,5404,5795,5790,5791,5793,6332,6334] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3751,3752,3753,3754,3761,3763,3765,7869,8221,2526,7870,7872,3793,3794,3725,4100,3726,2536,2537,4062,4065,4066,8235,8234,8238,8240,8231,4101,4090] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [7961,7964,7965,7622,7989,8853,7929,7930,7932,7960,7958,8801,8855,7609,8552,8566,8556,8558,8537,7605,7606,8546,7934,8796,8870,8912,8913,8914,8565,8890,8891,8845,8851,8794,8793,8799] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3684,3733,3800,3801,3802,3683,3732,3739,3758,3799,3741,2820,2822,3453,3778,3779,3454,3687,3682,3689,2818,2817,2848,2849,2852,2853,2846,2877,2510,2494,2497,2493,3440,3434,3446] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2785,3631,3633,4297,4311,4274,2786,3461,3462,2788,3669,4262,4312,2731,2733,4301,4302,2781,2725,2768,2755,2727,2729] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [4194,4195,4196,4191,4153,4152,4185,4212,2608,2609,2612,2613,2614,2639,4214,4210,3698,3697,3703,4130,3708,3729,4122,6995,4121] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2886,3407,3408,3409,9404,9405,9438,3412,3418,3419,2495,2484,2485,452,453,467,2487,2488,2489,3380,2884,454,457,3382] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [23,25,571,22,267,268,68,46,47,48,71,628,629,631] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3407,3408,3409,9404,9405,9436,9437,9438,452,453,482,483,484,2487,2488,2489,454,455,457,458,3391,451,3382] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [8581,8583,6147,6149,7497,7496,7518,7514,7516,8608,8615,8610,8612] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [2402,2406,2433,3469,2359,2384,3464,1012,1014,2385,3471] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [128,1230,1314,1060,1077,1101,123,1228,1229,1204,1207,1208,1224,120,137] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [326,351,352,3114,379,3077,3136,3137,354,368,371,374,3078,320,321,386,380] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [7596,7607,7595,7597,7610,8531,8530,7573,7600,5591,8520,8521,5584,5585,8519,5558] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5495,5498,5501,5505,5506,5507,5447,5511,5513,6412,5449,8226,5478,5479,8190,5481,8189,8248,8249] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [9066,9067,8655,8656,8658,8661,8660,9045,9046,8672,8942,8944,8971,9008,9009,8666] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [3497,3498,3499,3500,3602,3604,3631,3632,3633,3461,2797] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [5198,5706,5175,5149,5173,5174,5395,5747,5151,5153] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
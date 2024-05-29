
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
        
        load "data/2VX3.pdb", protein
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
 
        load "data/2VX3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8698,8707,8708,3100,3101,3107,3108,3098,3147,3145,3146,3693,3695,3130,3116,3115,3117,3124,3111,3119,3121,3128,3129,3270,3268,3269,3089,3095,3096,3091,3093,3090,3253,4120,8712,3747,3775,8685,8710,8711,4148,4236,4237,3718,3725,4147,4149,3717,3720,3713,3719,3700,4122,4091,4109,4090,4092,4242,4243,4244,4245,4132,4238,4239,4235,3426,3427,3696,3548,4387,4382,4266,3126] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [732,873,876,878,879,883,903,1338,1428,1429,1431,1430,1309,1337,1310,930,1298,1321,1435,1436,1437,1438,275,278,284,288,441,442,443,256,262,426,314,258,260,312,313,896,263,264,265,267,274,297,298,908,907,897,901,900] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [6472,6890,5849,5905,5847,6017,6447,6460,6464,6437,6438,5851,5904,6494,6522,6861,6862,5859,5848,5853,5854,5855,6467,6889,6296,6973,6974,6975,6873,6033,6034,6980,6981,6982,6983,6440,6442,6443,5858,5865,5866,6031,6976] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [8577,9216,8579,8581,8634,8747,9196,8583,8584,8616,8585,8633,8635,8761,9619,8589,8599,9250,9620,8595,8596,9278,9247,9243,9647,9646,9648,9223,9739,9220,9228,9631,9740,9745,9746,9747,9748,9738,9741,9194,9197,9198,9199,9608,8609,8763,8764,8603,8605,8612] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5118,5119,2715,2717,2749,2750,2751,2752,2621,2590,2619,2620,2622,2623,5376,2714,2655,2695,2778,2754,2787,2789,4792,4803,5379,4797,4798,4799,5375,5090,5091,5092,4805,2795,5132,5133,5134,5347,2773,2774,2780,2781,2790,2794,5135,5115,5116,5117,5378,5120,5124,5128] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [5482,5484,5516,5517,5518,2354,5519,5520,5521,5355,5385,5387,5388,5522,5523,1995,1996,2581,2367,2347,2350,2351,2352,2353,2355,2611,2613,2614,2000,1994,1989,2325,2327,5478,5481,5485,5462,5556,5548,5554,5557,5540,5541,5562,2582,2368,2369,2370] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3766,8728,8730,4123,4124,4125,3765,4663,4664,4622,3764,3834,4407,4408,4409,4388,4386,4387,4107,4108,4109,4405,4399,4403,4404,4406,4417,4419,4420,8717,8707,8714,8722] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2616,2698,2652,2653,2655,2695,2696,2697,2649,2654,5465,2620,2623,5376,5383,5385,5387,5388,2610,2643,2675,2672,2660,2025,2663,5430,5416,5421,5419,5420,5422,5462,5464,5463,5375,5382,5439,5442,4843,4828] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1436,1437,1438,275,282,283,291,293,278,1298,1459,1279,1280,1281,1566,1569,1580] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [8651,3766,8728,8730,8731,4663,4664,4622,3764,3831,3833,3835,3832,3834,3836,4652,4408,4409] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6509,6511,6513,7146,7147,6865,6866,7360,7157,7158,7144,7405,7406,7124,7142] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [9269,9623,9624,9907,9622,10121,10166,10167,9265,9267,9905,9606,9918,9919] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1860,945,947,1314,1601,1305,1313,1815,1612,1613,1599] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [5697,5698,6371,6367,6399,6041,6398] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
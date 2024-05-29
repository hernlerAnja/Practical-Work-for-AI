
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
        
        load "data/6FH5.pdb", protein
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
 
        load "data/6FH5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3323,3639,3641,4803,4804,3685,4827,3335,3337,3336,4824,4828,4829,4965,4825,4826,4855,4967,4968,4949,4854,3607,4357,452,453,985,989,988,1003,1001,1027,1029,1031,1024,1063,1055,4767,3300,3304,3324,3327,3606,3636,3637,3638,3640,3642,3686,4342,4998,4982,4988,4769,4852,4856,4851,4889,4919,4925,525,4857,4930,1015,1051,1052,1053,1054,523,533,482,990,4891,4892,4893,1014,1016,1023,1018,467,468] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4975,5658,4978,4979,5656,5660,5120,5659,5665,5667,5105,5578,5579,5078,5084,5081,5076,4761,4763,5661,4677,4468,4513,4676,4466,4469,4535,4719,4697,5666,4695,4696,5640,4976,4990,5059,5058,5060,5064,4974,5551,5554,5555,5119,4479,4473,5112,4480] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4384,432,879,880,881,882,4321,4322,4386,3953,4385,414,415,1152,1153,1181,3928,3954,4320,3594,3598,3920,1189,1190,4363,3628,433,901] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6151,6155,3143,3144,3145,3142,3156,2823,1495,3137,1493,6129,6071,6098,3131,3155,6183,2563,2552,2557,2567,2573,2576,2553,2787,2822,2585,3106,6153] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2187,2195,2192,2196,2199,186,188,189,196,213,3763,3467,3468,3795,3799,168,180,2177,2183,3778,3808,2193,2194,1942,3434,1936,1940] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4012,4563,4038,4251,4252,4397,4401,4395,4257,4261,4406,4407,4045,4254,4284,4013] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [3071,6047,3065,3069,3063,3311,481,4900,3052,3312,480,3054,3056,3278,4868,6023,6025,6048,4861,4862,4860,4864,3348] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5490,5498,6091,6092,6172,5505,5684,5686,5689,5691,4787,6114,6149,6122,6121] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [5067,5068,5069,4356,4357,872,1031,5066,4347,4656,4658,4661,5073,4655,4355,4358,4375,4377,4342] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1773,1779,2904,1783,2380,2934,1259,2378,2379,2384,2389,2390,1767,2877,2878,1256,1750,2874,3169,3179,1998,2936,2937] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1050,4931,565,566,4927,4928,519,4945,5371,5364,5404,5405,5406,5407,5408,5409,5363,5377,5378,5368,5370] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6470,5155,6498,5168,5176,5177,5175,6451,5156,6469,6471,5130,5133,5132,5538,5539,6475,5544,5547] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [916,917,919,920,396,398,813,423,1146,390] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6134,6141,4727,4744,6144,6145,2151,2163,2164,3747,3748,3737,3744,3766,3768] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [107,109,3703,4030,3730,3733,3732,4054,4055] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
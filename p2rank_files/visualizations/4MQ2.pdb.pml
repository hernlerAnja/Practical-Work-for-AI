
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
        
        load "data/4MQ2.pdb", protein
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
 
        load "data/4MQ2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2747,2723,2725,5088,5089,5090,2719,2721,2720,5091,5319,5348,5350,2596,2597,2744,2743,2742,2750,2718,2759,2684,2686,2756,2758,2524,2562,2565,2595,2724,2722,2598,2687,2680,5100,5104,5105,5106,5107,5318,2760,2763,2764,2530,5290,4760,4765,5351,4771,5057,5062,5064,5092,5096,4767,4773] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5518,5519,5520,5512,5446,5448,5481,5482,5483,5484,5509,5480,5504,5506,5324,5325,5326,5327,5358,5359,5360,2556,5505,2344,2557,2325,2326,2328,2329,2524,2562,2564,2588,2589,5485,5486,5487,5426,1984,1973,1978,1979,1980,2302,2295,2300,2309,2342,2343,2330,2338,5521,5286,2528,5522,5526,5525,2525,5449,5456,5386] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4062,4078,4079,4215,4102,4212,4214,3372,4208,4209,3247,3249,3371,3518,3666,3665,4092,8656,8653,8654,4090,4118,4207,3662,3119,4205,4206,3519,3661,3663,3232,4119,3670,3081,3084,3089,3090,3091,3094,3096,3098,3100,3265,3080,3072,3118,3120,8655,3717,3745,8657,3695,3682,3684,3686,3687,3688,3066,3067,3068,3070,4236,4232,4235,4228,4229,3312,3264,3309,3337,3338,3335,3342,3343,3690,3710,3699,3689,3694,4117,3698] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1416,1417,1418,308,256,258,306,307,254,1297,1309,1426,260,263,867,869,870,872,873,420,287,288,435,436,437,255,1326,902,901,1325,924,891,897,726,877,889,894,1423,1419,725] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [9560,8528,9559,8530,8532,8585,9161,8692,8691,8540,8534,8537,8566,8586,8701,9196,9587,9174,9588,9169,9166,9149,9163,9571,9680,9685,9688,9678,9681,9679,9142,9144,9145,9139,8565,8707,8705] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6463,5817,5819,5871,5872,5815,5821,5985,6429,6265,6406,6436,6855,6941,6942,6943,6430,6433,6441,6435,6434,6854,6826,6407,6408,6409,6000,6002,6125,6410,6412,6838,6948,6951,6944,5852,5853,5873,5998] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5427,5429,5426,2598,2665,2667,2622,2623,2624,2625,2666,1980,2585,2618,2596,5358,5360,2629,2008,2009,2010,2004,1992,2641,2644,2632,5394,5380,5387,5384,5385,5386,5428,4811,5403,5406,4795,4796,4797] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [4095,8673,8652,8659,4371,4373,4350,4077,4079,4351,3733,3735,3736,8675,8616,4586,4631,4632,4370,4372,3734,4382,4384] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [4336,4234,4239,4240,4335,3341,4247,4248,4296,4297,4299,4301,3340,4232,4233,4235,4054,4471] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1439,1440,1441,1443,1446,1447,525,526,1518,1519,1517,1425,1268,1286,1564,1267,1269,1552,1553,282,285,279,272,276,277,500,502,1426,1550] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [8550,8554,8555,8552,8556,8557,8560,8563,8772,8774,9531,9548,9529,9687,9688,8547,9708,9709,8798,9702,9703] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [6950,6951,6798,6815,6091,6964,6965,6966,6972,6095,6096,6090,6017,6062,5842,5846,6060,6063,6065,5844,5847] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3801,3802,4616,4622,3734,3804,3806,3803,3805,4586,4631,4632,8602,8678,3736,8675,8509,8673] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [9562,9563,9564,9841,10055,10100,10101,9211,9213,9215,9820,9852,9853,9837,9838,9839,9840,9842,9546] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [6829,6831,6480,6482,7318,7115,7116,6830,6478,7102,7104,7363,7082,7083] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [531,559,1439,1440,1441,1447,530,525,526,1425,282,285,279,277,534,500,502,497,1426] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5663,5664,5731,6336,6368,6370,6009,6367] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
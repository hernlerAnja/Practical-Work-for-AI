
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
        
        load "data/7N9G.pdb", protein
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
 
        load "data/7N9G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [168,171,169,170,172,173,174,1163,1167,511,1083,1154,144,143,1084,655,663,680,656,146,139,141,194,304,307,142,630,631,649,651,652,320,195,316,318,312,612,437,615,137,138,123,125,690,670,683,714,711,2135] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2312,2430,2187,2429,2431,3174,3175,3099,2529,2530,3098,3170,3173,2671,3178,3070,3079,3084,2310,2185,2186,2308,2631,2634,2649,2650,2654,2296,2149,2150,2151,2153,2154,2699,2702,2706,2709,2733,2674,2689,2698,2668,2157,2160,2155,2156,2159,120,3189,2456,3191] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4664,4639,4640,4641,4636,3293,3295,3288,3291,3292,3301,3308,3312,4629,3311,2356,5865,5870,5872,2358,2390,5867,2387,2391,3204,3038,3273,3287,2386,2419,3196,3200,3297,3294,3296,3274,5859,5860,5886,3219,3217,2360,3315,2394] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4631,4632,4633,4634,5596,5622,4653,4655,5597,3302,5583,5584,4657,4658,4689,5300,5621,5595,5334,5336,5337,5354,3297,3294,3296,5859,5860,5861,5862,4661,4664,4636,3293,3295,4663] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [5848,4746,5813,5814,4725,2385,4673,4696,5847,2613,2615,2375,2412,2577,2341,2349,2342,2343,2344,2345,4382,4391,4702,4697,4698] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4448,4339,4984,4208,4987,4338,4497,4507,4895,4896,4897,4504,4203,4464,4466,4202,4253,4205,4209,4211,4212,4254,4447,4257,4256,4263,4971,4882,4868,4405,4978,4452,4469,4472,4473,4474] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2855,2857,3582,2833,2835,2836,3832,3844,3845,2853,2854,2859,2860,3869,2863,2865,2866,3870,3585,3584,4110,4107,4108] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [814,816,836,838,817,841,1496,835,1442,1473,872,1975,1476,1478,1479,1725,1732,1759,1726,1738,1739,1760] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [5227,5226,5228,4817,5200,5125,5126,5054,5109,5121,5263,5127,5153,5152,5182,5077,5070,5079,5081,5072,4821,4831,5236,5071,5088,4832,4833,4834] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [756,761,674,676,721,723,725,759,796,797,718,670,716,753,750,748,749,755] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5392,5537,5541,5542,5544,5689,5691,5694,5692] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
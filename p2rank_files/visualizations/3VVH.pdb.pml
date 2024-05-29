
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
        
        load "data/3VVH.pdb", protein
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
 
        load "data/3VVH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3333,3313,2555,3436,3432,3296,3297,3528,2571,3486,3487,3514,3515,3525,3526,3512,3324,3325,3326,2975,2413,3549,3552,2415,2402,2405,2406,2409,2422,2569,2419,2421,2417,2418,2998,2999,3000,3491,3349,3350,3425,3427,2554,2925,2926,3434,3435,2553,2911,2912,2707,3485,2436,2437,2438,2535,2392,2394,2395,2949,2967,3429,3430,3431,3433,3437,3446,3440,3449,3422,2924,2813,2801,3447,2730,2731] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5572,5703,5708,5709,5710,5711,5712,5705,5713,4832,4833,5714,5204,4714,4715,4716,4831,5791,5790,4701,4695,4697,4699,4700,4702,5793,4847,5575,5804,5806,5803,5830,4813,5603,4679,4680,4681,4683,4684,4687,4691,4693,4675,4676,4677,4678,5590,5591,5604,5611,5245,4669,5627,5628,4668,4670,4672,4673,5602,5224,5227,5228,5220,5727,5718,5737,5190,5740,5758,5760,5761,5764,5765,4849,5763,5769,5253,5276,5277,5278] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [663,664,164,163,286,165,284,285,668,684,680,121,266,705,148,149,1259,119,122,129,130,132,133,136,140,143,144,737,713,736,738,117,118,123,124,125,1180,712,1062,1071,1087,1088,1171,1064,1063,687] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [473,6365,6382,6383,6362,476,6361,544,547,492,501,550,531,672,5364,6,1,5353,5354,6346,568,669,564,566,670,503,506,6624,6627,6628,6629,6631,6617,671,673,1156,1139,6652,509,510,513,6626,6658,6661,5355,6650,6653,6654] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2153,2155,2160,2152,2154,2163,2828,2826,2278,2823,2739,2805,2806,2809,2812,2821,2931,2932,2934,2935,3412,3394,3393,2762,2754,2763,2758,2761,2735,2767,2768,2772,2776,2793,3411,3395,2156,2830,2283,2279,2131,2132,2133,813,1867,1884,1885,1863,1864,2128,2130,811,814,824,1848] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [5009,5718,5008,5735,4985,5093,5189,5190,5763,5091,5707,5708,5715,5203,5705,5713,4833,5079,5724,5725,5086,5201] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1184,1174,1179,534,539,1166,1190,1191,541,1173,468,469,551,546,553,661,663,664,286,284,649,650,493] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3598,3534,3600,3630,3585,3584,3594,3601,3282,3291,3682,3286,3680,3678,3287,3298,3301,3750,3296,3528,3527] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5574,5560,5561,5956,5958,5960,5805,5908,5564,5812,5878,5569,5861,5862,5879,5987,6025,5872,5876,5863,5576] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1176,1177,1178,1180,1035,1258,1256,1184,1174,1179,1229,1227,1231,1235,1226,302,650,1259,286,284] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [293,294,627,191,79,80,83,273,171,173,175,63,62,38,275,41] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2361,2464,2364,2542,2543,2562,2544,2563,2318,2889,2356] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
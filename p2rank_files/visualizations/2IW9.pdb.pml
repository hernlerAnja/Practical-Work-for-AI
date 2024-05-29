
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
        
        load "data/2IW9.pdb", protein
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
 
        load "data/2IW9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3404,3405,3402,3403,5015,5008,5009,5011,5024,5020,5025,5027,3371,3373,4470,4471,4475,559,3412,4999,4473,4510,5026,4509,4511,2987,4661,3380,4500,4497,2986,5000,5112,2977,4697,3427,544,543,545,539,554,5033] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [625,627,487,634,268,152,626,628,630,253,151,150,97,94,101,102,105,112,1068,672,1069,671,678,653,654,661,669,670,682,685,657,651,648,98,662,1140,1141,1052,1145,486,1040,270,379,1146,1148,113] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5635,5636,5639,5534,5541,5546,5640,5642,4570,4577,5562,5563,5634,5163,5164,5165,5172,5179,4717,5118,5128,4615,4614,4616,4565,4567,4569,4576,4562,4561,4558,4564,5140,5148,4732,4733,4734,5119,5120,5122,5124] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [520,5,6,41,197,42,618,31,233,517,518,519,508,509,511,7662,7630,7213,7214,7651,7653] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1127,638,656,1085,1110,643,1082,2341,1097,494,635,1098,668,234,6850,6846,6849,6848,6868,6867,7220,7219,462] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3559,3643,3645,3646,3647,1220,3622,3492,3493,3527,2838,1233,1235,1218,3528,3648,3672,3673,2844,2845,2847,4358,4360,3649,4346,4372,3653,2848,2840] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5941,6445,5948,6644,6646,5949,5942,6476,6475,5950,5954,6435,6440,6442,6459,6436,6479,6637,6656,6657,6658,5710,5696,5708,5721,5697,5716,6683,5713] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5137,5129,5134,5162,2639,2617,2619,2638,2993,4950,5132,5579,5604,5620,5621,5133,5591,5594,5576,6596,4698,4702,4985,4987,2620,2621,2622,2623] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [7924,7773,7776,7775,7807,7809,7896,7893,5729,7065,7742,7743,7778,7074,7923,8596] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2566,2903,2909,2906,3479,3485,3823,3824,3845,3476,2879,3478,2875,3801,3724,3732,2900,3721,3722,3784,3772,3771,2565,2937,3787,2902,2523,3468,3473] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [8069,8091,7102,7106,7972,7978,7970,8018,8017,8019,7967,7968,7718,7723,7726,7728,6785,8047,8070,7729,7735,7129,7130,8033,7164,7127,6795,6794,7136,7133] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [5728,5729,5731,7065,5727,7743,7778,7082,7749,7750,7745,7777,5712,7081,7752,7079,7080,7382,7383,5684,5685,5686,5689,5690,5749,5698,5699,5723,5751] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1409,1856,1858,1817,1814,1823,1828,1829,1830,2171,1432,1443,1421,1422,2177,2178,2179,2180,1448,1423] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4834,4835,4841,5756,5761,5657,5659,5660,5661,5663,5664,4863,5759,7396,4861] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [495,496,6850,6851,6852,6853,7198,6849,494,440,442,6802,6803,6804] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [3532,3577,3564,3576,3578,2393,3565,3567,2425,2399,2427,2396,2426,2428,2429,4035,4032] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3437,3438,3397,591,3393,3367,3370,3372] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
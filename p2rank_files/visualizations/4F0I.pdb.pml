
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
        
        load "data/4F0I.pdb", protein
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
 
        load "data/4F0I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3564,2853,2858,3558,2854,2784,2807,2859,2753,2754,2990,2991,3570,2752,2783,2785,2988,3409,3410,2776,3573,3443,3423,3425,3426,3427,3446,3574,3561,3567,3612,3421,3586,3587,3610,3609,3604] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [759,760,138,139,140,144,141,142,143,699,696,690,692,707,1310,1311,1312,145,195,196,1262,1264,1266,1268,321,194,678,1278,1279,1153,1251,1254,1258,1181,1182,1286,1323,733,735,725,726,729] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3595,2415,2464,3575,3581,3596,2409,3583,2410,2411,2412,2413,3042,3043,3009,3016,3024,3592,3052,3076,3598,3599,3603,3627,3628,3629,3630,3640,3046,3050,3498,3499,3470,3566,3568,2465,2609,3585,2995,3018,3007,3013] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [437,459,460,536,541,465,490,466,467,673,464,537,1054,1104,1092,1093,1257,1247,1250,542,1253,1256,1108,1109,1110,1241,1244,1126] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2440,2441,2755,2714,2712,2716,2717,2684,2710,2711,2438,2439,2443,2445,2637,2651,2687,2622,2623,2624,2625,3578,2447,2448,2635,2442,3589,3587,2446] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1385,3738,3693,3692,1519,3667,3688,3695,3607,3739,1531,3647,3648,1387,1511,1526,1527,1541] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1619,1620,1622,2054,2055,2056,1898,1902,1906,1911,1449,1912,1652,1863,1865,1766,1889] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3078,3183,3186,3177,3181,3182,3029,3028,3033,3036,3038,3040,3087,3035,3116,3125,3180,3184,3082,3115] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2477,365,364,2948,2949,2372,2475,2630] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3936,3939,4083,4182,4180,4206,3766,3969,4228,4229] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [765,718,721,723,798,799,808,867,761,866,869,864] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3705,3828,3683,3685,3761,3831,3746,3861,3704,4160,4159,3826] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
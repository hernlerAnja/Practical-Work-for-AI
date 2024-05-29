
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
        
        load "data/3DTW.pdb", protein
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
 
        load "data/3DTW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2677,2546,2547,2691,2685,2689,3013,3638,2835,3015,3641,2802,3078,3079,3082,3086,3559,3560,3655,3656,3636,3089,3052,2676,3030,3031,2916,3055,2915,2836,2509,2511,2512,2507,2508,3047,3049,3051] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [237,238,1398,1394,1386,1392,356,736,616,731,732,537,195,194,196,198,199,750,748,756,1400,1401,1304,1305,753,757,1382,1381,1383,364,368,354,355,714,370,503,536,716,780,787,790,783] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1387,1390,528,537,563,535,1214,1215,616,1231,1233,1219,1225,1227,1177,1378,1372,609,529,501] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3630,3488,3643,3645,3432,3482,3486,3469,3480,3474,2798,2825,2827,3470,2828,3638,2800,2835,3642,2802,3627,3633,3634,3635,2834,2836,2862,2908,2915,3433] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3257,3258,3119,3121,3155,3156,3256,3253,3254,3260,3255,3278,3310,3312,3599,3600,3262,3263,3075,3593,3074,3076,3077] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3251,855,1003,776,777,778,857,820,822,1338,1344,1345,1317,1329,1001,1002,1023] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2893,167,2654,2656,2655,3580,3039,3041,3044,3036,3573,3622,2923,3623,3606] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3723,3944,3530,3533,3724,3686,3711,3687,3109,3088,3102,3103,3999,3981,3985,3988,3138,3139,3992,3991] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1554,1564,2117,2129,2107,2110,2111,2112,2113,2124,1555,1183] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1877,2036,2039,1732] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        

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
        
        load "data/3BBT.pdb", protein
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
 
        load "data/3BBT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2721,3114,933,934,3113,4178,4179,3081,3082,3112,3083,2719,2701,2703,1147,3143,541,956,931,932,949,951,955,950,954,909,912,872,4177,4203,4201,4202,4204,4205,4209,988,990,991,530,3054,3089,3092,3056,3055,3021,3022,3024,524,963,3325,3327,959,961,3023,989,2013,2045,2048,841,842,843,844,876,2037,2038,2041,902,903,2011,2014,2015,1983,874,875,2039,873,1982,1985,1986,1988,1989,1957,1984,4210,4212,3109,3131,3134,3135,3136,3141,3168,4148,4149,4150,4121,3169,3170,3171,3172] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2869,2385,2386,2387,2507,2846,3289,2847,2830,2829,2516,2520,2828,2338,2339,2334,2336,2340,3290,3260,2891,2894,2898,2899,2335,3366,3367,3368,3369,3375,3377,3374,3385,3380,2755,2665,2667,2833,2733,3387,2663,2748,2752,2754,2865,2868,3274,3376,2365,2367,3238,3398,2522,2524,2350,2351,2354,2358,2341,3263] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [340,1195,671,665,666,667,1187,188,189,190,137,138,139,143,144,145,146,689,685,688,323,142,141,336,1218,652,1207,487,572,574,650,553,569,1188,711,714,718,1109,1110,1080,719,1094,1196,1189,1190,1197,1200,1083] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [557,561,563,565,577,580,583,579,303,582,672,673,675,1173,674,676,29,30,31,236,304,9,518,545,3301,3311,3312,2878,2889,2854,2855,2856,3306,2860,2493,2494,3319,2888,3334] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2698,1132,1154,2725,3351,3352,3353,1131,2741,2743,2744,2745,2757,2759,2761,2763,2852,2854,2855,2856,2872,2848,1123,709,1121,698,1124,1126,2695,2693,2737,2740] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3407,3408,2634,3395,2609,2539,2562,2563,2611,2755,2665,2667,2632,2639,2833,2832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [697,698,2471,2488,309,310,2762,2228,2447,2433,2487,2855] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
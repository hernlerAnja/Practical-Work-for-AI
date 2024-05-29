
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
        
        load "data/3BBW.pdb", protein
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
 
        load "data/3BBW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [902,905,909,912,870,873,874,875,901,1146,876,931,932,933,934,953,1984,954,929,951,529,539,541,2736,955,530,3118,523,524,961,963,2014,2015,1986,1988,1989,2013,903,2039,841,1985,1957,4244,4251,4219,4245,3080,3081,3082,3047,3050,3048,988,989,4254,3108,3138,2747,3115,2728,2729,2734,2730,1147,3167,3169,3140,3137,3139,3159,3160,4190,3157,842,844,3195,3196,2048,2038,2045,3107,4191,3109,4192,4220,4221,4195,3079,3161,3162,3197,3194] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [688,323,684,142,139,141,189,190,188,146,685,1195,338,340,667,1187,665,666,671,711,714,718,1109,1110,1080,719,1081,1188,1079,1094,1196] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2920,3286,3315,3316,2345,2347,2528,2394,2395,2348,2924,2925,3393,2349,2396,2546,2544,3300,2917,2891,2894,2890,2529,2895,2871,2873,2877] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1173,557,675,672,555,560,668,513,561,563,583,3327,3360,3329,3330,3332,3337,3338] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3379,1126,2881,1124,698,709,1121,1123,1131,2789,2898,2757,2761,2766,2878,2767,2769,2771,2724,2719,2751,2763] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2510,2442,2236,2237,1126,2879,2880,2881,676,680,697,698,699,2492,309,310,2493,2786,2788,2789,2235] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2903,2904,2882,2515,2516,286,582,583,30,31,236,304,674,675,672,673] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [339,340,166,162,173,175,184,190,153,176,177,178,146,145,154,155,168,1196,157] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1187,666,1195,650,652,338,340,1205,1207,487,1200,553,568,569,572,574,1218,1189,1190,1191,1197] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3411,2693,2778,2780,3409,3393,3395,2872,3406,2858,3424,3403,2544,2761,2775,2759] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4072,4073,4074,3651,4070,4071,3682,3932,3787,3648,3789,3499] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
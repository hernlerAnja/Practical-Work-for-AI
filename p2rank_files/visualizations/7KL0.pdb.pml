
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
        
        load "data/7KL0.pdb", protein
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
 
        load "data/7KL0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2262,2265,2267,2268,3203,3215,3204,3232,2260,3231,2832,2833,2829,2256,2257,2258,131,132,133,2858,4442,111,112,2856,2884,2883,108,182,2848,2851,2846,2847,2838,2839,3325,3326,3328,3320,3327,3321,3322,2312,2313,2673,2275,2276,2299,3317,2672,2835,2416,2816,2428,2429,2430,2567,2568,3341,3335,2806,2807,2808,2809,2810,2811,2812,3337,2290,2292,2445,4469,4470,4471,4472,4473,4486,3349,3351,4327,4352,2278,2279,2282,4326,2291,2293,2505,2530,2531,3342,3343,4490,4493,2527,4489,4349,4351,4457,3205,3191,3192,4450,4466,3208] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1186,1188,4359,4360,1086,1185,1182,1187,135,159,4439,136,138,142,143,289,290,1201,411,413,441,407,410,442,305,147,150,4358,4355,4356,4357,1209,1211,4431,4433,1202,1203,404,152,376,377,401,406,373,371,374,1181,4377,405,4380,3805,4363,4364,4373,4337,4344,4464,4465,1075,1063,1076,116,122,125,128,173,158,1074,1102,1103,172,1180,288,304,547,677,678,679,680,681,682,683,115,117,119,719,703,276,700,687,548,704,706,2271,2272,2273,727,729] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [828,854,884,857,855,1134,1138,1137,829,885,1110,764,765,766,1131,1140,1142,1145,1146,1120,1111,1158,911,877,1139,1141,856,795] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3788,3787,3793,3801,4373,4375,4381,4383,4386,3805,4377,3815,4452,4431,4433,4439,142,4367,3822,4483,4484,3486,3487,4455,3819,3820,3816,4465,4463,4451] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [294,297,307,311,631,633,634,630,632,2909,2915,2883,2882,2886,166,111,165,83,655,180,182] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3279,3280,3281,3282,3285,2895,2924,3276,3278,3239,3006,2985,2986,2987,2957,2958,3014,2983,2984] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3610,4168,4170,4169,4180,3106,3108,3605,3607,3615,3616,3401,3609,4159,4165,4171,4175,4176,3611,3639,4148,3084] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1469,1472,1497,2021,1463,1474,1261,1465,1467,1262,2010,2027,2030,2031,2032,1988,1995,1473,1280,979,977,988,2042,955] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2437,2760,2762,2783,2320,2322,2438,2222,758,2784,2759,2763,2761] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2514,2461,2516,2537,2539,2540,2541,2544,2547,2730,2768,2770,2772,2731,2460,2735] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
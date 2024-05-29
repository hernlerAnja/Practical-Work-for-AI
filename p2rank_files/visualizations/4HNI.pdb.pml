
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
        
        load "data/4HNI.pdb", protein
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
 
        load "data/4HNI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [836,801,826,828,829,831,832,833,862,830,854,856,2055,1439,402,406,2715,838,802,3145,407,408,3109,3144,3174,3108,3136,3137,3143,3135,3138,3173,2706,803,3110,1050,1051,1052,812,1032,780,779,778,3337,3339,863,866,867,3338,865,855,1162,1160,1198,1199,1441,2009,1193,2709,2712,2713,2714,3358,3356,3359,3085,2063,2026,2028,2029,2030,3324,3325,3326,3336,3329,3330] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [251,158,160,109,110,566,568,571,1087,1104,1106,1105,1102,159,161,112,141,357,548,549,550,1084,1086,1091,574,249,250,252,253,254,260,264,533,534,266,268,441,531,988,989,990,579,591,592,617,959,960] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2856,2861,2854,2855,2575,2857,2590,3398,2591,3404,3410,3412,2842,2589,2850,2837,2838,3394,3391,3266,3267,3413,2879,2880,2881,3296,3297,2875,2898,2437,3268,3269,3270,2434,2873,2878,2886,2432,2435,2574,2576,2577,2484,2485,2486,2585,2438] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [751,2237,2238,2239,2240,2241,2242,769,747,739,778,4359,2226,2232,2233,2236,2155,2157,2222,2156,2126,2154,2219,2221,2227,2214,2215,2216,4427,4384,4388,4391,4358,4395,2131,771,2129,770,772,4355,4357,4399,2127,2124,3136,3137,3138] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3052,3085,3086,3088,3058,3347,4527,4528,4529,4530,4532,4533,2063,4506,3076,3046,3045,4456,4510,4504,4455,4505,4450,4451,4452,3348,2130,2131,2060,2062,2061,2128,2129,803,2091,2092,3077,3078,3079,4426,4427,4424,4425,4422,4423,2127,2103,4512,4513,2099,4420,802,829,831,830] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [397,3183,395,2695,3182,2679,400,401,394,390,3181,3172,3147,408,3174,403,429,432,433,558,416,450,409,1051,1069,1070,1029,1031,1032] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2723,2697,2698,2699,2701,2731,2739,875,876,2740,3339,866,867,3338,865,2710,2714,2716,2708,3376,3359,2866,2865,2757,3377,2702,388,874,372,363,370,371,374,2715] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1019,4326,1021,1022,1023,3467,3469,3500,4305,1017,1018,1030,1031,4322,4323,4324,4325,3161,3169,3170,3746,3748,4351,3457] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3079,3110,4427,4387,4388,772,407,408,3109,3108,3136,3137,3138,4359,3085,2714] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2443,3268,3270,2442,2446,2456,2447,2450,2454,2484,3255,3267,3277,3409,3411,3413,3407,3408,3410,3412,2463,2465] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [137,139,1106,1105,1103,118,141,1100,947,970,960,948,932] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [586,995,1036,996,625,585,2276,2278,2291] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [469,471,472,474,524,517,518,470,535,299,300,306,307,308,327] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
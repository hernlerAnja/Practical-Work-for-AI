
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
        
        load "data/4FC0.pdb", protein
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
 
        load "data/4FC0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2677,2544,2660,3199,3201,2282,2676,2678,2680,2683,2298,2199,2200,2294,3193,3187,3203,3181,3184,3188,3105,3103,3219,3218,2150,2151,2655,2656,2439,2638,2281,2290,2465,2464] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1171,1173,1049,1050,1159,1165,1166,1167,1168,128,170,172,171,516,627,628,254,411,269,266,268,652,655,656,649,650,677,681,1073,1075,1077,708,710,632,1156,1046,682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [521,637,1092,1094,2519,524,3171,523,1142,1143,1125,492,2549,2552,2665,3154,1126,3122,3129,3120,1100] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3144,3154,2526,2527,2528,2909,2911,2932,2878,2900,2899,2931,1103,1104,664,2877,637,641,1094,1095,2519,2520,638,239,232,233,235,248,238,2518,224,543,2512,2513,210,242,665] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [506,507,943,944,427,428,429,981,463,464,1147,1153,1154,1156,1160,996,997,998,999,1000,1162,994,986,992,411,435,404,408,436,437,512,513,516,628,1159] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2436,2464,2456,2463,3009,3014,2491,2492,2535,2465,2972,2971,2439,3175,3181,3184,3188,3182,3183,3190,3020,3026,3027,3028,3022,2544] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3131,3132,2669,3123,2692,2693,883,849,2267,2268,2270,2691,901,903,2260,2263,2266,484,485,2252,499,872,880,881,491,500,882,1127,490,492,2658,2661,2665] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3063,3047,3064,3275,3276,3277,3283,3278,3085,3077,3223,3195,3204,3207,3213,2182,3203,3191,3243,3248,3230,3235,3238] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [56,564,606,565,584,588,278,80,83,63,79,97,260] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2500,472,2469,25,28,8,441,2050,2047] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [221,229,2952,4061,4033,4034,4035,4031,201,89,202,203,231,4088,4089,70,74,4066,4062] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2101,2119,2611,2083,2634,2306,2104,2102,2105,2593] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [387,389,382,384,572,391,392,394,417,556,557,558] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2230,2233,1968,1940,924,2249,2250,2255,2228,2235,2259] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
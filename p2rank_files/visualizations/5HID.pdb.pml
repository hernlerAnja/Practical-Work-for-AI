
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
        
        load "data/5HID.pdb", protein
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
 
        load "data/5HID.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2561,3219,2333,2250,2251,3215,3217,2349,2345,2347,2456,3121,2698,3123,3124,2719,2249,2341,2699,2201,2730,3206,2726,2204,3232,3233,2203,3093,3212,3213,3214,3225,2560,2676,2681,2677,2701,2704,2705,2697,2706] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1020,1142,1144,1146,1133,176,177,178,128,130,633,628,632,487,603,488,608,260,624,626,1140,1141,1159,131,653,657,646,1048,1050,1051,631,625,604,383,408,589,272,276,1152,274] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1101,464,1100,3149,3150,3151,2569,459,2568,1117,496,613,2532,2537,1116,1069,1074,1077,3173,1067,495,3140,3142,3189,3174,3147,3164,3190,2686] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3194,3200,3201,3203,3207,3043,3045,3047,2482,2990,2991,2480,2472,2474,2449,3028,2473,3193,2453,2456,3210,3033,3041,3046,2509,2552] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [407,409,383,380,1134,1137,376,1127,1128,1130,399,400,955,436,401,479,1120,1121,917,918,972,974,968,970,971,973] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1078,3173,248,2917,639,641,241,245,2949,2535,2536,2537,617,2915,2947,2926,2927,3174,2544,2925,2928,2894,2893,2895,3163] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3360,3516,3517,3518,3414,3249,3257,3298,3468,3359,3469,3313,3312,3314,3051,3056,3064,3065] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1101,463,464,853,854,471,852,3151,855,876,2314,2318,2321,874,2690,2712,2714] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3066,3082,3083,3104,3209,3223,3225,3210,3234,3367,3368,3347,3238,3239,3376,3360] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3245,2365,2220,2234,2235,3229,2397,2419,3227,3228,3225,2454,2455,2348,2418,2349] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
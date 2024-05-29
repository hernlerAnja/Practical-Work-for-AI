
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
        
        load "data/3UE4.pdb", protein
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
 
        load "data/3UE4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [184,305,307,308,309,1117,1118,690,147,182,138,717,689,714,649,1199,665,534,535,183,139,141,683,685,697,646,664,292,293,669,686,301,1098,1103,1192,1193,1201,724,1089,1205,1211,1210,1208,721] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2362,2483,2485,2486,2868,3370,3295,2713,3383,3384,3385,3386,2639,2479,2842,2847,2471,2474,2824,2469,2470,2472,2864,2827,2843,3296,2325,2326,2331,2336,2332,2333,2335,2867,2891,2892,2895,2329,2330,2861,2863,2360,2361,2327,3389,3281,3388,3267,2899,2902] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1576,1896,1897,1572,1609,1612,1611,1872,1871,1859,906,869,879,881,868,870,848,850,872,880,851,1606] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2848,2852,2853,2856,2857,2456,2452,1313,2451,2719,2720,2739,361,363,364,427,426,388,389,390,3342,2870,3358,2876,2878,2457,1311,1312,3313,3305,3308] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3050,3029,3790,3057,3059,4291,3750,3754,4037,4050,4049,4074,4075,3046,3048,3052,3026,3028,3784,3053,3056,3047,3084] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1238,1230,1233,1254,1255,1256,3070,1234,2699,2689,2690,3099,3341,427,453,3092,3091,4300,4301,2698,3093,3119,4336,3068,3066,3097,3098,4326] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1230,1233,1254,3341,3342,1225,1228,1229,1289,1291,1293,427,424,425,426,453,1219,3324,3321,3311] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1053,1054,1056,1057,1229,1293,1313,1315,392,394,423,425,396,397,435,433,1204,1213,1209,1303,1306,1307,1292,1330,1347,1349] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3317,3325,3331,3333,3008,3009,2937,2887,2888,2935,2933,2889,3315,2930,2968] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4140,4142,3990,3844,3845,3709,4144] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
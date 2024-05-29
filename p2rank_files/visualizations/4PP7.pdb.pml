
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
        
        load "data/4PP7.pdb", protein
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
 
        load "data/4PP7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [638,642,649,260,637,623,624,272,274,658,659,127,128,660,177,178,124,125,130,131,519,522,1081,1086,1087,691,1056,1083,1085,276,1166,1171,1172,160,1173,1067,687,692,518,535,1182,442,443,1186,1185,666,667,662,682,665,680,683,684] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3221,3223,3224,3225,2314,2315,2316,2412,2414,3311,3194,3305,2798,2803,2804,2818,2797,2796,2805,2659,2660,3304,2776,3323,3324,3325,3326,2413,3333,3301,2398,2758,2775,2761,2762,2410,2780,2829,2820,2825,2263,2266,2269,2268,2271,2656,2673,2581,2580] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3183,3184,3450,3453,3454,3413,2285,3447,3414,3195,2316,3309,3310,2412,2414,3311,2302,3360,3361,3362,2292,2295,2300,2299,3205,3167,2301] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1152,1153,1135,1137,647,1104,1129,1136,3240,3242,3248,3290,3291,3275,3274] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [651,654,1105,244,675,241,245,248,2635,2636,3049,3051,230,238,2643,3030,3275,3028,1114,3029,3031,3263,3265,3269,3274,2997,3020] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2786,2789,2382,2383,3252,1126,882,2379,1136,3243,2810,891,892,893,505,890,911,913,497,2376,496,498,1137] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1046,1029,1285,1262,1263,1264,1224,1223,1276,1277,1280,1270,1322,1284] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [25,28,2616,2587,2589,448,451,452,3,4,2163,2139,2140,2145,2588,2166,446,447,455] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [943,977,978,976,2172,2150,2165,2167,458,2683,2362,2363,2179] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [571,593,592,80,78,79,97,284,570,266] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [12,18,20,45,3116,224,19,34,29,225,545,3081,3083] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
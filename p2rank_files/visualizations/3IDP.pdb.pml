
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
        
        load "data/3IDP.pdb", protein
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
 
        load "data/3IDP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2706,2707,3222,3224,2301,2701,2315,2218,2219,2721,3124,3126,3128,2700,2169,3219,3216,3217,3218,3236,3204,3207,3210,2723,2728,2732,2733,3101,3100,2683,2679,2678,2661,2309,2316,2317,2313,2562,2559,2560,3198,2484,2483,2563,2458] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1145,639,1094,1096,2539,3177,3178,3143,233,2538,237,240,643,2923,2568,2687,2526,2534,3194,2547,2546,2952,2551,1097,1105,1106,1104,664,638,519,520,521,522,236,3145,2688,490,2571,1128,1129,3140,3176,2931,2932,2933,2934,3151,3152,1122] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [654,657,658,1077,1079,1170,1173,1175,672,679,1167,169,120,651,652,513,514,629,630,634,435,251,612,250,252,1161,1169,168,170,266,267,268,409,615,264,434,1155,1158,683,1051,1052] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2554,2559,2560,3198,2475,2482,2484,2563,2458,2995,3032,2994,3043,2474,2451,2476,2455,2456,3037,3204,3205,3207,3211,3051,3050,3049,3047,3048,3214,3045] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [983,988,994,426,427,996,1001,1162,1165,1155,1156,1158,1000,1002,505,946,462,406,407,409,402,514,435,433] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3145,2684,2285,2689,2692,490,489,497,488,1128,1129,882,883,884,852,885,874,905,851,2282,2286,3146,2695,2289,2713,3152,3155] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2111,1954,1952,1955,1956,2009,2268,926,2269,2274,2276,2260,2112,2114,2115,2249,2278,1982,2010] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2121,2123,2657,2307,2138,2324,2639,2641,2611,2612,2124,2117,2120,2635] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
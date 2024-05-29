
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
        
        load "data/3PRI.pdb", protein
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
 
        load "data/3PRI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3260,3261,2604,2606,2613,2998,3000,3244,3245,2994,2989,2990,3021,3018,3019,1102,1104,1105,1114,1129,1130,892,1136,1137,505,890,891,893,496,497,498,2352,3210,3212,2759,3213,1153,530,647,2598,2599,2605,244,238,241,230,651,245,246,248,2638,490,491,2353,913,2338,2346,2349,881,882,911,910,3222,3234,3237,3238,2999,3001,2354,2356,2762] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3193,3195,3175,3164,3278,3281,2384,2242,2244,2245,2248,2249,2775,2773,2774,2788,2790,2795,2799,3192,3194,2368,2234,2236,2237,2767,2768,2284,2285,2286,2235,2239,2240,2800,3167,2233,2629,2630,2367,2745,2750,3271,3272,3274,2731,2746,2524,2380] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1163,666,682,687,1084,691,692,1056,1085,1086,1087,1166,276,1170,1171,137,141,686,521,522,416,259,260,637,125,126,127,129,130,131,176,177,178,132,274,272,642,662,659,665,680,660,638,620,1164,1067] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [25,447,450,452,6,7,28,478,2555,2558,8,2560,2116,2115,2118,2136,2124,2131,2133] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2724,2701,2392,2711,2191,2189,2187,2188,2205,2171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [593,79,80,81,83,616,284,603] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
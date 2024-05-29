
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
        
        load "data/3TV6.pdb", protein
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
 
        load "data/3TV6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [666,642,662,260,637,177,658,178,176,272,274,275,638,623,624,682,659,665,680,126,127,128,660,134,124,125,131,137,1085,683,687,691,692,1056,1081,1084,1086,1087,1057,1067,1173,160,535,1184,522,1182,443,1166,1167,442,1186,276,1185,1195,518,519,521,667] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3228,3230,3232,3233,3202,3203,2422,3319,2322,2323,2324,2270,2271,2272,2273,2274,2277,2420,2833,2838,2811,2828,2831,2805,2806,2668,3328,3309,3312,2784,2421,3313,3331,3332,2664,2681,2588,2589,2405,2406,2783,2769,2770,2418,2667,2812,2813,2808,2788] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [647,1102,1104,1153,1136,3248,3250,1130,3276,2792,3299,2675,2676,2791,2793,2673,3282,2631,493,498,527,529,485,645,646,510,530] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1137,3260,1126,505,890,891,892,893,496,2390,2797,498,497,859,2391,2387,2392,2394,2384,911,913,881,882,3251,2818] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [651,1105,2644,672,668,241,248,3283,3037,3038,3039,3273,3282,1112,1114,3028,2651,2642,2643,230,238,3057,3059,1104,244,652,654,245,239] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3213,2422,3319,3317,3318,3463,3464,3465,3462,3192,2303,3370,3422,2287,2310,2420,2299,2300,2324,2421] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [80,82,83,570,571,76,79,61,63,593,592,266,97,284] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [158,160,1046,155,156,1223,157,159,1029,1265,1224,1067,1172,1045] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2229,2209,2717,2739,2740,2225,2226,2430] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [448,450,447,2593,28,2624] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
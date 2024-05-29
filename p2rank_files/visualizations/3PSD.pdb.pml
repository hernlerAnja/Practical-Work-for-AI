
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
        
        load "data/3PSD.pdb", protein
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
 
        load "data/3PSD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2756,2760,2761,2759,2615,2616,2736,3176,3177,3179,3181,3260,3261,3264,3265,3266,2272,2368,2369,3161,2776,2779,2785,3178,3180,2780,2786,3153,2231,2235,2773,2774,2775,2732,2731,2537,2510,2717,2354,2219,2752,2220,2223,2754,2271,2270,2366,2225,2226,2753,2352,2353,2362,2714] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [658,177,659,125,126,128,129,660,131,176,178,134,260,620,637,272,521,522,1085,1082,1056,1084,1086,1087,1166,1167,1170,1067,274,275,276,416,1172,136,137,141,687,686,692,1059,442,443,638,679,680,681,685,665,677,666,667,682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1102,1152,1153,1136,1137,493,496,497,2624,2740,2741,3246,3247,530,646,495,1104,244,651,654,1105,1112,1114,241,245,246,247,248,2975,2976,672,675,2579,2587,2590,2591,2592,2589,2600,3231,2599,238,3004,3005,2621,3196,3198,3199,3206,3208,2745,2984,2985,2986,1113,2987,3224,3230,2954,2953,505,506,882,890,891,892,893,498,911,2335,2338,2339,2766,2342] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [498,2332,2335,2338,2339,505,859,881,882,890,891,893,2766,2340,2342,2769,3199,3208,2745] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [25,28,447,2122,2541,2544,8,2102,2117,2119,2546,450,2098] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2155,2173,2174,2191,2378,2687,2176,2177,2664,2665] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
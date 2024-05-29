
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
        
        load "data/3PRF.pdb", protein
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
 
        load "data/3PRF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [125,129,131,177,178,132,134,1056,1067,1086,1087,137,1173,623,638,258,259,260,268,522,620,637,1165,417,272,274,275,276,682,683,686,687,691,692,1082,1084,659,665,680,1083,521,642,666,660] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2756,2760,3176,3178,3179,3180,3181,2354,2752,2754,3265,3266,3267,2235,2270,2271,2272,2368,3161,3258,3259,3261,3264,2759,2776,2785,2779,2780,2786,3150,3151,3153,2231,2221,2223,2753,2219,2224,2225,2615,2616,2732,2731,3257,3260,2511,2366,2353] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1153,2741,3246,3247,3196,3198,1136,1102,1104,2591,3230,527,530,646,647,2624,3223] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [668,1103,1105,1111,1112,1113,1114,672,675,2590,2591,2599,3231,2984,3230,2976,2975,3007,244,248,212,246,247,651,2592,238,241,2985,2987,3224,3220] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [498,2338,911,913,2332,2333,2335,892,505,506,859,881,882,890,891,893,2742,496,497,3199,1136,1137,1126,2734,2342,2341,2745,2769,3208] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3035,3037,3069,545,3072,234,224,12,19,20,34,54,74,75,236,3062] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
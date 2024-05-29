
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
        
        load "data/3PPK.pdb", protein
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
 
        load "data/3PPK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [125,126,127,129,131,176,177,178,134,260,637,258,259,620,274,272,623,638,522,1166,1167,1170,1087,416,1171,1173,1067,137,443,662,666,658,659,660,665,642,682,685,686,692,1082,1084,1086,521] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2759,2774,2780,2785,2786,3178,3180,3181,3150,3161,2235,2231,2223,2753,2754,2271,2272,2219,2225,2760,2761,2616,2731,2354,2366,2368,2370,3260,3261,3264,3265,3267,2732,2717,2510] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2587,2590,2591,2592,2589,2599,1103,1104,1105,651,248,246,3004,3005,212,3007,493,495,497,647,1153,3247,1102,1137,1152,1135,2624,2740,2741,2621,530,244,230,238,241,654,245,646,527,3231,2984,2985,2986,2987,3230,1110,1114,3220,3223,3224,2975,2976,3246,2600,3196,3198,1129,1136,3205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3199,1126,1130,1136,3206,3208,2745,2748,2335,2338,2339,2342,882,2767,498,505,2332,892,506,891,893,496,497,1137] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [54,74,75,224,12,34,3072,225,3035,3037,3069,3071,234,236,3063,3062] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [25,2102,2122,452,6,7,8,2119,2546,447] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
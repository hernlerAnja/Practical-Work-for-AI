
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
        
        load "data/3PPJ.pdb", protein
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
 
        load "data/3PPJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2745,3196,3198,3199,2748,1126,1129,1136,3208,893,3246,2600,2984,2985,2986,2987,3231,3230,2980,1110,1111,1114,3223,2953,2975,2976,2335,2338,2339,2340,2341,2342,2306,859,860,881,882,2766,2767,2769,1153,1137,1152,1102,497,2624,2740,2741,3247,496,647,2587,2589,2590,2591,2592,2599,3005,3007,651,668,1104,1105,248,246,646,527,648,244,238,241,654,245,530,230,498,505,911,913,2332,910,892,890,891] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [125,126,127,129,131,176,177,178,134,623,260,637,258,259,261,263,268,272,137,1056,1059,1067,1087,443,638,522,1166,1167,1170,1174,274,275,276,416,1171,1173,682,687,1084,1086,686,665,662,666,667,658,659,660,692,1082,680] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3178,3180,3181,2776,2780,2786,3150,3161,2235,2231,2759,2774,2221,2223,2753,2754,2271,2272,2219,2354,2616,2731,3267,2366,2368,2369,2370,3260,3261,3264,2756,2760,2761,2732,2536,2537,2717,2714] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [12,34,545,3072,224,54,74,225,3071,236,3069,3061,3062] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2102,4,6,7,8,2119,2546,23,25,28,2122,452,2541] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2157,2687,2173,2710,2174,2175,2177,2665,2378,2191] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [592,593,79,80,97,284,616,266] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
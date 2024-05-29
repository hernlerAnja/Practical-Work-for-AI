
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
        
        load "data/4MBJ.pdb", protein
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
 
        load "data/4MBJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [258,260,261,177,178,272,274,275,176,268,126,127,129,124,125,130,131,134,137,259,637,638,623,620,521,522,1164,1165,1182,1186,1167,1172,1185,276,1194,1195,518,469,1184,442,443,624,691,692,1084,1085,1086,1087,1056,1067,1170,1171,159,160,662,666,680,659,665,658,660,667,684,1082] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2793,2415,2792,2775,2776,2778,2779,2427,2430,2431,2677,3319,3320,3322,3340,3341,2673,3339,2686,2687,2690,2598,2597,2817,2797,2676,2821,2822,2332,2286,2333,2429,2820,2835,2281,2282,2283,2284,2285,2814,2813,2815,3238,3239,3240,3241,3242,3211,3222,3325,3327,3326,3328,3236,2839,2846,3237,2847] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [647,1102,1137,1153,3257,3259,1104,3285,1130,2801,3308,2685,2802,1105,2653,3291,3292,1136,493,496,498,485] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1105,2653,3281,3291,651,3046,3047,3048,238,3036,3037,246,248,672,673,1114,2660,2661,2652,230,3068,1104,3285,244,654,245,241] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1136,3269,505,890,891,892,893,497,2399,2806,498,882,2403,2396,2400,881,911,913,3260,2827] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3327,3328,3473,3379,3471,3472,3474,3377,2429,2312,2308,2309,3464,3343,3348,2431] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3098,224,3130,3132,236,74,75,20,54,34,18,27,12,45,545,225] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1067,1173,159,1224,157,1029,1045,1046,1285,1057,1276,1277] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2603,2180,2605,2163,450,2607,452,2602,4,8,25,28] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
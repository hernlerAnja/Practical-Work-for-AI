
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
        
        load "data/4EHG.pdb", protein
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
 
        load "data/4EHG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [260,176,177,178,272,129,125,126,127,131,137,623,638,258,259,620,637,1083,1085,522,1166,1167,1164,1170,1174,1171,275,276,1173,1188,1195,1086,1087,1067,1056,1058,1059,1060,141,518,535,1184,519,442,624,443,1185,1186,1187,665,666,659,660,662,667,680,686,719,642,1084,682,683,685,687,691,717,718,521] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [2720,2370,2371,2372,3262,3152,3263,3281,3267,3269,3270,3276,3278,3163,2618,2734,2763,3181,3180,3182,3183,2733,2256,3282,2758,2356,2756,2755,2273,2274,2368,2762,2761,2787,2788,2230,3155,2776,2778,2781,2783,3142,2224,2225,2221,2227,2614,2631,2538,2539,2719,3280] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2743,3198,3200,498,3206,3207,1136,1137,3248,3249,3232,1102,1104,3226,1110,527,529,646,1153,493,485,1152,530,2589,2594,647,2623,2625,2626,2581] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2601,2986,2987,2977,2978,3222,3232,3233,2988,1104,673,1114,2955,244,643,640,648,651,652,1105,245,241,212,246,247,654,675,248,2587,2592,2593,2594,3007,3009,230,238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2337,2341,2342,2344,2750,2771,892,882,890,891,893,859,860,2334,3200,3201,498,2747,2768,3210,1126,1130,1137,2744,2340,2748,497,505,911,913,2645] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2875,2888,3846,3847,3844,3581,2884,2887,3604,3597,3601,3602,2834,2835,2940,2939] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [45,54,74,224,34,3064,3073,12,3074,234,236,3065,3063,3039,3071,3067] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [447,448,450,2574,2121,2544,2546,2548,452,2543,7,8,25,28] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [213,227,228,237,4086,4114,208,209,210,211,212,3029,3030,4056,4058,233,235,236,70,71,206,207,214,219,221,72,74,4112,4083,4113,4084] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [80,83,592,593,595,79,63,598,616,571,266,97,283,284] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2108,978,969,968,977,2115,2130,2149,2320,2170,2332,2116,2136,2137,2141,2129,2150] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3959,3510,3958,3512,3979,3357,3358,3745,3747,3511,3320,3783,3789,3793,3800,3957,3972] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [933,1975,1978,2329,1977,2002,2003,913,914,2324,2325,2333,2323,2331,2032,2033,2334,2308,2304,2306] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2176,2178,2193,2175,2694,2380,2688,2689,2179,2667] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
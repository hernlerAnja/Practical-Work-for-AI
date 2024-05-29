
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
        
        load "data/3PSB.pdb", protein
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
 
        load "data/3PSB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1056,1057,1067,1086,1087,1171,137,1173,1059,443,638,522,1166,1167,1170,1174,416,274,275,276,125,126,128,129,131,176,177,178,134,132,623,260,259,268,620,637,621,272,666,658,660,680,659,665,642,521,1082,1084,682,686,687,691,692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2354,2220,2222,2223,2752,2753,2754,2219,2271,2272,2366,2368,2369,2756,2759,2760,2776,2785,2786,3178,3179,3180,3181,3150,3161,3260,3261,3264,3265,3267,2231,2370,2235,2780,2811,2814,3153,2732,2615,2616,2731,2536,2537,2717,2510,2714] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3246,2589,2590,2591,2592,2599,2600,3231,2975,3007,2976,668,1104,1105,1110,1114,672,248,493,497,3196,3198,1102,1137,1153,1136,2740,2741,3247,647,244,651,652,241,245,654,530,230,495,646,2624,527,2985,2986,2987,3220,3224,2984,2954,2953,1129,3223,3230] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [498,911,913,2332,505,890,891,892,893,881,882,2335,2338,2030,497,1137,1126,1136,2742,2745,3199,3208,2746,2748,1130,3205,3206,3207,2339,2340,2341,2342,859] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [23,25,28,447,2122,2544,6,7,8,2119,2546,2102,450,452] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [54,74,75,3071,12,34,3072,224,3063,3061,3062,234,236,3035,3037,3065,3069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2687,2688,2378,2150,2155,2157,2158,2174,2176,2170,2173,2710,2360,2177,2665,2191] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [978,2639,977,2318,2319,2139,2128] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
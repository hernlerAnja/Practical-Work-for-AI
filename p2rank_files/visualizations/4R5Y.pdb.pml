
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
        
        load "data/4R5Y.pdb", protein
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
 
        load "data/4R5Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2609,2629,2632,2633,2634,3042,3140,3044,3045,2625,2111,2626,2627,3137,3138,3014,3135,3136,2654,2658,3017,2109,2112,2115,2492,2493,2604,2605,2237,2238,2250,2587,2155,2246,2254,3127,3133,3134,2252,2154,2156,3153] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [620,640,644,645,1146,1047,1049,636,637,643,638,1142,1144,1141,120,665,1051,669,162,163,164,254,258,598,260,504,1139,1133,1140,503,615,616,246,244,245,601,599] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [475,477,479,1101,2613,2614,3061,3063,1117,3111,2464,625,2468,3095,1067,1069,3072,1077,1100,512,2456,509,467,2501,2498] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [425,414,399,396,417,423,959,964,452,504,1121,1127,1130,1133,1134,976,978,921,922,977,972,495] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2838,1076,1078,3094,1068,1075,650,224,227,230,234,2868,2870,632,2467,2468,2469,3095,1069,629,2837,2846,2814,2815,2816,2847,2848,2849,2476,2477] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2417,2384,2386,2388,2415,2407,2441,2912,2949,2408,2493,3121,2484,3115,2911,3124,3128,2964,2965,2966,2967,2960,3127,2390,2954] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2219,2222,2223,2226,880,488,856,857,847,878,859,848,826,825,478,479,480,1101,3062,3063,487,3071,858,2615,2621,2643,2618] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2583,2262,2560,2080,2081,2244,2064,2065,2067,2542,2045,2047,2048,2063] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2391,2353,2355,2352,2356,2359,2327,2254,2251,2253,2257,2258,2263,2264,2267,2138,2140,2269,2329,3150,2354,2361,2574] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [75,594,553,552,73,53,55,572,270,564,71,72,74,89,253] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        

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
        
        load "data/4FK3.pdb", protein
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
 
        load "data/4FK3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [518,519,522,1083,1161,1085,1164,1168,136,137,1171,276,443,1183,1172,1181,1185,1186,1082,1084,666,680,682,683,667,176,177,178,260,272,637,638,642,275,623,274,442,622,624,413,291,292,132,134,659,660,128,125,130,131,665,1054,1065,687,691,692] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2182,2183,2278,2279,2137,2170,3089,3091,3090,2281,2282,3175,3176,3177,2422,3087,3060,3171,3189,2132,2134,2665,2666,2184,2644,2648,2266,2643,2626,2672,2671,2527,3167,3068,2528,2525,3170,2629,2449,3178,3182,2448] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [646,493,495,496,498,1151,485,2536,2533,510,1134,3118,1111,1099,1100,3157,527,530,2491,2504,1102,3141,2653,3107,3109,2652] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [651,673,674,675,1102,1103,1112,2894,3141,2503,2512,2892,2893,2895,2914,241,245,248,2916,2861,2884,244] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [910,2251,2254,2682,2250,3117,2657,3108,497,505,506,908,886,887,888,498,1134,1135] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [545,27,224,2947,2981,2982,19,20,34,45,54,2975,2979,2980,236,225,2972,2973,74,75] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2422,2159,2388,2393,2391,2359,2280,2163,2277,2298,2423,2387,2386,2165,2630] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
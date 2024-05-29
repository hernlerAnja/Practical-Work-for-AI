
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
        
        load "data/6NSQ.pdb", protein
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
 
        load "data/6NSQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [501,502,613,1141,1143,1044,1046,1048,1049,1139,618,634,636,243,116,663,115,614,667,668,1021,165,1128,124,128,1137,1144,164,163,425,426,259,399,599,258,241,242,596,251,255,1125,642,643,638,641,656] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2908,2910,2911,3004,3006,2880,2535,2531,2536,2524,2509,1999,2000,2004,3001,2041,1997,3002,2999,2039,2040,1988,1991,1994,1995,2502,2503,2504,2369,2511,2486,2506,2370,2481,2482,2987,2510,2138,2267,2465,2467,2135,2990,2993,2994,2123,2121,2122,2131,2294] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [510,2346,2341,2344,2345,2353,224,2737,465,473,477,623,1096,1112,627,231,648,652,2739,2707,1066,1065,1067,2375,2377,2378,2977,2491,2927,2929,2961,2715,2716,2717,2960,2718,2950,1076,2683,2685,2684,1075,1095,227,507,509] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [968,970,972,1123,1125,1129,1130,1132,416,417,953,425,426,396,397,398,399,395,424,393,450,493,916,1116,915,1119,1122,502,958,967] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2837,2990,2993,2994,2997,2829,2832,2833,2834,2836,2265,2267,2264,2823,2367,2370,2980,2981,2984,2987,2988,2835,2284,2285,2286,2818,2292,2293,2261,2294,2361,2318,2780,2781] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2498,2108,1088,851,853,2107,2104,2111,874,2495,2928,2929,1095,2937,476,478,477,1096,485,852,2517,2520] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2498,2108,820,850,851,853,2107,842,819,2104,2111,872,874,2495,470,471,485,852,476,478,477,1096,2517,2520] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1947,1948,1950,2147,1964,2437,2436,1943,1946,1929,2419,2129,2418,1918,1923,1930] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [940,1886,1901,938,931,905,1941,2087,2088,1912,1908,1921,2393,1887] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2796,71,207,525,2803,2804,2805,2795,18,19,34,15,20,45,41,54] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
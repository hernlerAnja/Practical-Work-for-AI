
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
        
        load "data/5CSW.pdb", protein
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
 
        load "data/5CSW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2711,3124,3126,3129,2710,2564,2682,2567,3206,3200,3225,2485,2487,2488,2458,3226,3227,2724,2725,2687,2707,2712,2563,2683,2484,2580,2514,2305,2703,2705,2303,2304,2313,2317,2704,2321,3209,3210,3213,3214,3215,3217,2319,3221,3223,2205,2181,2182,3099,3128,3130,2727,2736,2223,2172,2222,2173,2176,2177,2179] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [513,1071,1075,1076,1077,1160,1057,1161,1046,1073,252,169,650,651,652,119,168,124,125,126,117,120,123,129,132,133,128,634,654,658,659,1153,1156,1162,1164,152,266,268,170,260,264,510,511,514,524,629,630,527,250,251,1168,1169,1170,1172,1173,1174,461,434,615,435,657,672,673,674,675,676,679,683] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [900,847,869,870,902,2286,878,879,881,1126,1119,848,489,490,497,498,880,2720,2721,2293,2289,2290,3147,3148,2713,2717,3155,3156,3157,2696] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2543,639,1093,485,490,1142,1143,1125,1127,522,1126,2691,2692,3195,3196,3146,3148] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [233,236,237,238,240,2542,2543,640,643,1094,1095,664,1104,665,666,667,668,2900,2901,2922,2923,2931,2932,2933,2934,2535,2953,2550,2955] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [485,490,1143,2543,639,522,2575,2690,2691,2692,3196,2572] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2328,2329,2643,2644,2638,2639,2128,2615,2616,2106,2108,2124,2127,2142,2125,2661,2311] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1987,1925,1927,2115,1928,2282,2272,2273,2278,2280,924,1957,1955,2253,2255] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2070,2040,2045,1,17,442,443,444,2058,2494,2495,2497,2505] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [216,3021,46,66,67,3011,3012,3019] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
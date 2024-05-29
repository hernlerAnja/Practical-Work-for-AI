
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
        
        load "data/4XV2.pdb", protein
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
 
        load "data/4XV2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [252,168,169,170,128,132,422,152,266,267,268,423,599,264,613,618,638,501,502,643,498,515,614,419,420,250,251,499,1055,1056,1057,1058,1059,1060,1061,1137,1131,1140,1030,129,133,1144,1145,1146,1147,1041,1141,1148,150,449,634,635,636,641,642,655,656,117,120,647,659,660,663,1065,667,1062,657,658] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2642,3014,3039,3041,3042,3043,3044,3045,2502,2613,2614,2597,2599,2252,2254,2255,2256,2422,3124,3137,3138,3128,3132,3136,3139,2156,2157,2158,2112,2113,2114,2116,2117,2120,2121,3129,3130,3131,3016,3018,3025,3017,2240,2634,2635,2636,2638,2641,2105,2108,2657,2658,2659,2660,2663,2655,2656,2667,2501,2618,2498,2511,2493,2512,2515,2449,2423,2643,3142] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2221,2225,2228,2627,2650,2651,3062,884,886,2224,854,485,862,863,864,477,478,3072,830,831,832,3071,865,2630,2652] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [240,651,2837,2838,2870,649,650,1078,1079,1087,1088,652,3084,2814,2815,2816,2846,2847,2848,2849,2485,2477,2478,627,3095,2486] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2141,2142,2259,2265,2269,2271,2272,2334,2333,2360,2331,2134,2135,2137,2367,2369,2362,2598,2600,2251,2253,2139,2359,2358,2361,2394] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [507,622,623,2478,510,2510,2473,1127,478,3110,3111,3061,2622,2507,3063,1077,3094] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [216,26,46,66,228,2927,2926,217,2899,2901,2934,525,37,4,19,10,2935,2936] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1992,2007,952,917,949,950,951,942,2014,2025,2034,2054,2525,2204,2205,1998] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1856,1857,1860,1862,1323,1841,1852,1302,1288,1290,1292,1293,933,935,1287,1879] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [569,570,72,55,71,276,75,592,550,551,74,89] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
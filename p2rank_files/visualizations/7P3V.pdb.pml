
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
        
        load "data/7P3V.pdb", protein
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
 
        load "data/7P3V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2316,2318,2319,2312,2220,2222,3111,3113,2221,2171,2173,2334,2335,2431,2433,2723,2727,2718,2200,2169,2198,2199,2201,2336,2170,3193,3196,3197,3198,3200,3199,3214,3220,3221,3222,3203,2320,3275,3276,3277,3278,2454,3274,3082,2728,3108,3110,3112,2562,2561,2703,2304,2678,2698,2482,2659,2656,2575,2558,2673,2674,2658,3109,3107,2719,2702,3114,2701,2707,2716,2720,2717,2695,2696,2483,3192,3204,3207,3209,2453,2456] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [420,631,283,285,286,287,187,188,189,139,140,1175,1168,1171,1174,1057,1069,1167,424,1178,1179,526,529,1082,1083,1084,1085,1086,1087,1088,1158,1164,674,673,698,687,689,690,694,528,644,271,649,666,667,672,447,448,449,450,630,645,446,525,542,1185,476,142,136,270] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [165,164,302,303,362,365,364,391,396,420,393,398,631,285,287,421,424,389,392,390,448,449,450,162,318,366,369,2191,168] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [168,170,3304,3305,3306,158,307,2190,2194,2195,369,2191,2343,3276,3278,3281,3307,3308,3309,3221,2198,2197,2351] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3342,148,1030,1173,1174,1058,1069,1187,1178,287,3343,3340,167,3367,1047,3359] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2631,2639,2629,2141,2328,2634,2127,2087,2610,2611,2124,2123,2095,2100,2103,2107] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2987,2985,4083,4079,4084,4082,4101,2984,3524,3526,3536,3521] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/5ITA.pdb", protein
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
 
        load "data/5ITA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [274,522,1082,1083,1084,1085,1081,176,177,178,260,272,637,638,258,259,620,268,660,1161,1164,1165,1168,1054,1066,1169,1170,136,137,140,141,142,143,149,132,133,130,131,666,667,518,442,443,622,623,417,276,535,1172,1179,1181,1182,1183,665,128,680,682,125,659,691,692,687] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2645,2646,3059,3060,3062,3064,2641,2243,2504,2505,2616,2621,2617,2602,3061,3063,2502,3140,3143,3144,3151,2400,2425,2426,3153,2637,2639,2638,2644,2661,2659,3033,3037,2160,2135,2159,2161,2255,2257,2259,3036,2670,3044,3147,2132,2133,2134,2501] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [497,506,886,888,887,878,908,910,3081,1125,3090,3091,889,1124,1126,856,854,855,2630,2182,2231,2654,2228,2224,2652,2653,2655] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [673,674,676,675,1102,1111,248,2857,2889,651,652,244,245,3114,1112,3113,1103,2865,2866,2867,2868,2887,2480,2488,2833,2834,2835] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2249,2086,2084,2087,2553,2554,2055,2065,2083,2067,2595,2267,2101,2577,2565,2573] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [74,224,75,2954,2955,34,54,45,2946,2944,2945,2952,2953] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [447,25,451,452,2005,2009,2461,28,2430,2431,2433,2434,2032,2029] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
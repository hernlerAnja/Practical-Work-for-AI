
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
        
        load "data/5C9C.pdb", protein
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
 
        load "data/5C9C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1089,1091,1099,1092,1093,3072,3075,1074,3086,2606,2611,3064,3065,3066,3110,3111,2848,3095,2870,3083,3093,3094,2847,2849,2869,1077,3084,2838,822,823,845,856,2211,2214,2215,2218,2612,2614,3074,2632,2633,460,463,464,2494,2491,2493,1100,1115,1116,2460,2461,2462,1066,618,1068,1067,496,497,2449,2457,615,226,229,230,233,619,621,640,197,2453,2455,516,515,472,473,853,854,855,465,456,458,2200,877,876,2513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1126,1127,1146,1138,1142,1144,1129,1132,480,486,489,1120,409,380,261,381,382,383,384,1133,1134,1135,1136,1168,1170,1046,1141,658,659,1022,1139,1140,1151,410,437,408,377,400,401,402,162,257,259,116,161,163,1158,115,260,625,245,110,113,114,627,604,605,588,590,587,629,633,634,632,647,1048,1050,626,654,965,967,969,970,971,972,973,954,959,917,916] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2647,2651,3044,3046,3139,3133,3134,3135,3136,2625,2640,2642,2645,3048,2105,2620,2619,2148,2101,2102,2146,2147,2486,3141,2230,2597,2626,2622,2242,2244,2246,2381,2580,2598,3127,3124,2618] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3124,3128,3122,2964,2965,2966,3130,2960,2909,2952,2958,2378,2381,3127,2483,2486,3121,3115,2405,2407,2477,2434,2910,2947,2376,2397,2399,2398] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [414,418,419,445,2018,2442,2015,2416,17,18,20] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3896,2890,3866,3868,3869,3870,212,222,220,3923,3924,193,204,59,60,61,191,192,78,3894] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2084,2563,2253,2254,2236,2066,2067,2554,2553,2050,2051,2546,2576,2558,2535,2070] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [549,561,538,52,69,72,65,53,269,569,68,86] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
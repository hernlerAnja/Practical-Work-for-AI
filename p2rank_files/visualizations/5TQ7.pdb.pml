
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
        
        load "data/5TQ7.pdb", protein
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
 
        load "data/5TQ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1119,1120,1121,1199,665,1200,1201,1090,1208,326,327,139,140,127,128,129,130,167,178,132,165,162,163,164,166,1066,1099,1104,1206,1207,1209,1222,1095,1223,1224,436,153,155,154,380,344,405,398,404,376,377,378,400,408,124,125,177,121,122,126,176,543,670,688,311,682,666,724,723,748,691,699,716,719,1064,1065,1231,1230,1232] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2933,2936,2374,3335,3336,2908,2371,2377,2372,2375,2899,2901,2916,2940,3305,3334,3314,3319,2962,2965,2883,2541,2426,2427,2428,2882,2887,3421,3422,3423,3414,3415,3416] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2557,3421,3422,3423,3424,2556,3416,2426,2428,2389,2390,2401,2412,2415,2413,2414,2418,2417,2416,3280,3281,3437,3446,3447,2657,3439,2405,2408,2574,2403,2404,3310,3319,2371,2377] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3879,3878,2957,3917,3918,3932,3931,3832,3925,3309,3308,3302,3306,3307,3625,3626] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2317,2318,2319,2321,2292,2289,2290,2857,2858,2564,2331,2451,2335,2565,2436,2437] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3764,3797,4260,4262,3767,3957,3956,4259,4261,4263,4122] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2042,2044,2040,2041,1738,1548,1902,1903] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/3D4Q.pdb", protein
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
 
        load "data/3D4Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [125,126,128,129,131,176,178,134,132,260,637,258,259,268,660,177,274,272,521,522,1166,1082,1084,1056,1067,1085,1086,1087,137,1173,1167,1170,275,416,1171,692,443,623,638,620,666,659,665,662,680,667,682,686] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2770,2366,2367,2368,2745,2766,2376,2380,2382,2383,2775,2629,2630,3274,3275,3278,3279,3281,2790,2794,2795,2799,2800,3192,3194,3195,3175,3164,3165,2242,2245,2249,2773,2788,2237,2767,2768,2233,2239,2284,2285,2286,2240,2746,2731,2524,2728] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [647,1153,2755,3261,1102,2601,1104,3210,3212,1129,3244,3237] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1105,648,651,212,245,248,668,654,672,2604,2605,2606,2613,549,643,244,3019,238,241,3021,640,2998,2999,3001,2989,2990,2614,3000,3244,3245,1114,3234,3238] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2759,3212,3213,2762,1126,1136,3222,860,893,2760,2352,2349,2353,2356,859,882,498,505,911,913,892,506,890,891,2346,496,497,1137] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [647,1153,2755,3261,527,530,2601,2638,2754,2635,2593,2618,529] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [7,2555,2556,2558,2133,2560,25,447,478,2586,2116,2136,452,28,6,8] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [225,74,224,236,3075,3076,3079,3083,34,54,3085,545,3086] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [97,283,284,603,266,81,616,61,592,593,79] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
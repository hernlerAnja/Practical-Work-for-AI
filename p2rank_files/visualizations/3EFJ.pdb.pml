
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
        
        load "data/3EFJ.pdb", protein
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
 
        load "data/3EFJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1296,1301,1302,1303,1304,1295,1285,1286,1294,422,817,820,1204,1205,816,827,261,263,265,1203,800,752,753,768,769,577,665,666,652,794,773,792,549,545,546,547,551,552,519,522,524,754,685,418,420,259,282,227,230,232,233,260,262,264,281,435,436,406,786,1290,1291,1293,853] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2434,2397,2454,2400,2573,2433,2435,2437,2931,2455,2585,2586,2587,2589,2932,3444,3445,3447,3448,3363,3364,2815,2741,2980,2983,2979,2956,2957,2955,2963,2394,2417,2401,2403,2988,2989,3015,3017] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [472,3281,3288,3301,3302,3303,3452,3275,3276,3277,2710,2713,2712,2734,482,2732,2733,3442,3445,3449,3450,2738,2739,2740,3294,3240,3292,2766,2768,3241,2806] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1140,1129,1117,1118,1122,1290,1291,1292,1293,1077,1282,1283,2652,1142,1143,569,1116,603,605,1277,648,643,570,2649,2650,2639,548,549,550,545,547,575,576,577,578,1286,515] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2602,2686,2715,2689,2691,2713,2712,3445,3449,3447,2738,2740,2829,2741,2587,2932,2917,2916] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1448,1987,1990,1992,1439,1440,1053,1082,1083,2007] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1915,1916,1918,1767,1768,1917,1920,1482,1717,1479,1718,1512,1619] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
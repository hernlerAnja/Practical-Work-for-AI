
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
        
        load "data/3AMB.pdb", protein
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
 
        load "data/3AMB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [417,562,388,393,433,435,389,394,414,556,557,1351,1368,1379,1380,1391,1495,1489,1492,1493,1011,1012,1038,377,2936,2937,2938,386,376,382,383,384,1009,1010,1037,717,1494,1508,680,1510,558,716,407,410,691,1408,1005,999,1002,981,988,378,380,381,2624,2629,2618,2631,2619,2620,2621,2622,1076,1000,1047,2577,993,1487,434,541,962,1407,960,967,1486,2964,2953,2960,397,401,403,2958,2963,402,404,2944,1520,1521,657,1519,658,2973,2975,2976,412,413,655,656,639,2986] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2489,2454,1225,2369,2370,119,120,794,2469,2471,2490,2491,2492,2494,92,87,91,56,84,117,118,129,115,116,58,59,61,792,2456,1221,1253,1249,1250,1251,1254,1257] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1795,2335,2336,1245,1249,1247,1276,1277,1283,1284,2331,2321,2322,2328,1762,1763,1279,1792,2293,2305] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1144,2561,1112,1182] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [565,566,406,919,920,2703,2699,2706,2709,415,416,418,2692,423,424,425,575,579,608,609,581] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
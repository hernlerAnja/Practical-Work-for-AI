
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
        
        load "data/6BKE.pdb", protein
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
 
        load "data/6BKE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2366,2367,2369,2365,2177,2368,2405,2407,2408,601,598,599,359,360,361,251,252,254,255,277,289,290,295,335,269,274,2465,316,319,321,299,302,312,2539,2541,2403,2420,2421,2543,1385,2150,1391,2151,1390,2103,2178,2154,2153,1383,2202,2203,1338,1355,1376,1377,2362,2363,2374,2381,2377,2383,2356,2384,568,1290,1049,1050,1253,1291,1013,1047,871] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1740,2259,2260,2274,2275,2276,2277,1457,1458,1526,1668,1610,1664,1665] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3720,3721,4320,4321,4322,3690,1643,1644,3201,1642,1700,1703,3770,4260] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2922,2924,2926,2925,2671,2672,2749,2536,2655,2656,2557,2075,2543,2423,2542,2555,2558,2560,2076,2078,2422,2424,2425,2432] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [836,886,887,888,1084,1095,1096,4,1,1050,835] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2154,2155,2731,2732,2153,1422,2616,2627,2626,2649,3405,2667,3274,3277,3278,3279,2702,2703,3404] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
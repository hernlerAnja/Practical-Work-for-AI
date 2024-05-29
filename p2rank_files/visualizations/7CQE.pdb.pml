
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
        
        load "data/7CQE.pdb", protein
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
 
        load "data/7CQE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1114,159,160,161,294,1197,1113,1115,279,627,122,123,124,126,127,654,632,647,497,644,142,1198,132,129,680,684,685,686,1086,677,650,658] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2531,3121,3131,3132,2326,2327,2374,2308,3124,3126,2466,2447,2530,2546,2547,2355,3110,3111,3112,3118,3120] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2603,2604,3005,3117,2309,3116,2605,2175,2154,2155,2158,2596,2599,2566,2569,3034,3032,3033,3109,2174,2293,2448,2546,2157,2563] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2740,2742,3384,3401,3624,3629,3633,1716,1717,1705,823,821,3625,2685,2686,1468,1469,1470,1465,766,767,762,763,764,3387,1480,1481,758,760,755,756,2683,3399,3400,2675,2679,2682,2681] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1501,1502,2659,1494,1497,2658,3420,3421,3406,3407,3416,3419,3409,2623,2624,1488,1477,1487,1489,1490,740,3413,704,739] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1236,1537,1514,2658,2630,1530,1531,1524,1501,1502,1503,1507,2621,2623,2624,3421,3407] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [293,1197,627,1191,1192,1193,611,1199,1202,1205,423,1207,628,496,612,515,310] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [989,1343,1900,1903,1905,1906,1913,1350,1352,1353,1344,986,987] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
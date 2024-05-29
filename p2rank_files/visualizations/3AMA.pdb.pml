
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
        
        load "data/3AMA.pdb", protein
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
 
        load "data/3AMA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1391,1403,1504,1505,1420,1499,1500,1507,1506,1419,1017,1022,1023,1025,1049,1050,1024,1014,1060,1005,1012,1000,2630,1059,2652,2653,2631,2589,2595,2634,2592,1086,1088,1048,1392,2948,2949,2946,1363,1379,1380,2965,2972,2976,2956,2970,1520,1532,1522,692,1531,1530,2968,2969,2975,445,447,567,568,569,446,974,570,972,553,979,388,389,390,395,392,393,993,2641,2643,2646,2651,2636,2640,2644,406,429,400,401,405,407,409,415,426,574,422,413,414,2994,2993,424,669] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [99,127,1263,2382,103,104,82,128,129,130,131,132,141,1237,2483,2501,73,1233,806,2503,2506] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1804,1807,1774,1775,2305,1257,1261,2347,2348,1264,2317,2325,2333,2334,2340,2343,2355,2356,2357,1291,1287,1288,1289,1259,1295,1296] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [436,437,2704,428,430,435,593,931,591,418,427,587,2711,2715,2695,577,578,932,2716,434,575] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
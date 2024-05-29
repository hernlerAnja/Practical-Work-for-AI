
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
        
        load "data/5VD9.pdb", protein
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
 
        load "data/5VD9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2482,871,802,803,804,2469,2470,289,292,758,759,812,813,814,815,682,754,756,757,1272,872,883,884,2432,2438,2439,2440,2138,2215,2442,2443,2444,2445,2136,2137,2484,2485,295,2169,2170,2201,2202,2203,2679,581,582,583,1306,1308,575,579,291,625,626,1175,1176,1177,1178,1199,1285,1269,1270,1271,1203,635,549,1344,935,1167,1168,1169,2252,550,1078,1354,331,330,332,249,297,298,293,294,296,234,236,548,1372,1076,1079,233,1430,1431,1473,235,231,232,2247,2248,2250,1391,1420,1392,1387,1390,1374,1376,1472,2643,2653,2667,2672,2673,2677] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1495,2189,3153,3154,2188,1494,3155,3191,3217,2190,2168,1460,2202,2203,2729,2703,2727,2701,3214,3227] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3987,2009,2953,2954,2010,2012,2553,3963,2970] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1479,1482,1670,2269,2299,1668,2300,2343,2380,1539,1733,1734,1735] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
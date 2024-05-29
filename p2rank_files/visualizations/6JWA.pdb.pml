
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
        
        load "data/6JWA.pdb", protein
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
 
        load "data/6JWA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1445,1446,1449,1441,1443,915,779,913,919,704,1459,542,543,557,912,914,376,438,372,373,374,378,380,382,439,437,379,1328,1343,1444,1315,1344,957,938,935,423,558,559,671,393,394,1450,1451,1452,1453] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1865,1866,1913,1916,979,981,983,1858,1862,1864,1006,1010,1042,1044,1011,1005,1013,1309,2457,1016,1018,1307,1308,1333,957,1352,1008,956,961,1159,1841,1867] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [406,410,413,415,418,423,634,558,559,670,575,633,397,393,394,1477,1476,1478,1450,1451,1452,1468,1469,1470,1287,1303,1288,1304,439,1316,1328,1449,557] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1751,1752,1758,1766,1767,1770,1753,54,59,71,69,70,2595,1222,1793,2637,2640,2643,1220,81,2642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [550,566,340,341,342,549,565,567,838,889,839,318,317,292,297,822,877] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1492,184,212,213,191,1523,1525,223,1544,193,1491,1490,1563,1543] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1905,1927,1932,1934,2387,2389,2391,1907,1946,1906,2033,2034,2037,2038,2058,2069,2057] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
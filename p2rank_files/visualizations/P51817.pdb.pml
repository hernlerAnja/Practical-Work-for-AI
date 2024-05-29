
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
        
        load "data/P51817.pdb", protein
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
 
        load "data/P51817.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [447,571,573,587,995,424,574,731,732,1429,1430,1510,1511,1414,1512,1513,1515,1517,1518,423,1545,425,668,670,692,1532,1533,1534,1543,705,693,691,699,700,1519,1373,1544,1012,556,837,1000,444,446,394,397,399,401,404,405,408,428,390,392,1390,413,414,1046,1402,1401,2682,2684] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1001,1002,1003,1004,867,1495,1496,805,807,2540,2544,548,550,866,1009,1030,1029,1442,1447,1446,1011,1005,209,211,216,217,218,522,524,526,528,552,2636,2637,534,531,535,2639,1452,1453,1454,1457,197,2640] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [565,581,948,950,318,321,322,968,971,920,319,365,2757,2758] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1405,1406,1065,1103,1888,1889,1397,1681,1669,1670,1671,1668,1932,1933,1654,1666,1679] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1188,1190,1194,1165,1166,1186,2467,1219,2557,2561,2560,2466,2566] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1630,1557,1558,1559,685,698,1629,695,722] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
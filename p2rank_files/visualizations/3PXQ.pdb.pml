
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
        
        load "data/3PXQ.pdb", protein
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
 
        load "data/3PXQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1165,1166,641,430,404,428,429,436,437,426,432,1182,1183,1184,152,149,150,290,308,1216,401,402,406,407,408,394,1213,1215,1218,313,346,379,347,1154,1155,1162,504,1153,1169,503,639,496,501,1063,1160,135,1060,1158,1159,1161,291,292,1053,1082,696,1055,1081,682,309,622,623,518,521,603,602,543,544,560,562,439,312,590,600,275,645,635,636,638,640,122,172,173,174,680,665,662,666,671,672,673,119,1176,396,125] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1418,1431,1441,1442,1452,1867,1874,1380,1826,2180,2181,1823,2182,2174,1457,1456,2189,2190,1866,1865,1837,1839,1861,1838,1832] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1469,1457,1465,2179,2214,2220,2203,2223,2224,949,1463,947,948,2225,2230,2234,951,955,924,927,926] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1761,1969,1970,1812,2163,1809,1811,2154,2155,1813,2141,2118,2147,2152,2156,1762,1764,1765,2165,2119] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [179,83,282,62,79,611,613,39,614,293,297,164,279,181,84,85,300,301] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1310,1311,1057,712,713,1339,1048,1049,1351,1563,1038,1350,1050,1054,710] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
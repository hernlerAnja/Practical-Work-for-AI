
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
        
        load "data/5C46.pdb", protein
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
 
        load "data/5C46.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3907,4060,4066,4073,3899,3901,3903,3904,3905,3932,3933,4078,4082,4083,3927,4278,4077,4081,225,226,227,230,221,228,229,4031,4029,3941,4731,4736,4737,4738,3915,3916,4739,4740,3919,3928,4047,231,233,254,4761,4043,4753,4730,4733,4968,4972,4760,4762,4754,4979,4061,4488] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1959,1422,1423,2366,2367,1494,1944,1495,1420,1474,1974,1975,2980,1992,1993,1431,1444,1445,1734,2377,2381,1744,1514,1729,2351,2363,2369,2352,1990,1991,2892,2893,2894,2394,2397,2972,2979,2870,2263,2971,2374,2969,2372,2383,2389,2401,1417,1419,2407,2403,1721,1704,1710,1412,1407,1408,1773,1774] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [381,382,384,675,678,670,653,654,671,672,415,701,1578,1309,1310,1311,1565,1290,1291,1292,1287,1293,1294,703,704,1273,702,1295,1296,1304,1597,379,380,385,386,619,620,352,349] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3740,3742,3743,3062,3768,3769,2773,2774,2775,2777,3058,3063,2755,2753,3270,3066,2812,2778,2781,2783,2785] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2069,2070,2103,2272,2273,2274,2275,2045,391,379,380,385,386,388,2079,421,2280,703,704,2279,2289,1273,1283,381] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1685,1688,1683,1166,1379,1380,1386,1393,1354,1835,1365,1368,1353,1847,1164,1378,1187,1188] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1997,1992,2996,3002,3003,3004,3005,3006,2037,2976,2992,2993,2994,2837,2025,2026,2027,2028,2001] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [670,654,667,1309,1310,1311,1256,1254,1296,1305,1312,1583,1597,661,663] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [263,265,286,4750,4770,4771,4751,295,293,321,322] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
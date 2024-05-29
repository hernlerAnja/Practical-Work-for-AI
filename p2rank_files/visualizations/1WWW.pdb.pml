
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
        
        load "data/1WWW.pdb", protein
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
 
        load "data/1WWW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1837,1840,1841,1842,1843,1852,587,600,601,602,808,809,810,1655,592,956,957,968,979,984,982,1659,1656,2270,2263,2267,2268,1277,2274,2269,2260,2261,2080,2082,991,992,996,997,1293,995,2480,1825,1824,2465,1853,2103,2243,574,939,1860,1862,1865,2071] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [794,797,789,1464,1459,1458,1460,1667,1666,1668,2625,126,435,121,124,3045,3046,3050,3051,3053,3052,2643,139,3263,2608,2645,3060,3057,798,2612,2605,2620,98,99,110,2623,119,114] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [747,730,733,740,735,736,737,1012,2501,2502,1015,229,230,2300,2292,2293,2294,646,1221,1223,718,1229,1251,1253,749,644] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1096,3282,1504,1576,364,366,390,1605,1607,1503,391,392,393,395,371,1598,155,3076,156,158,3077,3083,3273,3274,3280,1087,1088,152,154,151] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3050,3051,3044,3052,2635,2636,2854,2884,1469,1470,2865,1445,1450,1458,1460,2625,2624,2626,81,82,3026,2886,2620,1431,1432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2298,2007,2009,2005,2042,2309,2078,2047,2066,2067,2092,213,218,232,233,234,240,241,243,235,2283,2301,2308,2278,226,630,2257,766,767,2081,2265] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3055,2875,3091,3092,2873,2790,2825,2792,2849,2850,2861,2830,3040,3048,1084,1090,3084,3081,1091,1092,1098,1099,1624,1625,1488] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1500,1584,382,384,1581,311,309,312,314,315,1183,727,1184,327,325,1192] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1620,1046,1057,1065,1062,1285,1468,1629,1636,1641,1642,1643] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [612,783,784,785,610,771,762,443,444,427,167,188] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        

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
        
        load "data/1NQL.pdb", protein
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
 
        load "data/1NQL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2039,2034,2036,2038,1749,1763,1764,1765,1770,1772,1733,1774,1747,1752,2019,671,672,657,658,942,673,1738,659,471,1729,1732,1723,1717,2160,282,285,284,2023,2029,2031,2032,2033,2035,2164,2027,2044,2045,5,30,483,281,269,270,469,470,670,2173,2131,2159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [57,61,62,4875,4872,4873,4874,4919,2178,2182,2183,51,54,49,219,183,214,215,218,221,4942,41,42,4950,4939,69,110,70,186,187,190,192,184,154,56,60,230,159,160,309,158,193,326,348,4912,4921,4923] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2686,2687,2688,2689,2662,2428,2421,2429,2433,2434,2435,2457,2469,2705,2478,2456,2458,2437,2626,2468,2470] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4266,4281,4312,4292,4313,4267,4295,4296,4297,1949,1888,1924,1934,1937,4253,4255,1947,4234,4024,4025,4144,4145,4259] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [532,534,4757,535,4758,337,339,530,531,4738,102,133,796,4773,791,798,4753,4760,4743,4769] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1046,1376,1379,1383,855,858,1036,1037,848,849,1283,1284,1270,1272,872,575,1364,1413,1405,1382] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2961,2962,3733,3734,3203,3704,3705,2954,2979,2980,3232,3711] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2145,2160,2154,2144,1856,1861,2019,2018,1840,1996,1839,1835,1850,1763,1765] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3810,3807,3808,3809,3790,3791,3806,3759,3832,3749,3754,3758,3257,3744,3738,3743,3725] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1771,1772,1734,1774,1697,1811,1795,1796,1797,1723,1711,1717,1729] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4282,4284,4302,4534,4215,4217,4390,4397,4408,4216,4285,4412,4289,4288] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [4943,211,4963,4965,4844,4850,4851,146,185,147,108,106,107] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
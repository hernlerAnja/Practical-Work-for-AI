
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
        
        load "data/6S9X.pdb", protein
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
 
        load "data/6S9X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1817,1973,1981,1982,1983,1836,1837,1881,1839,133,1838,1302,1751,1752,1810,1815,1812,622,624,1984,1306,625,627,1253,1254,1301,1299,1996,1997,1998,2000,2002,2003,130,132,2069,1856,641,642,643,657,610,620,621,609,616,2013,1828,118,1829,1805,409,1799,1800,1801,1783,1784,623,626,628,1785,1786,611,656,658,655,662,122,614,2008,2009,117,151,2017] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [416,418,280,2173,296,299,294,2165,405,406,2184,120,122,674,97,98,676,121,2163,2168,2193,2195] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [910,911,1043,1044,1059,1180,1182,1073,956,958,934,935,936,1164,1181,1419,914,1400,1402,913,1375] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1463,1465,1470,1896,3114,3116,978,996,1067,1493,1496,1488,980,3155,3153,3152,3154,3150,3100,3099,3109,3111,1485] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [132,2069,1856,2070,2071,2074,2077,1987,1988,1996,1997,2000,2003,1985,2020,1837,1881,1839,1880,1838] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1495,1496,1868,1994,1896,995,996,1989,1992,993,992,1975,1880] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [117,151,2017,2012,663,666,1030,2030,2013,115,118,662,119] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2202,2207,2709,2210,2208,2188,2198,2199,2189,392,2183,2185,365,366,2206,2213,2217,2746,2748,2701,2705,2774,2752] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1452,1454,3058,1958,1960,1961,1910,1911,1913,2960,1450,1457,1468,1458,1453,1920,1919,1451] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2814,1709,1729,1732,2938,2913,1707,1711,2893,2894,2895,2813,2935] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [295,2185,309,310,368,369,372,247,275,248,249,229,232,308,345,346,361,362,363,364,293,273] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        

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
        
        load "data/4NNX.pdb", protein
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
 
        load "data/4NNX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1729,1966,1968,1908,1927,235,2755,2756,2757,2454,2687,2758,2759,214,215,2660,2661,2665,251,254,1947,1948,2657,41,43,237,238,239,26,230,1737,1722,67,68,212,209,210,225,227,228,233,213,2776,1928,1929,2452,2763,2769,2773,1935,1936,1937,1938,2797,2799,2649,1736,1738,1909,2696,2697,2699,2700,2701,2717,2737,1901,1902,1904,2291] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1673,3045,3059,2362,2356,2359,2365,3069,2333,1672,1688,1674,2347,2355,1687,2360,1543,1544,2320,1976,1977,2331,2337,1671,1559] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2787,2654,2655,2767,2518,2514,2503,2504,2521,2515,167,303,164,317,2506,188,2677,2663,2668,2676,2674] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [788,789,3123,570,571,573,574,538,566,569,572,596,565,809,3127,3113,3115,3120,3109,3118,3119,3095,3094] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [41,42,43,924,238,26,66,68,797,798,227,2687,2696,2697,2701,2702,2705,2706,1738,799,923,944] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [666,667,726,142,121,739,725,118,104,105,106,157,158,635,636,637,641,642,610,612,753] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1722,1723,1724,2154,2155,1498,2,5,8,9,2156,230,1715,1467,1483,1484,1474,228,229,231,1,17,19,1473,1475] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [294,295,341,558,578,579,580,150,589,308,309,307,156,155,147] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1948,1942,1949,1950,1711,1712,1714,1957,1505,1506,1459,1460,1461,245,246,1462,1463,393,400] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1688,1689,1685,1686,1687,1693,2360,2361,1523,1525,1934,1977,2337,1946,2351,2353,1690,1526,1694,1956] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
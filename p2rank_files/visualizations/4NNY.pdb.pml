
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
        
        load "data/4NNY.pdb", protein
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
 
        load "data/4NNY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2755,2757,2752,2753,2681,2754,2756,2660,2663,1727,1964,1966,1946,1947,1952,41,42,210,213,214,215,2685,66,67,68,795,43,212,236,237,238,26,235,251,253,254,255,2664,1945,2450,2452,2771,2761,2655,2658,2659,2767,2774,1925,1926,1927,1934,2795,2797,1935,1936,2647,1902,1907,1909,1906,1899,1900,1901,2289,2694,2695,2697,2698,2699,2715,2465,2467,2735,920,922,2700,2703,2704,797,917,918,941,942,826,827] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1541,1542,2353,1685,2354,2357,2358,2326,3067,2335,2329,2331,2345,1686,1974,1975,1670,1669,1671,1672,1557,3043,3057,2360] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2765,2501,2502,2506,2513,2519,2511,2785,2516,2652,2651,2653,317,2503,2504,86,164,162,2674,2675,2668,188,2672,2661,83,2666,167,303] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1461,1940,381,246,409,1457,1458,1459,1460,390,393,399,400,1946,1947,1948,1955,1710,1504,235,245,1712,1709,1711] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [155,174,307,308,150,580,589,294,295,579,341,558,157,158,578] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1721,2153,2154,1482,1713,1720,1722,1465,1471,1472,1473,1496,229,231,8,1,17,19] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [667,636,641,642,639,610,635,637,157,158,612,104,105,739,118,106,725,142,753,666] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1271,1273,1241,3117,3118,3119,1239,1261,3097,3114,3104,3101,3108] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1686,1688,1691,1692,1687,1683,1975,2335,2329,2345,2353,1685,2359,1944,2351,2349] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
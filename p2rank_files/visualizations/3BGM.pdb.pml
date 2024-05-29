
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
        
        load "data/3BGM.pdb", protein
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
 
        load "data/3BGM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1914,1933,1934,1935,1971,1973,1974,2470,2472,67,2700,2775,2777,2705,2774,2776,2773,211,213,215,247,251,254,256,250,1954,1953,1960,2675,2678,2679,2680,2683,2687,2791,2794,1941,1943,1942,1944,385,386,388,233,236,235,241,1956,246,238,1732,66,26,41,43,68,227,209,2787,2667,2815,2817,1915,2714,2717,2718,1910] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1675,1677,1982,2348,1546,1547,1690,2364,2372,2373,2376,2354,2345,3087,3046,3063,3072,3077,2350,1676,1672,1673,1674,1562,3075] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2521,2524,2531,164,165,167,2695,99,186,188,307,2677,2671,2672,2673,2804,2694,2522,2539,2785,2805,2536,2533,2686,2688,2692] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [791,789,790,938,577,570,573,574,575,576,578,599,3127,3130,540,542,568,543,3112,3141,812,813,3107] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [397,404,1464,1465,1466,235,241,245,1492,1956,246,1954,1953,1948,247,385] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [672,150,614,645,640,646,104,105,157,118,121,122,641,670,668,757] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1907,2717,2718,2733,2734,2735,2487,2755,2485,1908,1910,2306] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [276,277,365,519,484,517,269] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
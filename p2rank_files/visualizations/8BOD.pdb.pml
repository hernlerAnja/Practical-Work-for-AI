
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
        
        load "data/8BOD.pdb", protein
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
 
        load "data/8BOD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2260,1029,1323,2259,1356,1359,1030,2434,2437,2450,2451,2453,2447,2454,2455,2456,2452,892,2449,2438,330,553,528,1311,526,527,1271,1341,1343,1312,1274,254,559,561,331,557,842,1403,1376,1345,229,231,232,251,228,245,1413,1409,1456] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2438,2439,2441,2039,872,2038,2040,873,890,935,1962,2425,2434,2437,2424,2412,1011,1030,838,839,840,835,842] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1759,1760,1764,1758,1821,1825,1842,1826,2342,2359,1843,997,1883,980,982,2364,2327] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1978,2022,2786,1979,2788,2790,3941,2780,2784,2802,2770,2771,2772,1991,3916,3918,3934,3938,1918,3954,2803,2806,3920,3919] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3044,3087,3088,2977,3162,3163,3165,4365,3533,4320,4322,3531,3490,3475,3513,3526] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3274,2863,3342,3344,3346,2860,2602,3286,3288,2601,2509,2643,2576,2640,2598,2600,3290,3289,2528] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3139,3199,3328,3136,3198,3200,3476,3166,3134,3428,3408,3409,3410,3411,3412,3414,3429,3413,3426] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
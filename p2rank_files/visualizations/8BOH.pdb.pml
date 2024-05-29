
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
        
        load "data/8BOH.pdb", protein
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
 
        load "data/8BOH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [247,248,251,533,1340,1352,1372,895,896,897,1341,1374,1370,2473,2483,2486,2488,2485,847,843,845,840,875,844,842,349,350,562,564,558,1303,531,532,1300,565,566,264,270,273,2460,2490,2491,2492,2296,2295,1035,1034,1016,1385,1388,2461,2470,2474,2487,2489,2448,877,2068,1991,940,2477,2067,2069,1442,1432,1438,1405,1485] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1789,2400,1002,985,987,1788,1793,1787,2363,2378,2395,1850,1871,1872,1912,2399,1854,1855] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2007,2008,2840,2842,2844,4103,4110,2838,2856,2857,2860,2834,2824,2020,4123,4107,4070,4082,4085,4087,4088,4089] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3367,3368,3364,3366,3420,2697,2694,2652,2654,2655,2656,2563,3422,3352,2630,2917,3424,3926] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3142,3591,3604,3614,4477,4479,3241,3243,3568,4523,3031,3141,3240] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3244,3406,3488,3489,3490,3506,3507,3491,3530,3536,3554,3504,3486,3487,3277,3276,3278,3212,3214,3217,3219] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
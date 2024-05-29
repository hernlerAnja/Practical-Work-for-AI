
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
        
        load "data/6THZ.pdb", protein
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
 
        load "data/6THZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3373,3377,3378,3379,3380,2632,3393,2519,2630,2631,2850,2503,2853,2861,2633,2855,2856,2417,2516,2517,2518,2536,2837,3279,3372,2735,3295,3296,3371,2882,2734,2385,2386,3244,3260,3261,2398,2396,2595,2629,2597,2598,2592,2369,2361,2362,2363,2364,2365,2368,2415,2416,2871,2873,2875,2880,2877,2366,2367,2375,2382,2372,2374,2381,3271,3272,2909,2933,2894,2900,2901,2908,2887,2888,2881,2972,2942,2980,2319,2320] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [216,222,747,227,214,221,223,224,249,251,250,351,619,621,622,623,352,441,217,218,219,220,644,640,337,618,620,628,336,617,675,676,1038,1046,1063,1138,1139,1140,648,649,667,668,1062,545,647,655,700,228,1146] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1520,1521,1528,1506,1770,1750,1758,1761,1548,1573,1574,1763,1582,1800,3766,3787,3786,3801,3802,3803,1791] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        

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
        
        load "data/5W84.pdb", protein
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
 
        load "data/5W84.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3255,3260,3261,3262,2660,2736,2759,2732,2733,2743,2734,2441,2439,2440,2527,2539,2414,2416,2425,3153,3253,3254,3177,3176,3178,2400,2401,2402,2404,2406,2407,2395,2394,2757,2756,2397,2399,2791,2815,2790,2786,2782,2783,2762,2560,2561,2719,2738,2812,2813,2824] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [233,234,236,227,1216,261,262,263,239,281,381,745,746,770,1108,1109,1116,1208,1209,279,280,698,367,229,231,712,711,687,690,688,689,691,737,738,1131,1132,573,1133,718,714,717,725,1098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1592,1593,1880,1586,1861,791,793,794,1608,1601,3646,3653,2836,2838,2839,3923,3925,3638] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1627,3916,1608,1626,1628,1641,1642,3631,3644,3645,3646,3653,3883,3886,3888,3875,3881,3673,3698,3699,3697,3925,3638] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1608,1628,1599,1600,1601,1653,1654,1838,1871,1841,1843,1830,1836,1662,3686,3687,1674,3688,1802,1593,1586,3671,3672,3673,3689] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [361,322,323,324,38,346,347,348,597,595,598,594,19] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
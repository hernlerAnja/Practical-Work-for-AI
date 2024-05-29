
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
        
        load "data/3IKA.pdb", protein
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
 
        load "data/3IKA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3853,3560,3561,3562,3599,3586,3587,3588,3589,3693,3584,3597,3598,3614,3692,3694,4796,4798,4790,4793,3854,3855,2620,2621,2607,2622,2806,3184,2689,2690,3182,3183,2624,2618,2637,2642,3836,2646,3705,3706,3707,3714,3709,2651,2649,2625,2626,2668,2669,2645,2656,2670,2633,2634,2629,2630,3585,3244,3219,3215,3220] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [721,722,608,609,1168,386,1244,1245,232,384,213,214,215,1153,233,182,180,181,187,188,369,738,184,1251,1252,1253,512,1242,210,212,190,193,726,740,774,1169,1139,766,767,798,743] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2840,2925,2921,2954,2956,2957,2958,2920,2860,3821,3824,2640,2918,2923,2924,2946,2643,2837,2644,2653,2654,2823,2841,2648,3552,3721,2646,3730,3797,3798,3799,3727] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [906,907,908,909,910,911,2322,2324,869,870,875,879,880,881,1193,948,810,809,846] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1426,1730,1731,1589,1449,1592,1814,1623,2005,1858,1852,1853] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
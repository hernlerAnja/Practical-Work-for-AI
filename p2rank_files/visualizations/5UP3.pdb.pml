
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
        
        load "data/5UP3.pdb", protein
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
 
        load "data/5UP3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1670,1698,1665,1699,1690,1691,1692,1693,3671,3685,3692,1668,3689,1663,1643,3592,3628,3553,3555,3556,3559,3566,3593,1362,1370,3667,3648,1661,3617,3620,3621,3622,3623] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [145,147,305,678,681,670,148,143,144,700,705,697,149,150,156,201,202,203,1195,320,1194,526,1190,1191,659,1189,527,1105,1106,656,663,658,682,704,1079,163,1196] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3139,3138,2185,2186,2187,2191,2192,2193,2189,2559,3222,2560,2707,2190,2711,2696,3123,3223,3224,3227,2198,2205,2244,2245,2691,2362,2364,2692,2347,2730,2733,2714,3112,3118,2737] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [824,771,772,799,773,774,775,776,778,1149,1118,1124,1125,1126,1127,871,881,883,848,849] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3432,3403,3404,3406,3013,3015,3892,3898,3025,3906,3408,3889,3894,3893] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3182,3157,3159,3181,2905,2915,2807,2809,2811,2882,2916,2902,2904,2808,2805,2806,2857,2881,2832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3446,3663,3664,3560,3562,3309,3627,3668,3344,3653,3654,3661,3625,3334,3371,3600,3340,3341,3330,3327,3331,3308,3307,3301] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
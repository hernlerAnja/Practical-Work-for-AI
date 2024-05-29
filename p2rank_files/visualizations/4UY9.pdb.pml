
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
        
        load "data/4UY9.pdb", protein
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
 
        load "data/4UY9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2931,2932,3606,2695,3048,3043,3044,3446,3470,3471,3605,3455,3612,3613,3614,3472,2579,2581,2583,2603,2602,2580,2604,2706,2707,3028,2586,2587,2710,2711,2713,2714,2717,2577,3027,3681,3626,3627,3655,3656,2836,2839,3709,3710,3654,2578,3660,3662,3663,3664,2806,2810,3623,3615,3617,3618,2865,2866,3609,3610,3607,3608,2548,2549,2555,2550,2551,2552,2553,3065,3060,3062,3064,3086,3095,3068] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1064,705,706,1073,1089,1088,1218,1219,1220,1227,1226,1228,136,135,141,142,128,671,673,675,126,178,273,679,1090,659,542,177,179,288,286,287,289,652,653,124,125,127,130,697] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [640,654,655,543,474,476,444,155,289,1305,1221,1232,1218,1220] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1790,1781,1785,1741,1775,1527,1524,1791] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4160,4165,4166,4032,4033,3933,3902,4295,4293] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [294,189,320,607,622,55,57,615,617,612,613,93] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4022,3763,3972,3108,3111,3447,3448,4014,4015,3764,3142] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
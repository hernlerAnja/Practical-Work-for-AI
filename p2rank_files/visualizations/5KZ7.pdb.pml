
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
        
        load "data/5KZ7.pdb", protein
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
 
        load "data/5KZ7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2529,2481,2527,2528,2475,2479,3545,3546,3469,3081,3470,3060,3053,2898,2899,3032,3034,3039,2629,3057,3051,3550,2644,3552,2643,2645,3035,3551,3083] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3862,3859,1230,1268,1266,3888,3573,3574,1489,3639,1484,1490,3858,3637,3635,1475,1483,1513,1514,1204,1205] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1095,706,708,698,1094,524,254,664,97,685,678,682,268,269,270,1178,659,99,154,92,93,152,153,253,1170,523] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3392,3558,3394,2827,2818,2850,3539,3540,2890,2891,2892,3304,3305,3422,3332,3300,3331,3378,3388,3391,3387] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [481,482,483,484,530,531,2030,465,472,2013,532,550,2340,2342,2343,2346,2093,2336,2039,2366,2364,2054,2257,2258,2050,2052,2239,2259,456,533] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2907,2906,4706,4709,4712,4708,4732,2856,2857,2858,2859,4400,4404,4702,4403,4463,4388,4394,4397,2905,4624,4680,4623,4416,4625,4398,2831] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3446,3097,3098,3100,3437,3093,3095,3137,3127,3129,3781,3806,3820] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1409,723,725,1434,752,1222,1070,1224,1448,1062,754] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1191,1192,269,417,138,118,284,285,286,327,352,384,386] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1016,930,925,957,924,1165,1164] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
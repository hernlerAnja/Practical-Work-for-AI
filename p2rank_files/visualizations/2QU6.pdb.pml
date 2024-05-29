
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
        
        load "data/2QU6.pdb", protein
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
 
        load "data/2QU6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [200,1368,1369,223,342,704,699,700,1349,1351,1354,472,504,584,357,358,198,201,204,203,718,716,721,350,354,682,724,730,747,748,751,1272,1273,1350,758] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3478,2884,3477,3554,3556,3003,2883,2998,2999,2771,2981,2983,3050,3023,2461,2462,3015,3017,2623,2622,2631,3046,3047,3010,3020,3571,3573,3574,3558,3564,3565,2493,2635,2638,2639,3559,2458,2459,2492,3054,3057,2803] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1195,1187,496,1182,1146,531,1183,530,1355,472,577,503,505,1357,494,465,469,497,1199,1201,1343,1193,1145,1340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2876,2802,2804,2830,2766,3545,3551,3548,3560,2768,2769,3562,3404,2883,2771,3556,3350,3398,3400,3388,3387,3389,3392,2795,2796,3351] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3497,2892,2602,2601,3500,3492,3007,3540,3541,3012,3031,3493,2861] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3228,3230,3518,3195,3087,3089,3123,3124,3043,3044,3045,3490,3486,3502,3511] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2077,2088,2093,1528,2071,2074,2076,2081,1149,1150,1152,1151,1519,1518] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
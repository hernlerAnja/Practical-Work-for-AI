
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
        
        load "data/7P7G.pdb", protein
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
 
        load "data/7P7G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3482,3485,2985,2989,2990,3015,3387,3388,2493,2495,2446,2440,2492,2601,2603,2719,2443,2444,2971,2972,2966,2969,2970,2977,2947,2948,2586,2952,2494,3346,3368,3345,3357,3358,3359,3360,2452,3361,2456,3486,3487,3491,3493] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1016,1018,76,122,123,124,125,233,577,578,70,71,72,74,601,600,216,607,599,82,86,89,94,231,1114,1117,1120,347,349,1121,1122,1123,103,105,348,998,619,987,1017,1115,602,615,645] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1849,1852,1853,1854,1856,1940,1975,1913,1942,1946,3799,1851,1914,1915,1973,1974,4385,3856,4372,4378,4388,4382,3812,3773,3774,3645,3647,3648,4356,3764,3766,4358,4355] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3796,3802,3804,3677,4077,3669,3673,3794,3795,3801,3784,3786,3779,3782,3789,4104,4075,4100,4102,4103,4110,4101,3708,3709,4106,4068,2106,2104,2133,2134,2138,2139,2099,2144,3800,2175,4117] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4664,4666,4648,4665,3393,3400,2983,2984,3408,3432,3433,3434,3022,3023,4651,4653] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [960,1121,1122,1123,1145,1144,1146,975,976,998,86,89,93,94] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1404,1658,1806,1829,1999,1840,1845,1555,1871] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
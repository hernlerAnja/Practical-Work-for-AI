
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
        
        load "data/6BGT.pdb", protein
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
 
        load "data/6BGT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2055,2071,3304,3309,3518,3520,3079,3310,3105,34,35,36,3519,3543,3311,3312,3313,3320,2150,1998,2080,2082,2149,3532,3533,3535,3534,25,28,3531,21,22,20,26,30,33,211,2049,3517,2052,3081,3083] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [6411,6961,6963,6575,6965,6968,6969,4105,4349,4341,4345,6598,4210,4218,4219,4104,4106,4223,4227,6413,6572,6574,4334,4312,4331,4332,4336,6995] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [6980,4917,4402,4404,4405,4919,6973,4421,4516,4424,4440,4441,4443,4540,4541,4544,4545,4546,4547,4522,6985,6997,4316,4319,4954,4941,4947,4949,4951,4517,4913,4915,4926,5248,5249,4921,4318,4500,4772,4419,4417,4409] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3115,101,107,3113,3124,116,111,112,3144,3335,3140,3142,136,141,142,104,115,62,137,139,2903,2905,3183,3116] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2378,2379,2590,2403,2404,2588,2597,2869,2412,2162,2206,2213,2595,2596,2593,2201,2192,2198,2167,2174,2152,2155,2158,2146,2156,3084,3098,2161,2361,2362,2377,2338] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2884,3097,2885,3114,3116,2638,2606,2902,2637,2904,3108,3117,3123,3102,2388,2389,2393,2394,2391,2619,2460,2462,2435,2455] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4968,4969,4974,4976,4967,4403,7017,4390,7026,7028,4398,7027] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
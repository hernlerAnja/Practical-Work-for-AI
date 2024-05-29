
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
        
        load "data/6KYQ.pdb", protein
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
 
        load "data/6KYQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [841,843,855,2566,2567,5888,908,910,5959,851,907,906,2689,2690,7656,2129,2540,2529,4803,2555,2563,853,964,2719,856,4802,4843,2613,2623,2624,2568,2625,2651,2615,2579,5891,2580,2581,2576,2633,7593,7614,7604,7605,5901,5903,5957,5958,5960,7574,7567,6003,2616,2618,7728,7167,7757,5906,7578,7617,7619,7689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [824,871,760,891,892,893,894,1272,6323,6347,6345,6348,1270,707,708,705,706,873,665,938,1341,1344,5874,1005,1241,887,889,5943,936,937,5757,5758,6322,5756] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2954,2955,2961,2601,2966,2013,2967,2987,2984,2985,4036,2016,4046,2014,4050,2026,1949,1951,1953,4039,4040,4062,2965,2980,2012,2842,3951] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2150,2152,2184,2151,2501,4847,4848,2183,2216,2233,2217,2539,4846,4909,4865,4862,4831,4832,4718,4720,4775,4776,4777] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [7253,7254,7255,9758,9757,9770,7305,9730,9731,6569,6572,9614,9615,9627] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [7189,7221,7222,7271,7539,9815,9756,9813,7254,9758,9946,9947,9884,9900,9869,9870,9879,9886,9903,9814] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4577,4586,4588,4589,4683,4686,4692,4719,4720,4693,2215,2216,1522,2217,1519,1573,2267,1509,1510,1515] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [8005,7999,8003,8018,9077,8023,8025,7052,7054] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2040,2041,2077,1025,1026,2044,2583,5890,5841,5843,5892,953,5888,951,964] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [7340,7342,7343,5585,5584,5606,5583,5603,6497,6487,5626,7341,7357] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
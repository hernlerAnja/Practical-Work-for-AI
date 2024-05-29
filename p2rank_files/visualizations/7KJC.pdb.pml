
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
        
        load "data/7KJC.pdb", protein
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
 
        load "data/7KJC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2419,2446,2651,2652,2496,2495,594,595,854,824,1339,1620,1632,1670,2658,2662,2663,2664,2665,2673,1137,1136,1138,1192,855,856,857,1621,1722,1765,1718,1712,496,509,492,1668,1665,1669,539,2771,2773,2786,536,510,515,517,518,526,532,554,556,557,2732,2734,2793,2790,2787,2691,1075] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [8514,6593,6951,6610,6616,6620,7794,7806,7817,7807,7813,8591,8590,8749,7760,6577,6578,6580,7763,6919,7727,6678,6679,6949,7764,7860,7861,7862,7795,7859,5994,6576,6579,7780,8541,7285,7287,7435,7715,7716,6952,7232,6950,8762,8765,8766,8767,7233,8747,8761,8776,6623,6638,6640,5986] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [5733,5734,5735,5736,10604,5811,5809,5807,5808,9788,9789,10579,9786,10577,10592,9268,9265,9745,9743,9746,10642,10656,10658,9330,9332,9335,9379,9378,10659,9477,9728,9769,9782,9757] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3584,3587,3608,3508,3509,3510,3900,3913,3917,3607,3399,4773,4708,4710,3877,3876,3874,3888,4789,4735] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [8660,8661,8136,8079,8084,8135,8129,8130,8131,8178,8179,8195,8682,8683,8647,8678,7386,7388,7403,8196,8174] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [5827,5829,5874,5875,5876,5880,5881,5884,5806,5825,5828,5941,5087,4921,4922,5075,4210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2041,2043,2602,2045,2036,2034,2035,2040,2598,2583,2588,2552,2565,2566,1291,1293] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [5492,9392,9393,9394,5477,5905,5861,5907,5485,5490,5491,5457,5472,5475] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [8626,7742,8683,8651,7385,7387,8712,7731,7728,7455,7456] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2420,2422,1754,1828,3498,2817,3420,3518,3521,3522,3523,3504,3505,3547,3497,3007,2818,2819,3525] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3834,3565,4151,3285] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
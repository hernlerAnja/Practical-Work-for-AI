
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
        
        load "data/5LSP.pdb", protein
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
 
        load "data/5LSP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9009,9013,9016,7122,9018,5686,5689,5692,5695,5696,5697,5682,5691,7482,9004,5714,7121,7123,5619,5624,5625,5629,5677,5678,5588,5614,5698] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [5014,5023,5492,5007,5122,5124,5127,5139,5283,5284,5287,5295,5299,5300,5301,5024,5298,5314,5238,5136,5137,5142,5475,5476,5478,5017,5479,5480,5481,5482,5483] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2553,6668,6669,6672,6673,6676,6677,2542,3759,3760,3761,3762,3766,1714,7516,6682,3767,2555,8720,8721,8727,8728,1723,8640,8645,8722,6684,3684,3676,3679] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4052,2161,2521,4055,4057,4048,730,2524,734,735,725,731,2166,635,665,2162,663,716,717,658,736,737,653,721,668,627,4060,4059] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [8734,8747,8748,8644,8775,1934,1944,8582,8583,1894,1907,8911,8601,8918,8890,8892,8763] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [323,338,161,163,277,175,176,182,334,531,337,62,166,178,339,340,326] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [7443,7446,7448,7449,7454,7444,3768,3769,7440,7441,7506,3749,3756,3763,3764,3757,8676,8673,8674,8675,8677,8672,8687] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [514,515,516,517,518,519,520,522,58,46,53,56,166,163,531,353] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2488,2493,2485,3742,3743,3745,3726,3725,3711,3714,3715,3717,3749,3762,8729] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
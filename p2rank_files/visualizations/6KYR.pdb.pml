
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
        
        load "data/6KYR.pdb", protein
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
 
        load "data/6KYR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [841,2566,843,855,5860,5858,5859,907,910,5771,5772,7556,2565,2128,2533,2535,2528,4686,905,906,966,2554,853,917,964,856,2610,2612,2614,2615,2622,2623,2624,2578,2625,5774,5776,2650,2562,2575,2632,7493,7501,7504,7505,7472,7473,7474,7506,5786,5787,5788,5790,5857,7467,9624,5856,5903,5914,5916,7627,7628,7067,7657,2617,7478,9666,9664,9665,7514,7517,7518,7519,7589] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [9000,8989,8990,8996,6891,9012,7923,7924,7925,8901,7904,7873,7892,7893,7894,7899,7903,7918,6951,7905,6952,6955,6887,6889,7874] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [7439,9670,7122,9730,9598,7154,7155,7121,7156,7171,9540,9597,9599,9542,9729,9684,9653,9668,9669,9654] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4057,4073,2986,4050,2960,2964,2979,2984,2015,2013,1950,1952,2966,2012] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2150,2183,2500,4729,4731,2182,2232,2215,2216,2538,2735,4791,4792,4748,4658,4659,4715,4601,4603,4724,4745,4714] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1005,5639,1241,893,5640,894,1272,5641,6247,1240,1242,5637,6222] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2493,4614,1419,1418,4632,925,984,626,624,1383] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
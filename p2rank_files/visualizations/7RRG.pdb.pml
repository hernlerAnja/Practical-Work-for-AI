
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
        
        load "data/7RRG.pdb", protein
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
 
        load "data/7RRG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [227,236,238,210,211,212,213,214,215,241,247,40,66,67,68,1709,1879,235,1933,1935,1936,2638,254,2637,251,2642,1897,1895,1896,1903,1922,1904,2753,1906,2750,2634,2774,2776,1916,1915,250,43,42,803,2678,2664,2673,2674,2676,2677,2735,2736,1872,1876,2431,2429,2732,2734,1877,2683,2685,2686] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [5145,5146,5147,5149,5323,5148,5329,4776,4777,5821,5890,5891,5888,5895,5896,5897,5124,5344,5845,5846,5650,5643,5647,5924,5925,5633,5923,5339,5340] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1670,1944,2324,2325,2332,2333,2336,2337,2305,2308,2310,2339,3031,3022,3005,3041,1656,2297,3036,1654,1655,1551,1652,1653,1535,1536,1651,1669,1533] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3364,3365,3366,3368,5159,5319,5320,5321,5306,5315,4774,5323,5322,5160,4776,5822,4527,5650,4759,4760,3345,5180,3373,3370,4770,4771,5307,3367,5300] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2653,2744,2764,2651,2745,167,2630,2631,2632,2481,2498,2495,164,188,2654,99,2483,2636,2647,303] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4235,4239,4240,4245,5791,5795,4228,5811,5812,5813,3704,3896,3898,3902,3705,3680,3681,3683,4243,5782] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [142,106,108,117,109,118,751,101,104,105,158,641,611,638,642,636,637,643,726,740,665,667,668] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [5596,5460,5462,5594,5609,5608,4367,4369,4053,4021] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
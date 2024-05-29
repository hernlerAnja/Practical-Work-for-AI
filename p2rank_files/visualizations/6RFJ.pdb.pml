
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
        
        load "data/6RFJ.pdb", protein
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
 
        load "data/6RFJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2938,2380,2381,2382,2429,2374,2375,2376,3300,2427,2428,2906,2378,2885,2893,2878,2880,2515,2876,2886,2887,2882,2386,2387,2394,2396,2397,2913,2914,2907,2909,3301,2899,2905,2937,3276,3277,2977,2985,2333,2935,2947,3377,2740,3376,2855,2856,2741,2858,2860,2861,2866,3284,3382,2531,2859,2857] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [205,209,210,216,217,219,250,252,201,202,659,251,218,221,353,354,1165,638,640,641,642,338,637,639,636,694,1158,690,563,1081,1082,1157,564,666,663,667,1057,1058,1065,719,695,687,204,197,198,199,203] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [221,1165,223,1164,1166,232,234,1188,219,1030,1066,1065,1046,1047] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1560,1584,1533,1586,1585,1812,1531,1532,1762,1773,1775,1793,1518,1770,1803,1525,1540,3771,3772] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
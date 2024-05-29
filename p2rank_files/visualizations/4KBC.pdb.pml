
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
        
        load "data/4KBC.pdb", protein
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
 
        load "data/4KBC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2523,2524,2525,2616,2629,2720,2631,2633,2934,2965,2474,2971,2948,3490,2953,2946,2967,2970,2949,2753,2754,3492,3493,3488,2973,2972,3359,3394,3491,3496,3497,2978,3016,3393,2479,2482,2486,3499,2469,2470,2476] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1149,253,255,1137,1147,147,599,585,600,1038,1040,631,618,621,629,146,236,238,597,237,616,604,251,145,123,119,121,1009,1039,637,1134,1145] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1699,1791,1792,1793,1794,1700,4448,4449,1754,2804,2798,2802,2803,1826,2795,1818,3201,3202,3211,3235,3237,3239,3229,3228,3200] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1767,1768,1809,1810,4594,4595,4596,4597,4598,1443,1451,1452,1453,1777,1778,1781,1783,1784,1785,3171,1780,1457,1845,3444,3448,4593,1819,3177,3180,1816,4513,3169,4584,4485,3147,3150,3168,3146,3137,3138,3143,3144,4577,4488] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1359,1767,1768,1809,4596,4598,4599,1443,1436,1458,1338,1446,1739,1777,1782,1737,1741,1345,1350,1352,1769,1772,1774,1356,1744,4573,4572] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1864,1863,1881,2595,3410,3411,2954,2958,2599,2593,2594,2847,3413,2962,2959,3433,1860,3435,3436] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [636,1052,635,2336,2338,674,675,2351,1086,1045,1046] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
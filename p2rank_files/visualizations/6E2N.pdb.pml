
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
        
        load "data/6E2N.pdb", protein
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
 
        load "data/6E2N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [143,144,145,147,148,201,150,305,202,155,156,162,163,203,1215,688,692,696,699,681,676,677,722,1124,1097,1108,715,700,545,1123,1206,1207,1208,1209,1212] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2788,2240,2241,2243,2244,2765,2769,2773,3196,2787,2791,3197,2618,2754,2761,2401,3279,3280,2795,3170,2796,2252,2246,2299,2298,2750,3281,2747,2749,3285,2772] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1140,1137,686,1192,1193,685,1139,1174,1176,1175,515,1165,3224,3225,1152,2782,3213,1164,3223,3233,3237,3238,2759] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1508,2002,2005,2006,1485,1486,1988,1482,1484,1489,1965,1964,1974,2007,2019,1010,1000,1478,1476,1480,998,1481,1483,1473,1462,1472,1270] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1152,2763,2782,3213,1151,1161,1164,3247,3249,3237,3238,1140,1139,2757,2758,2759,3265,3266,2588,2774,2775,3248] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3465,3467,3990,3471,3493,3973,3984,3469,3071,3073,4002,4003,4004,3996,3992,3987,3991,3083] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
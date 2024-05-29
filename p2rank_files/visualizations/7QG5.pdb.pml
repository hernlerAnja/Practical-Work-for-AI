
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
        
        load "data/7QG5.pdb", protein
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
 
        load "data/7QG5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2933,2934,3297,2407,2929,2919,2925,2926,2900,2905,2920,2396,2398,2399,2897,2899,2401,2402,2404,2406,2449,2414,2415,2416,2902,2906,2886,3320,2535,3296,3321,3396,3397,3304,2907,2447,2547,2549,2448,2955,2958,2997,2395,3005,2967,3002,2353,2913,2759,2761,2875,2876,2877,2878,2879,2880,2881,2657,3398,3399,3402,2551] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [218,224,225,228,258,259,260,360,362,648,650,358,206,774,212,213,215,1070,1071,1095,1078,1094,1170,1171,1176,1177,1179,1172,1173,727,703,698,702,207,209,210,346,665,667,669,644,646,645,647,671,674,675,676,688,694,695,570,571,655,736,682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1579,1580,4049,1594,1593,3786,3806,3779,3831,3832,3778,4019,4021,3830,3771,4058] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2414,2417,2418,2421,3285,3304,3269,3286,3297,3528,3521,3522,2430,2431,2426,2428,2429,2427,3405] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1606,1553,1580,1823,1782,1793,1795,1605,1560,1552,1790,1802,1545,1538,3805,3806] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [750,4056,4057,1830,1831,1832,1545,748,751,2981,2982,3771,4058] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        

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
        
        load "data/4KAO.pdb", protein
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
 
        load "data/4KAO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1161,1162,1163,1164,1093,1173,1176,1177,1178,1179,1180,1094,703,704,705,289,452,453,454,290,423,426,1167,421,444,177,178,179,273,287,288,652,653,655,659,673,119,122,671,676,695,121,123,1168,1171,1023,446,138,131,527,532,533,1155,450,960,1157,1159,959,1021,479,481,483,1004,1006,534] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2328,2164,3216,3217,3218,3219,3220,3221,2695,2692,2693,2575,2326,2327,2466,3204,3207,2493,2494,2329,2210,2211,2212,2313,2699,3133,3134,2744,2745,2156,2716,2735,2152] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2486,3044,3046,2521,2999,2458,2459,2462,2461,2484,2485,2488,2490,3226,3211,3057,3059,3061,2181,2464,2465,2466,2463,3204,3207,3208,2492,2493,2494,2567,3197,3201,3202,3199,3063,3203,3225,3209,3210,2491,2572,3220,2575] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2384,2383,2385,2387,891,1922,2407,2409,2419,509,518,520,901,898,862,922,890] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1375,1410,1378,1213,1658,1517,1519,1610,1652,1657] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3415,3416,3418,3834,3618,3650,3836,3682,3698,3692,3450,3253,3557,3559] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
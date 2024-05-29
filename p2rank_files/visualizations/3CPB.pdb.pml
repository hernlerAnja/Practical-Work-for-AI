
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
        
        load "data/3CPB.pdb", protein
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
 
        load "data/3CPB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3052,3044,3045,3048,3513,2512,3514,3609,3610,2513,2651,2655,2657,2490,2492,2493,3590,3591,3592,3595,2769,2488,3055,2643,3001,3008,3018,3022,2996,2641,2642,2979,3021,2881,2882,2997,2802,2981,2800,2801] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1380,206,1363,1366,350,352,484,481,187,189,190,730,336,728,205,335,1285,1381,1361,1362,1284,732,759,760,736,763,348,694,696,339,344,716,596,733,711,712,516,185] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1367,1368,1370,481,1199,509,1363,484,482,1359,1358,1211,1209,1205,1207,1352,589,1157,1158,543,1194,1195,596,1355,516,479,515,517,508] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3584,3586,3587,3588,3589,3592,3595,3596,3442,2769,2764,2766,3599,2874,3581,2802,2881,2800,2801,3386,3387,3440,2828,3423,3424,2793,2794,3434,3436,3428] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2621,2622,3533,166,158,2619,2620,3559,2859,2889,3002,3010,3527,3528,3529,2628,3005,3576,3577,3560] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [756,757,758,800,802,837,1003,1293,1309,1318,1323,1324,1325,1310,981,982,983,836,978,988,1037,980,979,754] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3621,3622,3658,3659,3068,3069,3484,3486,3487,3879,3105,3927,3920] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1255,1258,783,784,1646,1425,1426,820,1683,1690,1693,1687,1689,1701,1412,1694,1413] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4251,4249,3943,3945,3810,4090] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        

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
        
        load "data/6RSU.pdb", protein
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
 
        load "data/6RSU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [244,245,246,248,345,568,344,1438,262,263,268,285,286,599,346,601,319,1472,1487,1470,1484,1452,2299,2298,2521,2522,2534,1127,1532,2256,2300,2535,2536,1520,1521,1488,1489] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4716,6568,6570,5891,6548,6493,6495,5892,6494,4746,4747,5623,5627,1775,5625,5626,4723,4728,5078,4715,4704,5881,3876,3893,3865,3854,3827,5927,6455,3867,6433,6432,3903,3907,3927,3896,5904,5907,5910,5076,5077,5622] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2542,2545,2569,2570,2571,2573,2565,896,2572,2536,2519,2531,1109,1125,2551,2552,1439,957,1164,958,960,1020,961,1399,1401,600,601,307,637,639,641,911,913,838,686,735,306,308,1167] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4057,1888,4011,4400,4401,4439,1889,4440] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4411,4458,4479,4414,4410,4359,4361,4357,1904,1906,1970,1959] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1563,1565,2688,2689,2224,2244,3051,3049,3117,3118,2687,2705,2707] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1888,4011,4400,4401,3940,4439,1889,4440] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3814,3815,3845,3598,3599,3816,3579,3580,3031,3105,3172,3104,3085] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1646,1663,1676,1661,1662,8509,8435,8436,8437,1650,8395,8326] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2134,2886,2145,2883,2162,2149,1989,1988,4289] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
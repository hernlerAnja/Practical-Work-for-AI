
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
        
        load "data/7A6K.pdb", protein
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
 
        load "data/7A6K.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4258,4420,4256,4259,4291,4290,4255,4261,4746,4748,4419,4433,4711,4713,4729,4730,4292,4435,4436,4437,4727,4728,5237,5238,5239,5240,5142,5157,5158,5128,5244,5247,4782,4783,4751,4752,4775,4776,4778] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2284,2286,2285,2427,2429,2431,2423,2241,2244,2245,2243,2246,2414,2718,2711,2694,2712,2714,3128,3222,3225,3220,3221,2790,2762,2766,2767,3114,2735,2759,2760,3143,3144,2713,3219,2732,2736] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [681,683,687,688,1045,711,1075,1152,1153,1150,1151,1158,196,197,340,334,338,195,144,145,147,148,146,616,618,632,522,639,1074,653,657,651,656,680,634,635,325,324,323,615,1059,179] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [6439,7170,6311,6312,6313,7245,7246,6441,7169,7140,6454,6716,6456,7247,7248,7251,6736,6282,7154,6440,6754,6758,6740,6733,6734,6735,6277,6279,6752,6757,6781,6782,6784,6788,6281,6789] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4227,4219,2235,2278,2279,2450,2453,2254,2253,2210,2437,2438,2439,2440,2236,2296,2297,4211,4706,4185,4186,4685,1837,1838,1835,1836,2462,2674,4446,4690,2212,4182,4183,1856,1857,4213] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [7453,7454,7456,7857,7719,7714,7862,7859,7595,7487,7679] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [5878,5879,5491,5875,5877,5880,5729,5599,5600,5457,5460,5689,5312] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3696,3856,3858,3701,3861,3581,3706,3442,3662] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
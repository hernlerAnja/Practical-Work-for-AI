
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
        
        load "data/5CQW.pdb", protein
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
 
        load "data/5CQW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3254,3358,3255,3373,4158,3751,3359,3735,4159,3189,3190,3192,3769,3770,3773,3754,3750,4131,4160,4260,4257,4259,4268,4267,3239,3201,3595,3725,3726,3728,3730,3731,4261] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1452,1455,1454,1353,1354,1355,1462,449,405,448,450,570,404,952,950,788,921,922,923,924,925,926,1456,568,790,1463,408,1326,946,949,553,554,387,930,920,391,384,385,388,390,392,964,965] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4125,4116,4117,4118,4127,4425,4426,4459,4460,4126,4676,4728,3808,3798,4445,4733,4734,4737,4739,4447,4128,4134,4136,3799] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1457,1478,1479,1480,1481,1487,1489,607,609,414,421,422,424,426,427,1299,1460,1461,1463,585,420,586,590,681,570,1462,640,643,608,651] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [4283,3487,4284,4285,4286,3486,3413,3414,3446,3375,3391,3219,3239,3226,3229,3231,4265,4266,4268,4267,3374,4104,4292] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1321,1322,1926,1320,1323,994,1329,1313,1315,1621,1654,1655,1620,1640,1642,1871,1924,1928,1932,1934] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
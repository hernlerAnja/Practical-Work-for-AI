
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
        
        load "data/3O2M.pdb", protein
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
 
        load "data/3O2M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1517,1524,1786,1787,1784,1527,1536,1794,1796,1780,1790,1792,1795,1818,1538,4966,4967,4968,1782,4965,1781,1785,1415,1987,1996,1985,1986,1991,1995,2023,2025,1988,1532,4509,4510,4516,4517,4496,4503,4506,4515,5002,5004,4974,4970,4999,4511,4975,4765,4762,4761,4763,4760,4773,4775,4769,4771,4774,4766,4394,4764] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4175,3191,3843,3825,3826,3831,3832,3833,4199,3195,4200,3797,3339,3801,3813,3815,3817,3818,3819,3842,4274,4275,4276,3202,3206,3197,3198,3199,3240,3242,3352,3241,4284,3354,3355] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [261,263,212,218,219,220,262,214,216,360,822,829,834,836,838,839,853,846,847,852,248,818,1305,243,244,227,1198,1205,1296,1295,1297,1196,638,1220,1221,228,377,376,1197,854,855,864] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1158,1324,1327,1341,1342,523,1340,484,485,486,2733,2708,1377,1385,495,1386,1389,1393,1397,2713,1399,1400,494,1320,1322,1370,1371,1364,1367] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4346,4319,4320,4343,4356,4321,3473,3474,4368,4370,4365,4137,4305,3465,4372,3464] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4524,4527,4935,4531,4528,4530,4488,4491,5379,5383,5384,4549,4550,5377,5388,4937,4552,4551,5385] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1383,1380,1382,4357,4358,4359,4361,4363,4379,1384,1399,1400,4345,4346] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1723,1734,1715,1699,1700,1729,1731,1733,2148,2154,2165,2150,2141,1877] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
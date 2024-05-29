
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
        
        load "data/3RPS.pdb", protein
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
 
        load "data/3RPS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1316,1317,1319,405,1444,382,384,385,393,423,438,394,373,374,376,956,542,543,379,437,439,541,912,914,909,557,1441,558,559,969,972,1344,953,1343,1342,1443,777,919,939,779,945,951,970,1315] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4160,3597,4261,4259,4262,3732,3373,3375,3376,3377,3206,3207,3205,3256,3257,4161,3360,3730,3757,3759,3194,3756,4267,4268,4270,4263,3208,3733,4271] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4128,4129,4461,4734,4120,4122,4427,4428,4447,4449,4429,3808,4134,4135,4136,4137,4138,4139,3222,3221,3223,3203,3220,4270,3809,3810] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4106,4267,4268,4270,4269,3231,3233,3236,3234,3203,3219,3224,4262,3375,3376,3377,3240,3241,3393,3206,3257,3489] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [565,889,874,549,822,838,833,836,550,292,293,317,318,340,341,342,567] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4576,4611,2889,4584,4585,4588,4570,4578,5413,4040,2899,5461,5455,5458,5460,5438,5465,5470,2872,2876,2883,2871,2900,2886] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1629,1631,1609,1643,992,1318,1320,1304,991] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4341,4343,4339,4362,4363,3029,3031,3002,3040,3041,3011,3009,4308,4309,4310] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2212,2214,2153,2152,2257,2219,2120,2122,2253,2283,2246] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1906,1907,2389,2387,1932,1927,1934,2069,2033,2058,2036,2034] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1523,1525,1544,1545,211,213,221,223,222,184,1490,1491,193,200,201,202,191] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
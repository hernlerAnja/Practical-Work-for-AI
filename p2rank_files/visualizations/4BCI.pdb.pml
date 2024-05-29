
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
        
        load "data/4BCI.pdb", protein
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
 
        load "data/4BCI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [225,204,226,167,168,169,171,173,206,175,719,720,721,333,729,745,742,744,346,347,348,349,350,496,723,724,725,603,1232,1233,1234,1237,1238,1240,1133,1141,1156,770,774,775,776,777,749,748,762,763,1157,754,529,1247,1241] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3566,3567,3600,3542,429,431,437,380,381,382,379,378,403,404,685,675,677,671,672,673,674,3560,3535,3538,3510] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [4086,4151,4148,4128,4144,4065,4067,4093,4311,4210,4220,4222,4240,4310] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1193,894,896,2484,2485,2487,895,2501,862,864,845,850,1164,1165,801,1169,767,769,802,1192] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2747,2748,2745,2711,2710,2712,3936,3954,3938,3933,3939,3927,4384,4385,4387,4383,4386,4382,4417,4419,2618,3944,2591,2616,3979,2619,2774,3945,2737] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3639,3013,2514,2561,2563,3651,4005,3960,3670,4004,3663,3656,3661,2973,3012,3666,3667] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2551,3054,65,66,2531,2572,2574,2575,3042,2675,2606,2632,2611,53,64,3046,2649] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1120,1125,1130,1436,1434,1129,1696,1422,1424,1697,789,807,1644,1677,790,815,1122,1134] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3841,4103,4105,4509,4510,4511,4531,4534,4535,3813,4537,4112,4115,3811,3812] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
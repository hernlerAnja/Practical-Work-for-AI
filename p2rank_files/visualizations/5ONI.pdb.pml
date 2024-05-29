
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
        
        load "data/5ONI.pdb", protein
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
 
        load "data/5ONI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4156,4272,4269,4273,4274,4277,4281,4271,3785,4143,4170,4171,4172,3742,3743,3605,3607,3370,3369,3371,3747,3738,3740,3737,3201,3202,3204,3762,3782,3769,3778,3766,3781,3207,3200,3210,3265,3267,3266,3383,3385,4280,3251,4278,3386,3387,3499,3212,3213,3221,3222] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [910,911,912,913,914,915,542,543,909,777,779,941,437,438,439,557,559,1452,1446,1444,1445,1449,1450,778,1441,1443,394,423,558,1315,954,957,1342,1343,1344,379,384,385,393,374,376,377,938,372,373] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3810,3811,3818,3819,4149,3820,4147,4148,4140,4459,4740,4741,4742,4743,4744,4457,4745,4746,4751,4749,4471,4130,4138,4139,4472,3842,3845,4685,4686,4687,4690,4688,261,263,4437,4132,267,269,280,266] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [313,493,494,495,324,480,503,4781,4783,4778,4866,4735,4739,4732,4736,4795,4796,4797,798,799,804,807,479] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1631,1913,1629,1918,1860,1320,983,982,1914,1915,1304,1609,1318,1643,1310,1311,1644] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [236,711,712,238,688,4821,4823,231,240,243,227,244,170,175,720,164,165,709,4812,4813,4806,4811,4446,4447,4791,4802,4803,4805,4799] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [660,1491,1278,624,605,607,634,1571,1574,1478,1598,1585] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3461,4296,3386,3387,3498,4279,3243,3238,3241,4280,3251,4304,3460,3225,3403,3425] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3848,4695,3987,4180,3958,3943] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4459,4739,4743,4751,4781,4783,281,313,279,278,266] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [213,212,222,193,191,1523,1525,1491,1492,1545,196,203,210,184,201] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1841,1867,1352,1159] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
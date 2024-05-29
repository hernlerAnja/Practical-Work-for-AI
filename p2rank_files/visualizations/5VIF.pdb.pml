
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
        
        load "data/5VIF.pdb", protein
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
 
        load "data/5VIF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1413,1414,5502,1401,1412,1095,1096,1378,5493,5500,5501,857,858,1382,1385,5506,5510,856,1071,1072,1368,5505,5489,5481,5482,852,1127,860,853,874,1125,1126,892,597,831,865,830,943,1073,1036,1039,3920,3936,3937,3938,3939,3948,3949,3919,3917,4169,4172,4174,4175,4183,3912,1900,5484,5487,5490,4581,4582,5479,5488,5494,5495,4176,1398,4554,4573,1404,2661,2662,4575,2643,1403,4153,5475,4384,4386,4389,4429,1899,1921,1923,4404,4406,1902,1903,1907,1931,2635,2641,4402,4398,4399,4584,4589,4567,4571,4577,3910,4572,4590,4432,4433,4434,4610,3896,4430,4431,2961] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1585,1586,1588,2524,2525,1584,1618,5511,5512,5514,2496,2467,2469,2516,1594,1562,5509,1385,1387,5510,1560,1565,1567] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [5092,5093,5095,5097,3076,3077,3348,5091,4648,5063,5064,5058,5059,5060,3154,3151,3336,3342,3346,5068,5067] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [950,952,974,1081,1054,1056,1058,1109,1212,1213,1214,953,972,1208,1173,1174,1207,1211,1166] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1894,5486,1893,2477,2478,2480,2483,2484,1861,1860] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1378,1411,1409,1091,1446,1447,1072,1368,1063,1062] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [4586,4587,4588,4589,3911,4525,4510] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2678,2516,2514,2440,2515] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
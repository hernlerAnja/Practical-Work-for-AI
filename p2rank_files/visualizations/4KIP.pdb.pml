
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
        
        load "data/4KIP.pdb", protein
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
 
        load "data/4KIP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1305,1304,1225,822,837,840,841,842,861,223,225,564,1321,1323,1324,641,226,227,230,236,237,266,562,563,553,524,526,374,375,529,1314,1306,1307,1311,1312,1335,235,1313,1317,555,800,817,265,359,835,371,373,803,818,801,858,1202,1204] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3449,3466,3471,3467,3024,3025,3178,3021,3023,3450,2886,2919,2920,3489,3484,3009,3486,2891,2890,3959,2887,3853,3953,3957,3958,3963,3964,3965,3290,3507,3955,3490,3491,3956,3986,3211,3212,3213,3173,3175,3968,3202,3974,2882,2883,2879,3510] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4410,1114,1127,1128,1129,2407,2409,2410,2419,2420,2427,2395,2401,4433,2404,4306,4297,4296,4701,4696,4698,4690,4406,4432,4444,4316,4285,4286,4287,4295,4324,4311,4313,1118,1126,2434,2431] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3618,3619,3914,3883,3887,3541,3540,3542] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2385,1075,1077,1079,1112,1115,1103,1104,1105,1111,1508,2219,2220,2231,2221,4332,4333,4334,4337,4335,4409,4340,4344,4377,4378] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2314,993,2317,995,2359,2360,2361,2362,2363,618,1021,1055,1056,1029,626,627,1031,1057,2312] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1665,1771,1748,1779,1780,2012] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3706,3707,3267,3275,3276,3708,5028,5029,3644,3680,4981,3672,4983,4986] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
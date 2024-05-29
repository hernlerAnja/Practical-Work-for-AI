
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
        
        load "data/5WBH.pdb", protein
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
 
        load "data/5WBH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1103,1105,1107,1152,440,1090,5462,374,5266,5281,5302,5303,438,1106,1109,5249,5264,5248,5250,5263,5268,5585,5584,5461,5586] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [7550,7551,7553,7606,7546,7549,7603,7604,7608,7479,6404,6405,6344,7481,6367,6345,6482,6484,6485,7473] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4484,4485,4486,4487,4488,4489,4483,3418,3419,4406,3277,3278,3295,3338,3339,3416,4413,4415,4537,4538,4539,4540,4541,4542,4543,3294] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1340,1341,1363,1364,1365,1367,1286,1287,297,298,299,294,296,181,218,219,1293,1295,157,158,159,1417,1420,1418,1419,1421,1422,1423] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [5816,4070,5819,4071,5720,5870,5871,4021,4446,5776,5794,5798,5713,5715,5717,5795,3995] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3892,3895,3940,3824,3881,3891,3941,5967,8004,8006,7950,7953,7921,3883,7955,7957,5977,5916,5966,6038,6039,6040,6041,5979,5603,5604,5554,6042] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [6624,7293,6622,6623,6625,7226,7159,7214,7215,6691,6692,6693,6742,6744,7162,6672,6621] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4148,4149,3552,3554,3627,3628,3629,3556,3557,4228,4091,4161,3676,4093,3678] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2638,2639,2640,2636,2655,809,2623,596,650,662,611,613,595,597,808,932,931,866,871] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3770,3928,3731,3782,4052,3985,3986,3987,3991,3716,3717,3929,3672,3735,3675,4051] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
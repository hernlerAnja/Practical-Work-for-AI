
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
        
        load "data/1EV2.pdb", protein
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
 
        load "data/1EV2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [92,94,666,4055,900,4088,4053,103,104,105,799,4027,4030,4031,4032,4051,4121,95,4095,4082,4135,4084,4083,4140,4136,4139,4125] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1646,5564,1064,1066,1067,5538,5498,5525,5527,5475,1075,1872,1873,5494,5496,5497,5531,1076,1077,5582,5583,5579,5568] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3038,8502,8521,8415,8416,8537,8538,8539,3037,3619,3620,3870,8410,8475,8476,8506,8463,8515,8517,8464,8465,8520,8533,8438,8440,8442,8434] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2039,2040,2869,2870,2871,6937,6935,6960,6901,6907,6906,6929,6933,7034,7001,7012,7015,7016,7028,7033,7032,6958,6959,6971,7010] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4230,4236,4239,4310,4335,4391,4392,4332,4319,4327,4240,4241,4409,4407,4408,4252,4246,4249,2679,2691,2681,2682,4306,4323,2677] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [6983,6989,6223,7586,7589,6196,6197,7582,6980,6984,6222,7590,6192,6194,6195,6201,6221,6203,6206,2606] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [5550,5556,5551,7615,7617,7619,7616,7618,6159,6163,7614,7623,7643,7645,1635,7611,7620,7625,7628,6167,6164] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4752,4753,4754,4755,9093,4781,8485,8488,8489,8494,4779,4780,9090,9094,3609,4761,4764,4750,9086] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4348,4350,4276,4351,4354,4297,4274,4275,4527,4284,4271,4295,4353] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
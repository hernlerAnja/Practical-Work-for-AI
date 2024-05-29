
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
        
        load "data/3SKJ.pdb", protein
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
 
        load "data/3SKJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5977,196,199,200,201,704,5982,6951,703,215,195,5675,5671,5967,5972,5684,5661,5664,5665,701,6968,6966,6954,6959,6955,705,2495,231,5976,5106,5107,7005,7007,5655,6988,6995,7001,707,710] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5310,5311,5699,5698,191,193,194,195,5967,5963,6360,6361,6186,184,5975,5976,6187,5949,6403,6405,6199,6203,6404,5948,5962] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [5244,5245,5381,5394,5243,5403,5423,5424,8660,8650,8648,8649,8651,8652,8657,8656,5382,5857,5840,5844,5851,8666,8667,5760,5761,5836] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4556,4575,4557,68,60,72,4540,63,4561,4572,1101,4816,4817,4516,4517,4519,4814,4749,4748,4774,4775,4776,4777] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [881,884,886,888,1593,891,897,1591,894,1599,1606,2716,2721,2727,2733,2737,2739,2736,2761,2725,907,2712,2715,2718] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [406,407,2453,387,2463,7065,7074,7073,388,6892,6894,6905,6902,7061,7051,6943,7053,7052] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5221,5769,5770,5776,5777,5778,8620,8621,8480,8481,8459,8460,8461,8453,5218,5220,8654,8655,5222,5224,5223,5225,5226] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5186,5786,5770,5787,5789,5790,5791,5023,5181,3781,3782,3787,3789,5785,5902,5903,5892] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6315,6316,6452,6303,6300,6296,6297,4643,4644,4645,4656,4401,4408,4660] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1288,1052,1311,2967,1044,1051,2949,3104,2948] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2434,2435,2437,2438,2440,2439,2552,431,424,425,430,432,2551] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [8134,8371,8760,8368,8364,8367,8544,8546,8389,8564,8551,8552,8759,8390] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [7636,7591,7595,7596,7624,7626,7161,7575,7578,7554,7556,7558,7523,7524,7509,7513,7953] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1240,1241,1242,4488,4511,4512,1113,1115,1106,1117,1120,4865,4864,4927,4928,1205] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
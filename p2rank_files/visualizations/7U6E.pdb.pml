
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
        
        load "data/7U6E.pdb", protein
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
 
        load "data/7U6E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6070,6071,5838,6069,7171,7172,5851,5852,5853,5854,5855,6781,6782,6783,5856,6772,6678,7170,6677,6841,6875,7253,6769,6771,7156,7255,7268,7277,6322,6333,6066,6085,6337,6099,6135,6315,6780,5866,5896,6108,5879,5898,6803,6804,6763,6330,6331,7176,7181,6354,6353,6658,6659,6329,6338,6326,6328,6332] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5542,5828,5810,5831,4468,4856,4857,4031,4858,4495,4496,4498,4469,4877,4897,4898,4032,4878,5811,5814,3969,3970,5813,4954,4964,4872,4321,4873,5546,4874,4862,4864,4344,4345,5343,5540,5543,5544,5545,3991,3993,3994,3995,3996,3989,4481,4010,4013,4018,4022,4023,3965,4006] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3498,3499,7207,7208,3728,6313,6317,7210,3496,3514,3725,3747,3723,3497,3726,7360,7387,7390,7363,7364,3517,7398,3231,7206,7420,7202,3232,3233,7385,7386,7391,3743,3746,3994,4003,4005,3974,3995,3996,3997,6311,6314,6315,6316,6318,6319,6320,6060,6061,6062,6288,3972,3965,6042,6286,6289,4006,5828,5829,5830,5831,5814] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [7438,7439,7440,1365,1577,1363,1364,6917,1361,1169,214,215,249,903,6929,6932,6606,6607,6608,6598,6600,6601,6603,7434,7435,7437,7443,7444,7477,7478,1578,6928,6922,1381,6927,7413,7412,6605,6913,6624,6912] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [858,7530,354,635,616,618,356,7497,2888,7495,1087,7531,7528,857,1076,2882,2910] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2859,2862,7458,3011,2888,7493,7495,7491,7531,7455,7481,7482,7483,7487,7488,28,7524,7521,7519,7520,7453,27,2844,2846,2843] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4719,4746,4720,4725,7799,5176,5157,5202,4585,7835,4588,4589,7879,7881,4583,7866,7863,7864,7865,7867,5158,4572] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5377,6812,6793,5384,5401,5403,5591,5608,5615,5607,5612,5572,5333,6809,6810,6799,6792,6796] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [422,2155,2156,406,387,2172,420,2379,2377,2327,2329,2343,2335] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4318,4319,4321,5547,5534,5546,5536,5806,5518,5519,4322,3970] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [7418,7457,7449,7450,7451,7453,7486,55,6587,6590,56,18,7455,7483,28,7458,7419,6619,7214,7215,7217,6620,3027] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [6936,6937,6992,6947,6949,6952,220,222,178,181,185,6579] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5377,6833,6793,5387,5412,5383,5384,5401,5403,5608,5615,5607,5612,6799,6792,6796,6794,6795] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
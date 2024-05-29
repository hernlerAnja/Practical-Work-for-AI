
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
        
        load "data/7K6M.pdb", protein
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
 
        load "data/7K6M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4742,4754,5436,5435,5915,5392,4779,4753,4739,4724,5997,5889,5898,5914,5411,4755,4758,6005,5272,5356,5375,5369,5373,5394,5363,5372,4800,4801,5367,4968,4969,5351,5352,5274,5994,5996,5998,5999,6002,5009,4989,5052,6003,6004] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [3899,3900,3863,4618,4617,4619,3894,3895,3896,3897,3898,3869,496,497,3616,3946,3578,3581,3582,3576,3579,3580,3608,3585,5116,1161,3584,3586,3617,5081,5118,5266,5267,5117,5260,5061,5055,5057,5058,5280,5283,5089,5292,4607,4611,5277,4605] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2444,2450,2452,2311,2447,2449,3699,210,2195,209,211,2230,2232,2217,2220,2224,2223,2456,4051,2455,2440,2193,4040,4042,192,193,194,195,207,3724,4043,4047,4050,4038,4017] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [6597,2346,2358,2361,2362,2379,6593,4003,6581,6640,2367,2364,2434,2440,3670,3672,3683,4019,6587,6589,2435,2438,4020,2166,3669,2413,2424,2425,2427,2428,2429,2430,2431,2414,4004] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5116,512,511,513,509,514,1220,1187,1190,5150,5151,5152,5153,5192,3566,5180,5191,551,552,1159,1160,1156,1193,1194,1197,5144,5244,5143,5145,5184,1227,5236,1217,5262,5263,5115,1198] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1198,4907,4904,1239,4640,4641,4908,4916,4918,1036,1053,1163,1166,1168,1170,497,1162,1197,4619] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [460,472,474,462,463,473,4623,1041,1353,1366,1044,4163,3856,4165,4154,4157,4189,4190,4191,1372,1373,3855,4156,4589,4590] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [5358,5359,5360,5361,4638,4640,4641,4919,4944,4916,4918,4914,4907,4596,4608,4610,4945,4948,5365,4616] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5303,5309,5312,4290,4264,4263,4265,4289,105,3962,3963,3958] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2217,2220,2452,2311,2449,2456,2303,2297,2299,2186,2298,2271,2189,2193,2187,2192] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3995,3996,5318,6593,6599,4002,3967,5311,5313,5016,5032,5033,5034,5015,5017,5320,3977,4004] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2662,3213,2683,3215,2661,3209,3243,3210,3223,3245,3426] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1372,1370,1388,427,428,4145,4156,4149,4152,1387,1389,1383,452,454,364,426,463] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [6561,6655,6657,6559,3378,6585,6582] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [5007,5013,5008,5009,6018,6003,6004,6019,6020,5010,6613,4759,4768,6005,5856] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5344,4603,4961,4657,4831,4830] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
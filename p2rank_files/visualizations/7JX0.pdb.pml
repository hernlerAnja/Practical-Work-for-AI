
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
        
        load "data/7JX0.pdb", protein
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
 
        load "data/7JX0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4767,4907,4888,1057,1059,4764,4765,4766,4768,4904,4281,4921,4924,3302,4706,4742,461,462,4743,3237,3260,3261,3265,3263,3573,3623,3574,3575,3576,3577,3578,3579,3543,3544,4291,4294,4295,4296,3622,3621,4927,4937,4792,4793,4794,4795,4864,4868,4869,4828,1082,1083,1081,1091,4763,4789,4791,4790,4796,4797,4858,534,3271,3273,3274,490,1018,3241,4832,476,491,477,1016,1017,1051,1052,1055,1013,1042,1044,1046,4830,4831,543,4800,4801] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5010,5015,4615,4998,4408,4474,4616,5533,5634,5635,5637,4636,4658,4999,4418,4419,4452,4404,4914,5045,5058,5628,5629,5017,5548,5549,5020,5044,5630,4917,4918,5521,5626,5524,5003,4913,4915] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3533,3535,3891,3863,910,1217,1209,3865,3888,3890,3855,3856,3857,3881,4261,4325,3563,4301,4302,4259,4260,439,423,441,442,928,930,1180,3529,3531,424,4300,4305,3530,3537] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6162,6056,6159,6057,6089,6133,6134,6137,6119,2151,6087,6088,1506,6026,6032,3068,3092,3080,3081,3093,3074,3078,3082,2500,2489,2490,2496,2724,3043,2732,2759,2760,2756,3040,3041,6132,6125,6126,6129] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3685,3674,3681,2179,3686,3703,3705,3693,3694,1920,1922,2124,3678,6097,6098,6099,6100,4666,2166,6103,6104,6112,2165,3356,6092,6093,4683,2176,2177,2178,2185,4665,6091,2142,6109,6110] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [6049,6051,5460,5468,5666,6151,6152,6150,5641,5475,6115,4693,5663,6108,6106,6107,6081,6105,4724,4726,4690] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [6496,6497,6498,5107,5071,5099,5100,5104,5094,5096,5097,5128,5135,5137,5092,5125,6448,6455,6456,5136,6450,5134,6422,6424,5507,6453,5514,5517,5072,5508,5509] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3284,3285,5985,3008,4801,4839,3247,3248,490,489,3216,3249,6008,3000,3006,3009,3002,2989,4807,5983,3270] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3541,3542,3544,918,4295,4296,4305,4306,898,900,460,462,1029,1020,441,1056,1057,1059,1060,4297,1055,1012,1013,1014] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [177,183,3736,229,230,187,3734,3735,197,198,195,205,189,2215,2220,2209,3405,2207,222,224,219,2211,2214,1951] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4345,4208,4346,3949,3983,3974,4202,4200,4204,4250,4502,4248,4334,4223,4224,4225,3950] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2183,1847,2187,2188,1483,1830,1466,1846,2184,2154,2156,2196,1482,2148,1522] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4657,5533,5637,4636,4658,4427,4437,4434,4419,5532,5525,4424] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4435,4436,4437,4650,4428,4971,4423,4047,4643,4645,4048] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [5414,5415,5419,5600,5620,5621,5710] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
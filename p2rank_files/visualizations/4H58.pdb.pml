
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
        
        load "data/4H58.pdb", protein
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
 
        load "data/4H58.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [521,522,687,691,1091,1092,1093,1094,1096,1176,417,1179,1180,1182,275,686,692,638,442,443,129,658,660,177,128,176,178,131,132,134,136,140,141,260,637,268,272,274,620,1173,1174,1175,1190,1076,1065,1066,667,662,665,682,642,659] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2794,2630,2791,3194,3198,3202,3206,2789,2234,2237,2240,2767,2769,2751,2771,2775,2776,2774,2768,3165,3171,2796,2800,2801,2827,2828,2287,2383,2384,2385,2381,2285,2286,2526,3285,3284,2551,2631,2525,2732,2746,2747,2369,2250,2246,3291,3292,3293,3176,3283] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4861,4862,4864,4869,4333,4863,4873,4881,4382,4381,5405,4884,4330,4332,5404,4841,4464,4846,4866,4467,4468,4465,5379,5385,5387,5380,5381,5412,5290,5291,4725,4726,4871,5373,4886,4889,4891,4896] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4733,4734,4851,5357,1114,1162,4702,1112,1108,1120,5356,5303,5307,5309,5314,5315,5339,5340,5341,1136,493,497,1145,527,529,646,647,510,485,495] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4880,5308,5317,1139,869,4448,4855,4856,4449,496,498,497,506,901,1145,1146,505,899,868,900,902,4879,4450,4452,4442,4445,922,894,887,5309,1162,490,504,895,885,886,919,920] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4701,4710,4709,5094,5095,5096,674,675,676,248,5063,5097,5064,5330,5115,5118,238,5085,5084,5086,1113,1121,1122,1123,1114,4702,5340,244,640,648,651,241,245,643] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4618,4621,5374,5367,5370,5361,5368,4645,4614,4637,4647,4717,4638,5195,5200,5157,5158,5206,5208,5210,5213,5212,5214] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [5391,5392,5411,5425,5465,5464,5421,5429,5377,4353,5390,5376,5271,5231,5232,5233,5250,5539,5542,5249,5398,5400,5538] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2672,2497,2499,2671,2673,2687,2720,2688,2693,2685,2506,2502,2474,2531,2532,2533,2668,2670,2507,2508,2695] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [80,79,283,593,97,600,616,570,571,63,594,76,83,598] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4287,4486,4775,4267,4268,4301,4798,4284,4280,4283,4820,4806] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
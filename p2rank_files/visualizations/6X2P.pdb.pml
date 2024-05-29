
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
        
        load "data/6X2P.pdb", protein
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
 
        load "data/6X2P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1043,1045,1072,1085,1086,1084,752,4761,4762,4739,4448,4449,1081,782,784,785,818,819,817,4422,4426,4420,816,847,4039,4040,4041,4487,4489,4005,4006,4456,4490,4418,4457,4458,751,790,4050,4038,4052,787,791,825,3983,3975,1073,1075,4793,4790,4791,4792,4486,4488,4037] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [236,239,240,241,243,247,250,924,925,119,229,80,83,84,86,106,94,95,98,105,102,107,111,112,113,114,264,459,259,468] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [532,533,801,802,803,804,3655,824,542,544,3222,3633,531,530,543,3259,794,837,800,3281,3224,3247,3250,4081,4014,4079,3686,3711,4015,3280,3282] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [3834,3839,3857,3826,3827,3446,3448,3477,3858,3806,3779,3804,3449,3927,3670,3956,3957,3958,3934,3903,3466,3468,3475,3828,3831] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [702,9930,9934,9943,78,738,739,761,9512,9494,9944,9495,9496,9497,9498,9913,9915,473,481,471,485,477,478,479,480,9918,75,79,80,82,84,85,86,76,77,770,771,242,244,925,665,684,710,685,676,678,9909,9936,9938,488] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [10673,3282,3279,3717,3720,3681,3707,10638,4076,4086,4090,4089,3710,3685,3711,3281,4096,4095,10718,10719,4115,4116,4118,4119,10674,3324,3325,10694] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6746,6749,6751,6717,6718,6719,6720,7072,7073,6745,7100,7069,7127,7129,6753,5971,6364,6365,6366,5968,5980,6396,6750,6727,5979,7094,7091,7071] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7501,7503,7702,7703,7704,7708,7714,7706,7372,7975,7712,7713,7976,7474,7932,7933,7936,7938,7942,7472,7434,7462,7437,7438,7464,7399,7401,7463] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [120,205,206,207,220,1167,1163,118,119,219,211,242,924,925,236,239,240,95,86,94,922,923,940,948,1169] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [1269,5579,5580,5188,5152,5189,1134,1267,1232,1111,1258,1261,1292,1294,1296,1337,1339,1262,1265,1305,1260,1340,5566] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1143,1119,1121,1140,1141,1006,1195,5986,5987,5599,5600,5628,5586,1025,1005,1125,1136,1115,1205] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [848,850,851,852,3589,3590,3919,3591,3592,4426,4388,4424,4364,3975,3951,4394] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [2061,2160,1788,2060,2062,2468,2559,2338,2340] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [9740,9727,9734,9735,9738,9729,9708,9709,9710,9704,9781,9771,9373,9374,9376,9711,9378,9782,9353,9356,9357] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [9858,9865,9866,9869,9871,9835,9856,9857,9896,10361,10322,10323,10321,9836,10360,10350] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [859,5166,5171,1307,5164,864,870,873,1272,1306,1090,5195,5223,1097,1098,1103,1104,1110] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [3880,3910,3863,3862,3865,3866,3869,3870,4295,4331,4269,4298,3844,4336,3884,3889,3909,4374,3879,4301,4306] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [9790,10037,9785,9752,9754,9743,9621,9821,9818] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [588,32,34,28,602,16,2861,2871,2873,2877,423,424,425] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        
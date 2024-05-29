
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
        
        load "data/4RIW.pdb", protein
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
 
        load "data/4RIW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5111,4801,5106,5107,5018,5090,5089,5524,5615,5613,5610,5614,5620,5643,5510,5156,5160,5161,5539,5540,5153,5132,5123,5129,5125,5621,4621,4622,4623,4669,4615,4617,4618,4619,4667,4668,5511,5513,5775,5776,5514,4641,4652,4816,4817,4818,4814,5092,4639,5777,4631,5747,4626,4627,4630,4655,4634,4997,4998,5185] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [6931,6929,7978,7980,6926,6928,6930,7100,7101,7102,6927,7971,7973,7974,7977,7862,7876,7891,7892,7972,7493,7497,7498,7522,7268,7269,6900,6948,6898,7098,6896,6897,6902,6903,6947,6949,7427,7467,7461,7463,7085,7490,7466,7444,7445] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3450,3444,3445,3446,3447,3448,2574,2575,2576,3454,3350,2919,2918,3365,2559,2572,2423,2404,2405,2400,2401,2402,2403,2399,2900,2422,2742,2743,2903,2901,2964,2967,2971,3336,3366,2937,2940,2935,2370,2371,2376,2377,2372,2374,2375] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1096,343,1191,1192,1193,341,342,1186,1187,1215,569,1082,1111,1112,570,1185,194,193,326,339,678,661,662,571,590,679,701,704,695,683,732,728,757,151,152,156,150,155,159,146,147,148,192,141,143,725,697,1085,1086] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5891,5909,5910,5911,5478,5647,5648,5669,5668,5789,5829,4651,5830,4649,5889,5856,5682,5695,5696,5698,5681,5687,5690,5684,5727,5728,4640,5676,5699,5700,5701,5473] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3499,2727,1788,2083,2084,2097,1789,2095,2037,2000,1783,1785,1786] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2721,2723,2724,2726,2727,1788,2701,3499,2725,1814,2647,2668,2669,1998,1999,2000,1785,2735,2699,2700,2696,2698,2690] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [599,596,671,50,598,232,235,237,595,27,319] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [7226,7227,7173,7192,7228,6526,6373,6524,6525,6523,6563,6312,6315] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [7979,7980,6926,6928,7101,7102,7119,7993,6925,6927,8001,8002,8003,7840,7199,7200,7212,7237,7995,7994,7203] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1192,341,1186,1187,1194,1197,1215,569,505,570,1185,664,571,590,679,339,678,661,662] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3914,3915,4047,4048,4191,4193,3773,4037,4194,4195] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5368,4984,4985,5311,5343,5346,6673,6668,6669,6678,5585,6660,6661,6658,5336,6667] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [7279,7249,7251,8022,8024,8025,7783,7286,7256,7261,7803,7804,7801,7779] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
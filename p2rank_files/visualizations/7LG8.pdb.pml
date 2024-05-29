
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
        
        load "data/7LG8.pdb", protein
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
 
        load "data/7LG8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5162,5163,5692,5693,5698,5690,5710,5610,5611,5691,4819,4666,4667,4618,5216,5217,5209,5212,5241,4615,4616,4619,5168,5186,5187,5182,4801,4802,4803,5180,5185,5699,5700,5703,5722,5581,5595,4630,4631,4643,4644,4645,4646,4648,4837,4816,4820,5147,5148,5720,5733,5734,4836,4928,4930,4924,4929,4896,4985,4986,4984,4951,5721,5735,5736,4926,4852,4853,5145,5067,5069,5070,5064,4812,5144] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2604,2605,2606,2417,3485,2451,2452,2453,2602,2949,2589,2947,2948,2954,2966,2404,2429,2431,2413,3381,3367,3002,3003,3397,2968,2971,3396,2994,2995,2998,3027,2639,2640,2428,2622,2623,2930,2931,2933,2934,2715,2655,2716,2681,2714,2412,2416,2408,2400,2401,2406,2407,2402,2405,3479,3486,3489,3507,3478,3484,3493,3495,2835,3476,3506,3508,3477,3496,2740,2737,2772,2773,2849,2769,2770,2853,2855,2856,2850,2712,2746] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1119,1134,1215,1105,1135,139,140,143,710,709,1223,344,687,1222,1214,343,327,692,189,190,191,142,704,715,340,740,741,765,732,733,736,716,717] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [7039,7040,7918,7919,7801,7830,7831,6841,6835,6836,6887,6885,6886,7911,7437,7461,7432,7436,7388,7400,7402,7407,6838,6839,7406,7429,7405,7382,7383,7021,7022,7023,7036,7032] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [7940,7941,7942,6868,7174,6866,7057,7056,7171,7148,7150,7074,7923,7287,7289,7290,7365,7367,7284,7177,7180,7368,7036,7363,7364,7146,7149,7204,7206,7283,7274,7039,7040,7918,7929,7930,7912,7913,7920,7910,7382,7383,7377,7381,7269,7270,7275] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [508,1257,1259,1245,510,669,671,336,340,1260,587,588,591,593,685,326,668,507,672,448,450,452,453,454,360,378,475,478,481,484,344,686,687,688,1217,1222,574,1214,1216,343,1234,1233,1224,573,1244,1246,1227] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [7654,7655,4591,4601,7241,4597,4602,4600,8679,7653,8678,7651,7652,7677,7678,7681,7713,7676,8649] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/4CFU.pdb", protein
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
 
        load "data/4CFU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [521,1107,1108,710,713,698,699,108,676,678,682,689,690,697,104,105,679,655,657,658,286,162,116,653,654,656,161,160,110,271,520,1079,1086,1091,1179,288,412,1180,1184,1185,1187,129] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5692,5693,5764,5664,5671,4690,5676,5247,5264,5267,5283,5291,5298,5240,5241,4861,4862,5765,5769,5770,5772,4716,5237,5238,5105,5106,4735,4736,4681,4684,4845,4682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [528,666,1166,7079,7080,249,1165,663,1124,1121,256,668,671,672,695,1136,1137,2386,1149,252,495,496,506,493,7058,7060,7081,530,7431,7432,7063,7064] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2931,3603,3787,2941,3606,2925,2933,2937,4457,3672,3641,1260,1259,3601,3607,3640,1257,1274,1276,1273,1264,3756,3733,4478,3761,3766,4452,3735,3759,2945,2946,2947,2948,1244,2938,2939,2940,4464,4466] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5139,5127,5136,5137,3079,3526,3494,4582,4585,4586,4630,4631,4789,5128,5231,5131,3070,3080,4825,4617,4620] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [7277,5859,8798,7286,8132,8133,8805,8807,7986,7987,7988,7951,5842,5849,5858,8017,8106,8101,8108,8113,8109,8793,8019,8102,8103,5844,5845,7953,7291,7283,7952] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5709,5734,5750,5751,6752,5256,5251,5721,5724,5113,2718,2719,5078,5080,5081,5252,5248,2712,2713,2714,2705,2710,3086,2734,4826] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1447,1448,1905,1903,1904,2235,2464,2236,1864,2228,1861,1468,1452,1464,1465,1474,2463,1461,2455,1411,2226,2227,1870,1875,1876,1877] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3598,3833,3954,3030,3896,3830,3831,3882,2660,2661,2996,2999,3841,2968,2972,2995,3580,3591,3932,3933,3002,3596,2643,3585,3880,3881,3910] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [4134,4137,2529,2530,2513,2515,2516,2517,2532,3689,3691,3688,3677,3690,2472,3678,2514,4130,4102] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [7943,8279,8280,8257,8301,7318,7945,8182,8188,8227,8228,8229,8178,8184,7927,7932,7938,7935,7937,7314,7348,7006,7007,7339,7341,7342,7345,8243,7376,7135,6997,8240,6993] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [6523,6524,6526,6431,6234,6235,6372,6420,6425,6429,6422,6556,6393,6394,6395,6369,6487,6488,6398,6400,6380,6486,6527] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [573,3519,4585,4587,4586,4588,4589,4592,587,588,591,592,3453,4582,3485,3487,3517,3518,4620,4604,4608,4613,3458,4611] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [251,543,57,215,9,10,551,7425,7426] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [6821,6867,6868,6869,6870,8027,6826,8484,7992,8025,8036,8038,8037,8024,7993,7994,7997] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3476,321,350,351,353,3445,3446,330,331,332,3482,3483,3484,590,592,320,603,3455,3458,359,323] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
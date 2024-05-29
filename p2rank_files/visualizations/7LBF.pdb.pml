
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
        
        load "data/7LBF.pdb", protein
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
 
        load "data/7LBF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [10394,10366,10390,10392,7356,10398,10401,7351,10397,10365,7164,7349,7346,7347,7312,7162,7153,7154,7155,7128,7125,7126,7112,7141,7110,7123,7100,7106,7109] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [6135,6134,9432,9433,9434,5807,5809,6121,6126,5799,7869,8470,8472,8517,7862,7855,7851,7835,8481,8538,9204,8535,8468,8459,5798,5800] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [542,6685,1742,1750,6646,6655,576,6619,566,567,539,693,1768,656,694,654,684,681,682,1744,1274,1275,568,569,530,534,570,544,1746] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1362,1363,1478,1479,1462,1569,1627,1628,1477,1238,1239,1249,1225,1252,1643,1234,1237,1493,1231,1554,1555,1568,1644,1244,1246,1265,1268,1240] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3378,3381,3836,3837,3838,3782,3784,3785,3744,3707,3709,3710,3377,3366,3372,3404,3405,3406,3795,3779,3712,3717,3742,3834] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2654,2655,2657,2658,2684,2685,2686,3809,3829,3454,2630,3049,3050,3413,3416,3453,948,949,3830,2199,2661,2197,2627,2175,942,2244,2245,2246,2177,941,943,3810,3811,3812,3813] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [3465,3467,3468,3471,3443,3445,4128,4129,3855,4109,4111,3110,3472,3492,2681,2683,2709,2744,2746,2706,2713,2714,2717,2745,2708,2719,4117,4124,4130,4127,4101,4102,4106,4107,2712] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [5297,145,5244,5245,144,280,5246,5383,281,5436,5447,5393,5394,5397,5398,5400,5483,457,460,450,464,465,453,468,5272,5269,5257,5250] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1052,1054,1077,1070,1051,1059,1064,14285,14445,15043,15044,2960,2962,2963,2971,2972,2973,14440,1025,1026,14481,14493,14456,14457,14442,14452,14492,1032,1030,1048] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3658,3694,3939,3909,4832,3656,3661,3662,3671,4843,4008,3971,3972,3966,3967,3968,3975,3976,3979,3932,3935,3937,4831,4827,4838] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1020,1014,1015,1011,1017,3250,3256,3286,3287,15061,14665,14659,14660,14655,15063,3252,15080,15083,15087,15088,15085,14654,14691,14666,14667,14668,14680,15068,14651,3251] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [15144,15138,15141,15142,15143,15149,15152,15145,15146,15147,3194,1061,1046,1060,15169,15170,15171] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [4844,4857,3345,4858,4859,5008,5010,4998,5005,3663,3673,3677,3341,3344,3644,3660,3665,3669,4843,4848,5009,5007] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8635,8637,7693,8605,8606,8607,8616,9029,9035,9030,7691,7718,7745,7748,7753,7719,7720,7721,8238,8636,8611,8615,8617,9047] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6526,5896,5928,5930,5923,5759,5780,5750,5754,6509,6510,6518,5723,5726,6521,6524] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [9238,8015,8037,8038,8683,9213,8722,8724,8864,8866,8692,9272] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [3559,3186,3550,3221,3223,3589,15134,15135,15136,15097,15098,15081] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2417,2266,2097,2061,2065,2382,2381,2418,2380,2264,2252,2253,2289,2390,2392] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
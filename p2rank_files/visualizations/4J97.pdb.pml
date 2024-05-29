
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
        
        load "data/4J97.pdb", protein
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
 
        load "data/4J97.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3506,3421,2966,3392,3420,3422,2441,2440,2442,2412,2414,2415,2938,2543,2942,2941,2958,2959,2969,2934,2408,2409,2410,2413,2962,2932,3513,3498,2690,3499,3500,3504,2559,2555,2557,2558,2722,2723,2799,2915,2916] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4657,4659,4687,4688,4660,4656,4662,4663,5750,5752,5745,4804,4805,4806,4937,5746,5749,4689,4802,5162,5163,4790,5209,5206,5666,5667,5185,5188,5668,5216,5638,5744,5046] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1178,1150,1256,1159,1160,1263,1257,1264,470,1258,739,742,746,749,1180,163,164,169,170,172,338,339,503,696,323,579,1179,502,721,726,738,714,718,165,167,168,195,196,197,335,337] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [8023,7096,7338,7459,7454,7455,6937,7945,7946,7947,7082,6938,7471,6918,7498,7477,7480,8024,7229,8031,7505,7508,7917,7501,6922,6939,6914,6915,6916,6921,7098] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [6077,6079,5546,6066,6067,6069,6071,5568,5545,6612,6614,6615,6632,6630,2258,2259,2262,2265,2269,5827,5833,5835,5569,5570,6059,6619,6626,5516] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2559,2689,2558,2667,2423,2424,2425,2637,3505,3370,2634,2657,2660,2661,2662,2665,3519,3520,3522,3521,3527,3528,2426] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2740,3577,6364,6366,3569,3550,3551,3553,3549,3566,3565,6560,6567,6587,6588,6589,6553,6556,6510,6547,6551,6555,6384,6385,6535,2702,2738,2737] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [181,178,338,339,469,179,435,436,437,441,440,355,416,417,414,418,1264,1260,1277,1278,1280,1285,1279,1263,1128,1286,1287,1426,1428,1427,447,445] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3457,3170,3171,3192,3193,3172,3458,3459,3461,3136,3168,3169,3137,3201,3007,3008,3115,3230] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3298,3299,3300,4376,3823,4366,4368,4369,4380,3833,3831,3832,3820,3821,3813,3814,3816,3815,3589] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [8030,7098,7173,7895,8045,8047,8052,8053,8054,7196,7199,7097,8027,8043,7228,8044,7201,7206,7200] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5616,5767,4936,5751,5765,5773,5774,5775,5652,5752,4805,4806,4904,4907,4669] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [5385,5418,5448,5476,5703,5704,5417,5442,5421,5419,5420,5441,5255,5707,5364] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [2127,2134,1057,1058,1591,2120,2123,1578,1581,2130,1030,2138,2122] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [8246,8218,8284,8257,8622,8295,8594] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [8892,8905,8909,7820,7821,7822,7792,8358,8345,8346,8348,8891,8893,8894,8898] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [6343,6016,6315,6005,5939] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [8662,8527,8667,8820,8818,8821] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
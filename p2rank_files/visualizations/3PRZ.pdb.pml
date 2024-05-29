
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
        
        load "data/3PRZ.pdb", protein
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
 
        load "data/3PRZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4923,3425,4956,4959,4950,4952,4953,4949,4990,1100,1101,1102,1104,1136,1087,1088,1096,1127,1128,1103,1105,3423,4960,1061,1062,1063,3391,3392,482,1058,1089,1091,3388,3416,3417,3421,3422,3424,496,538,540,4989,4991,519,548,4865,3453,4901,4902,4925,4926,4927,5079,5080,4454,4456,3415,467,3414,3694,3695,468,3726,3728,3730,945,964,1076,1074,4455,3410,3411,3412,3729,4440,4441,5083,3725,3727,4462,4464,4866,3774,5086,5096,3773,4954,5065,5047,5066,5058,5063,4890,5023,5026,5028] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4578,5239,5240,5712,4564,4571,4574,4577,5845,5846,5847,5848,5849,6795,4579,5693,5719,5720,5736,5217,5708,5203,6797,5709,4775,4566,4633,5174,5821,5822,5824,4817,4795,4861,5157,5158,5162,5169,5182,5072,5735,5176,5179,5813,5815,5816] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [429,1225,1226,1254,3680,3682,4015,3684,3686,1262,4008,4009,4010,4014,1252,4418,4040,4459,4460,4464,954,4420,4041,4419,4483,3716,4461,4462,3681,3714,4006,4007,1255,4039,446,447,448,951,973,975,3687,3688] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2297,203,2039,204,211,212,2129,2295,2299,3555,236,3556,3883,3888,3886,2302,183,2303,2308,189,194,195,201,3887,2296,228,2041,2047,2045] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1601,2239,3225,6313,6344,6345,3233,1599,2651,2640,3232,3219,3194,2641,6288,6435,6406,6408,6409,6410,6395] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [6238,6240,3150,3151,3152,4998,495,3140,4958,3434,3436,3157,3159,3153,3144,498,3398,3399,3400,3421,4936,6262,6263,4931,4935,4966,4960,4959] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3219,3194,2911,3244,2875,2883,2910,2673,1611,2909,2907,2651,2640,2655,3232,2661,2667,2671,2672,2712,2641,6288,2886,3231,3233,3229,1593] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6803,6804,5263,5298,6749,6750,6761,6722,6762,6765,6767,5324,5325,5251,5230,5258,5259,5262,5299,5306,6769,5285,5322,5228,5229,5231,5711,5697,5701,5705,5709,5710,5712,6794] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [6341,6348,4841,4842,6349,6354,3807,3505,3507,2266,2254,2259,2265,2267,3825,3832,3835,3836,3854,6365,6366,6369,6370,6371,4825,6355] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1881,3258,1885,2475,2992,3023,3025,2480,2481,1869,2991,1346,1349,2969,2476,1350,1875,1856,3275,2103,2477,3021,2989,2964,2994,2995] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1852,1851,2463,1364,1850,2464,1328,2462,2449,1365,1378,1380,2446,2448,2424] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2212,2231,6369,6370,2253,3825,3832,3835,3837,3854,2015,3856,3857,2267,2264] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4716,4456,4722,944,945,930,934,4473,4474,4475,4753,4720,4721,4735,4676,4709,935,936,4740,4744,4736] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
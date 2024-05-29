
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
        
        load "data/3EOC.pdb", protein
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
 
        load "data/3EOC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1105,1109,1112,124,125,126,1104,90,91,93,94,587,588,589,457,586,596,227,79,83,1033,633,640,644,647,1004,613,616,1032,632,591,592,242,243,244,590,354] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4825,4826,5464,5467,4976,4452,5395,5396,4455,4448,4449,4979,4987,4611,4612,4465,4613,4494,4495,4493,4456,4723,4949,4950,4952,4954,5468,5379,5472,5475,5367,4596,4971] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3303,4388,4390,3297,4387,4859,4858,4860,4875,4400,4401,4857,4943,514,3327,3328,3326,4370,3294,3291,4874,3335,2900,2901,3289,3298,4848,4540,4849,4576] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [7671,7672,7673,7639,7641,491,1,504,506,171,25,35,36,7648,7245,7246,7680,479,488,489,207,480,580,4879] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [6668,6674,6692,6693,6694,5741,5751,5754,5755,5756,5761,6481,5547,5548,7805,7836,7835,5542,5546,5543,5527,5529,5309,5525,5762,6684,6719,5523,5524] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1370,1166,2370,1160,1164,2319,2344,2345,2111,1161,1186,3460,3490,3491,1171,3450,1180,1183,1184,1185,2325,1385,1380,1384,1390,946] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [2761,3416,3593,3591,4259,2754,2758,4257,4247,4248,3565,3562,3539,3572,3482,2752,1185,2766,1176,1178,3451] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2481,2823,3716,3733,3738,3739,3760,2820,3396,3408,2789,3402,3647,2482,2472,3643,3701,3703,3687,3636,3637,3688,3641,2816,2817,2814,2851,2610] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [7825,7827,7760,7942,7103,7106,8606,8608,7097,5548,7796,7914,7911,7921,8594,7761,5539,5540] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1344,1346,1355,1358,1786,2110,1753,1758,1759,1760,1787,1744,2096,2102,2095,1345,1383,1310] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [6473,6474,6115,5715,6159,6118,6482,6466,6129,6130,6131,6157,6124,5754,5729,5681,5678,5716,5773,5717] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5437,5453,5454,5412,5424,4963,4802,4835,4799,6632,4801,5425,4968,4836] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [618,605,600,432,466,433,1090,1091,1049,1074,2261] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [2331,2335,2326,2324,2325,2155,2144,2146,2151,2141,902,1389,1390,1391,900,2150,2319] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
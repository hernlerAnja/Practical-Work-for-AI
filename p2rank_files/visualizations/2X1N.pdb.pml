
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
        
        load "data/2X1N.pdb", protein
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
 
        load "data/2X1N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4985,5635,5636,5563,5564,5144,5147,5163,5164,5120,5121,5123,5637,5117,5118,5119,4719,4561,5171,5175,4560,5178,5547,5535,4564,4616,4617,4618,4566,4569,4571,4572,4579,4739,4741,5642,5640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1152,1157,1160,102,1052,95,661,664,1080,1081,695,680,399,638,640,257,258,259,1153,634,644,637,639,635,636,1064,1059,242,84,85,87,140,139,141,82,83,89] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3417,3418,3419,5007,5016,5017,5019,4513,4502,4663,4493,2984,3426,2985,3394,5033,5032,4478,4512,2975,4699,5010,5008,5011,559,555,556,557,563,3385,3387,564,569,4494] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [7471,25,35,36,186,7880,551,1,15,17,34,16,524,525,533,534,536,549,628,527,236,7461,7470,222,7903,7904,7905,7872] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5691,8034,8035,8036,6913,6915,5711,5714,5715,5925,5935,5938,6903,6914,6875,5702,5716,8028,6872,8024,8025,8067,8068,5697,6940,6904,5695,5940,5692,6939,5945] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2389,1455,2386,1431,1214,1209,1212,1452,1457,1463,1234,1442,2412,2427,2428,2429,3581,3550,3582,1232,1208,1233,1228,1231,2454] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2898,2935,3742,2523,2548,2552,2566,3833,3834,3811,3781,3782,3792,3797,3783,3736,3731,3732,3735,2565,3855,3499,3734,3482,3492,2873,3490,3487,3493,2904,2547,2907] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [8297,7985,8319,8320,7363,7973,7976,7978,7979,7359,8283,7384,7421,8228,8278,8280,8268,8282,8341,8269,8218,7034,7038,7393,7968,7390,7042,7052,7051,7386,7387] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3688,3662,3667,4366,4368,4354,3686,3571,3573,3655,3656,3541,3657,3660,2842,2845,3506,3507,3542,1225] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [8027,8057,8059,8028,7328,7331,7992,8172,8173,8174,8846,8848,7993,5708,5716,8146,8143,8149,8844,8153,8142,8832] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1138,653,1094,1097,1122,676,510,511,649,1139,645,488,883,475,477,478,7110,7105,1112,2345,2344,678,7125] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2619,2623,5132,5580,5595,5605,5621,5622,5136,5593,5594,2639,4961,4960,2991,5128,5592,6830] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6305,6314,6319,6349,6320,6321,6347,6348,6679,6680,6664,5938,5939,5863,5900,6308,6670,6671,5899,5913] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1431,1417,1430,1455,2194,2195,2187,2186,1872,1828,1837,1456,2185,2179,1442] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3471,977,1204,3470,1203,3137,3146,1216,2886,2887,3514,3515,3516,2854] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
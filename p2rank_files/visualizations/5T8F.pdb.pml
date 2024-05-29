
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
        
        load "data/5T8F.pdb", protein
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
 
        load "data/5T8F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4338,5035,5045,1216,5046,5047,5415,5416,5634,5628,4021,4026,4028,4027,4304,4305,4065,4062,5446,5447,5448,5413,5445,5044,4380,4381,5643,4334,4336,5473,5474,5472,5618,5627,5716,5611] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5161,5163,5177,5164,5325,5226,5719,5723,5728,6260,5622,5623,5625,6262,5712,5731,5725,5620,5407,5408,5409,6264,6269,6270,6271,6263,5768,6179,5753,6244,6178,5178,5381,5708,5324,5204,5707,5345] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3871,3874,2496,3858,3875,3873,3885,4189,3901,4192,2732,4159,2710,2486,2731,4142,4182,4141,4136,4144,4150,4153,4157,4179,4184,4188,4193,4173,4154,3812,3814,3822,3865,3847,3856,3818,3894,3895,3896,3924,3897,4143,4126,4127,4197] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2834,2836,4452,4453,2972,2973,7473,7474,7505,7506,7479,4446,4447,7512,7515,2985,4459,2843,2844,3014,2935,2939,2648,2841,2856,7480,7482,7444,7445,4439,2932,6792,2927,2929,2931,2914,2915,2916,2645,4117,4118,4119,4120] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [6050,6376,6418,6419,6394,6021,6234,6379,6380,6068,6254,6255,6126,6171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [935,2707,2670,2757,2758,2803,2783,2785,2787,2780,2955,2957,920,2960,2965,919,2964,2790,2713,2715,2659,2947,2945,2950,2700,2703] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4659,4676,4657,4395,4397,4398,817,831,809,833,5655,5657,5660,5688,5687,4370,4680,4678,4677,4709,4710,5663] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4294,1182,4593,4624,1150,1910,1911,1912,1913,1621,1622,5017,1193] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2819,2838,2839,2842,2844,7472,8153,3019,3014,3015,2627,2630,8189,8190,8188,2084,2090,2973,2636] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1174,1083,1146,1085,4292,4594,4588,1149,1060,4570,4582,4584,1937,1095] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [5407,5408,5409,6269,6270,6271,6284,5363,5364,5365,5369,5344,5345,5381,5708] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1233,1234,1241,1731,1221,1727,5474,5471,5613,5614,5505,5498,1726,1759,1762,5596,5590,1757,5534,5535,5572,5573] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1658,1125,1126,1129,1132,1550,1533,1653,1656,1664,1433,1437,1455,1430,1431,1665] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4927,4928,4929,4951,4953,4943,4696,593,594,174,592] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
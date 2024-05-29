
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
        
        load "data/3APD.pdb", protein
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
 
        load "data/3APD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3230,4705,3242,4728,4729,3231,445,3207,3210,3244,446,1033,1048,1074,1075,1076,1077,1078,1079,1038,1039,4727,4866,4756,4850,4868,4869,1107,4704,4730,3514,3548,4251,4253,4254,3544,3545,3546,3547,3549,4669,3272,4670,3591,3593,4268,4269,919,4263,4267,4882,4883,4886,4668,4693,4695,4967,3234,937,4899,4889,4762,1037,3243,4792,4793,4794,1032,1035,1036,1063,1065,1071,1062,1061,4790,519,6015,3254,3255,4763,4761,4801,6013,6038,6039,2983,2974,3211,460,473,3186,3218,3217,3219,2976,2980,2982,2966,2963,2964,4736,4753,4751,4752,4755,4757,4826,4842,509,511,4830,4831,4832,1099,1106,1098,4739,4769] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5599,5603,5604,5605,5606,5597,5517,5518,5595,5598,4980,5002,4975,5004,5010,5016,5001,5501,5490,5494,4377,4387,4577,4578,4440,4418,4598,4620,4388,4596,4958,4959,4974,4880,4963,4977,5493] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3827,1220,1222,1230,3505,3835,4273,4231,3860,3861,4232,4233,4294,928,425,426,947,929,4274,3500,3501,3503,407,408,949,1193,1194] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [185,2194,186,193,194,183,171,177,2028,2198,2202,2207,210,1945,1946,1972,1979,1965,2195,1940,212,217,175,3704,3706,2201,3705,165,3375] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3042,6087,6088,3054,3055,3056,2478,6193,6172,6119,3048,6120,1509,2135,2467,6063] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [6124,2152,2164,2165,2166,3664,3673,3675,3676,6140,6145,2153,6144,2129,4645,4628,3644,3646,3648,2158,3326,3654,3655,3651,6128,6122,6123] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [6541,6543,5476,5477,5478,6542,5491,5028,5029,5493,5060,5026,5485,5092,6513,6550,6517,6519,5121,5122,5123,5492] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3042,3054,3055,3056,3053,3066,2734,2500,2733,3018,3015,2467] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [899,1049,1116,4519,1141,4520,1124,1050,1078,1117,1119,904,918,908,919,4509] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [861,864,868,776,777,1166,799,801,871,870,1165,866,644,642,626,798,808,805] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4403,4619,4598,4400,4388,5639,5501,5502,5604,5605,5606,5621] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [3196,3200,3203,3496,440,430,432,433,435,448,3484,3483,388,3481,387,3191,454] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [593,582,599,601,1093,555,596,1137,591,586,1115,544] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4589,4223,3927] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        

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
        
        load "data/7P7F.pdb", protein
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
 
        load "data/7P7F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4413,6801,4410,4436,4437,4448,4439,4434,4435,4276,4273,4286,4283,4284,4279,4267,4268,4272,6789,6766,6636,6637,6639,6790,6791,6792,6788,6793,6193,4258,6607,6608,6218,4253,4254,4255,3832,3840,4440,3865,3833,4245,4252,6186,6605,6626,6629,6632,6621,6185,6609] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [8955,1435,1860,1847,1854,2015,1885,1886,1888,1881,2050,9149,2012,2036,2037,2038,2039,2041,2042,1434,1442,1855,1856,8566,1875,1878,1869,1870,1874,8541,9135,9136,9137,9138,9139,9140,9141,8946,8953,8532,8533,8956,8984,8985,8987,9114,8969,8974,8980,8977,8542,9111] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2512,2517,2518,2521,2558,2559,2560,2561,2652,3013,2506,2508,2510,3557,3559,3551,3548,2785,3558,2669,3014,3423,3434,2522,2525,3035,3032,3036,3037,3043,3454,3550] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [105,107,109,111,160,157,158,159,117,120,121,267,268,116,144,616,251,615,1056,645,637,638,639,634,1025,1036,1153,1150,1152,1161,387] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5829,5954,4909,5946,4902,4905,5056,4948,5054,5847,5450,5818,5848,5849,4946,4947,5425,4895,4897,4893,4899,4894,5438,5446,5476,5427,5430,5406,5408,5039,5947,5948,5943] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [8299,8302,7265,7304,7261,7264,7410,7412,8203,8204,7806,8174,8304,8303,8185,8310,7783,8205,7781,7786,7395,7251,7253,7255,7249,7250,7302,7303,7762,7764,7794,7832] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [7987,9406,9404,9334,9336,9345,9343,9397,9401,9383,4638,4640,4642,4613,4576,4602,9304,9301,9305,9303,9342,9307,9306,9308] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [5894,5893,5854,5895,5861,7115,7127,7128,5444,5484,5445,7110,7111,7113] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6955,6986,6997,6994,2215,5631,6957,6959,6958,6984,2242,6988,7056,2244,7049,7053,7035,2240,7058,2178,2204] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [651,652,1068,1076,1070,691,1061,1100,1102,1077,2356,2359,2361,2374] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [7840,9463,9459,9461,7800,7801,9476,8210,8249,8251,8217] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [9268,9269,9237,9239,9267,9308,4614,9279,8045,8046,8044,4649,4653,4655,4363,4610,4616,4609,4611,7986] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [4757,4759,4772,3500,3498,4754,3049,3089,3459,3050,3466,3474] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4657,4671,7601,7600,4653,4655,8051,8053,8055,7606,7612,7602,7603,8045,8046,8043,8044,8047,8016,8081,8082,8048,4346,4354,4342,4343,4347] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
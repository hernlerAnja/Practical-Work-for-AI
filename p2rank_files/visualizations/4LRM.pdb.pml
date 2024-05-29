
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
        
        load "data/4LRM.pdb", protein
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
 
        load "data/4LRM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [179,173,223,224,225,172,174,177,493,1249,363,365,367,702,1246,1131,1145,770,793,794,766,771,792,722,176,729,736,350,718,1241,716,717,700,1160,763,1161,739,754,209,180,1132] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [4946,4947,4948,5094,4901,4902,4903,4911,4934,5091,5093,4899,4900,5078,5462,4896,4897,4929,4930,5969,5961,5962,5445,5444,5446,5450,5880,5464,5963,5221,5095,5966,5967,5254,5499,5851,5852,5860,5866,5467,5482,5491,5494,5475,5522,5862,5881] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [8259,8261,7374,7376,7377,7378,7225,7224,7178,7179,7173,7502,8262,7534,7535,7714,8260,7712,8253,8254,8255,8258,7710,7711,7361,7728,7734,7746,7176,7177,7174,7729,7730,8173,7778,7783,8172,7775,8251,7748,7751,7759,7774,8157,8143] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [9455,9499,9501,9448,9449,9454,9447,9450,10024,9453,10426,10056,10061,10084,10029,10053,10534,10535,10455,9633,10006,10008,10007,10454,10026,9650,10543,9500,10425,10439,9780,9812,9813,9649,9990,9642,9646,9989,9992] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2626,2627,2581,3132,3133,2758,2759,3134,3138,2906,3118,2938,2939,3663,2772,2774,2775,2776,3150,2579,2576,2575,3657,3186,3545,3554,3559,3575,3660,3656,3574,3653,3655,3152,3155,3178,3179,3180,3182,3187,3210,3163,3115,3116] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1107,1108,1109,1270,1271,1272,1134,1136,458,199,200,202,203,204,201,1404,1405,205,206,207,1406,1248,1262,494,1249,366,367,1145] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [6007,6019,6020,6009,6010,4748,5265,4728,4727,4746,4747,4647,4351,5237,4349,4350,5238,4590] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [9483,10543,9500,9481,10402,10425,10428,10439,10401,10403,10430,10699,10698,9457,9455,9456,9461,9465,10566,10565,9487] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3684,3686,3676,3677,3678,2907,3810,3812,2603,2604,2605,2606,2607,2608,2609,3662,2847,2790,2601,2602,2875,2876,2879,2882,2871,2869,2870] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [9756,9648,9649,9666,9477,9478,9480,9485,9742,9743,9750,9753,9754,9781,9745,9482,9483,10681,10556,10566] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [10584,10583,9823,9824,9305,9847,9822,10341,10343,10345,10346,9289,10356,10357,9302,8946,9797] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [3158,3590,3591,2988,2994,3030,3031,3640,2996,3140,3141,3143,3623,2997] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [5628,5909,5910,5534,5599,5532,5564,5566,5626,5587,5591] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5598,6415,6623,5637,6624,5595,6975,6980,6984] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4008,4011,4232,4233,4205,4234,4042,3838,3840,4149,4150,4271,4277,4282,4424] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [8603,9019,9020,9021,8606,8744,8879,8745,9017,8829,8435] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        

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
        
        load "data/7ZY5.pdb", protein
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
 
        load "data/7ZY5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3818,4646,4647,4648,3784,3788,3789,3790,4692,3750,3748,3751,3766,3861,3783,4107,3753,3889,3933,3858,3902,3903,4109,4126,3780,3781,4108,4621,4082,4083,4080,4084,4093,4095,4693,4694,4695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3553,3551,3552,4215,4217,3683,3684,3686,4218,3211,3212,3316,3213,3315,3153,3146,3147,4089,4090,3712,3713,3728,4116,4117,3150,3148,3151,3730,4118,3715,3709,3317,3708,4219,4220,3333,3687,3688,3689,4223,4224,4226,3331,3332,3197,3167,3168,4102] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1872,1873,1874,1341,1165,1121,1358,1050,1124,1092,1119,1135,1129,1134,1093,1088,983,985,987,1339,967,1015,1847,1312,1314,1340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1451,1447,1334,1452,1455,1450,1309,1321,444,445,378,379,380,385,919,921,916,918,561,548,785,944,1348,1349,1350,960,925,941,945,947,382,549,940,563,564,565,420,422,1456,1458,1310,399,429,400] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3159,3168,3180,3171,3175,3177,4102,4062,4077,4389,4250,4251,4376,4377,4078,4243,3333,3444,4242,4225,4226,3332,3197,3182,3183,3192,3196,3349,3405,3406,3407,3408,3404,3184,3187,3353,3402,3403,3409,3410,3414,4090] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [277,280,836,888,889,890,837,595,3515,3516,3559,3509,3560,657,619,620,621,656,257,253,256,874,3510,3511] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3971,5439,5440,319,501,3976,3972,284,287,4004,4005,3966,3967,3970,2848,2850,317,318,291,3973] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [811,812,329,330,813,319,804,485,500,486,283,284,287,3528,3529,3976,3978,3527,262,264,3946,3948,263,290,316] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4538,5429,5423,2839,5428,3970,4546,4547,4550,4573,2828,5406,2822,2827,5383,4532] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2958,2970,2975,4274,2986,2996,2965,4271,4299,4297,4318,4265,4266] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [190,197,1506,1529,1531,1551,1549,1550,199,228,202,207,209,216,218,219,1497] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
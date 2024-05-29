
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
        
        load "data/5OUM.pdb", protein
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
 
        load "data/5OUM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [563,564,565,429,399,400,403,920,581,414,415,416,419,412,407,408,409,648,1451,1452,1455,1456,1457,1458,1294,1621,1310,1482,1484,1483,676,1474,640,1475,1477,637,919,921,1450,1349,1350,960,961,962,1325,1327,1326,918,548,783,1447,549,785,944,916,784,443,444,382,445,379,380] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3742,3744,3745,3746,4635,4636,4637,3740,3741,3743,3770,3772,3808,4098,4096,4112,4115,3719,3720,3878,3922,3881,3724,4629,4097,4610,4069,4071,4072,4073,4685] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4204,4206,4208,4207,3201,3305,3202,3200,3541,3540,3542,3675,3677,3678,4081,4083,4084,3142,3145,3147,4078,3720,4107,3136,3137,3140,4106,3139,3322,4209,4212,3320,3321,3186,4213,4215,3156,3157] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1339,1358,985,987,1015,1050,1121,1879,1880,1090,1129,1134,1124,1314,1853,1165,979,980,983,967] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [277,3505,3498,3499,3549,834,835,3547,3548,3506,3507,3511,657,656,256,257,253,251,247,252,280,647,685,618,619,645,620,621,888,889,869,890,595,622,649,654,655] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4239,4240,4051,4067,4215,4241,3157,3160,3173,3164,3165,3166,3169,3322,4214,3397,3321,3185,3338,3186,3171,3172] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [5455,3960,811,812,813,290,318,319,804,287,3517,3518,3965,3967,3962,3934,3961,283,284,267,3516,3936,3937,263] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3680,3683,3287,3298,3266,3243,3283,3279,3562,3559,3561,3567,3570,3087] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
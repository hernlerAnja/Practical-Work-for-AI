
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
        
        load "data/5MO7.pdb", protein
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
 
        load "data/5MO7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3896,3940,4087,4090,4123,4140,4635,4091,3825,4662,4089,3758,3761,3790,4121,3910,3868,4660,4661,4708,4707,4710,3799,3797] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1925,1878,1879,1880,1340,1341,1358,1355,1165,1121,1090,1134,1339,983,984,985,987,1088,1050,1092,1015,1017,967,1853,1316,1312,1314,1315] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1447,1449,1450,1451,564,1458,1321,1327,1325,1326,783,784,785,915,916,918,919,920,921,548,444,443,445,378,1350,1349,961,962,963,382,380,383,379] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4232,4131,4132,3735,3738,4237,4240,3153,3154,3155,3159,3323,3691,3693,3324,3719,3339,3694,3695,3696,4229,4233,3558,3560,3722,3157,3218,3219,3220] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3052,3055,3610,3644,742,3396,738,739,747,748,741,791,792,3014,3028,3429,3430,3431,3432,3031,3032,3033,3460,3370,3395,3397,3394,3423,3663,3664,3665,3422] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1457,1474,1475,1476,1294,1482,1483,1484,636,414,415,400,429,403,416,419,421,603,635,642,676,581,646,634,641,565,1456,1458,1327,1325,1310] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4238,4239,4240,4258,4257,4259,4264,4069,4265,4084,4085,3413,3189,3203,3204,3175,3178,3194,3191,3411,3421,3356,3451,4256,3190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3052,3055,3644,742,744,3396,738,739,3612,741,743,714,3645,3647,3395,3397] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1203,1236,1202,2672,3092,3093,3094,1237,3276,80,82] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
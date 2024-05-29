
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
        
        load "data/5OUE.pdb", protein
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
 
        load "data/5OUE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4148,4643,3911,3914,3955,3840,3909,3753,4129,3757,3804,3802,4102,4104,4105,3919,3924,3925,3878,3773,3775,3777,4106,4639,4662,4668,4669,3883] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [980,1012,982,1016,1022,1024,1925,1341,1358,1339,1355,967,1015,1878,1879,1050,1880,1092,1165,1121,1135,983,1340,1853,1872,1312,1315,1316,1926,1927,1314] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3219,3235,3233,4116,4117,3169,3170,3174,3175,3176,3178,4240,4237,4241,4139,4140,4246,4245,4248,3752,3750,3351,3352,3353,3338,3706,3708,3709,3710,3711,3728,3730,3339,3734,3354,3573,3575,4239,3172,3234] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [443,444,445,379,1326,1325,1327,915,916,918,920,548,378,385,386,784,1447,1449,1451,1450,783,919,921,785,1452,563,564,1455,1458,429,399,400,944,382,383,549,1350,960,380,940,959,1349] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3070,3410,3411,3408,3409,3679,3446,3447,3444,3412,3627,3659,3680,3660,3385,3405,3438,3407,738,739,741,747,748,749,750,3067,742,743,792,791,796,3662,744,3046,3043,3047,3041] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [565,581,1456,1457,1458,429,1294,1310,640,1482,1483,419,407,646,390,399,400,403,412,416,1325,1327,391] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3080,3603,3107,3108,3109,3602,1203,2671,2672,1202,760,761,1205,1208,1204,3073,1210,3074,3077,3291,1236,80,82,3081,3098,1237,3053] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [4247,4264,4267,4248,4084,4399,4100,4099,4115,3430,4274,4265,4272,4273,3211,3198,3199,3200,3201,3210,3212,3190,3219,4117,3355,3371,3466,3436,3427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1503,1505,218,1497,1498,1550,190,207,1529,1551,197,199,1531,228] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2655,54,71,1764,2660,2649,1782,2638,2617,62,1228,1770,1778,1779,2661] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [541,525,923,530,926,804,805,802,486,509] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3056,3058,768,1156,1116,1399,1408,3057,1157,1182,1432,1411,1412] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
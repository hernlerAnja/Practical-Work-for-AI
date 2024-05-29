
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
        
        load "data/5CU2.pdb", protein
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
 
        load "data/5CU2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1359,1051,968,1356,984,986,985,1895,1944,987,1021,989,988,990,1894,1091,1122,1130,1135,1094,1018,1017,1016,1313,1315,1316,1317,1341,1340,1863,1166,1136] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [375,437,436,438,1327,372,373,378,1328,379,381,384,911,540,541,542,913,1350,1448,1452,1322,1349,1451,1326,908,909,918,912,914,776,778,1450,777,1453,557,558,554,555,556,1456,1459,393,422,383,392,1351,376,961,962,963] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [4130,4147,4105,3954,4636,3908,3768,4101,4103,4128,3769,3772,3775,3777,4104,3803,3771,3801,3839,3881,3877,3910,3913,3918,3924,3882,4632,4661,4662,4663] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3354,3705,3707,3708,3709,3710,3573,4240,4244,4245,4236,4239,4138,4139,3572,3574,4238,4137,4114,4116,4247,4123,4115,4110,3353,3350,3352,3234,3233,3337,3338,3169,3171,3232,3218,3168,3173,3174,3175,3177] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3047,3069,3436,3677,3678,3679,3625,3626,735,3408,3409,3410,3411,3407,3658,3659,3662,3663,737,741,3045,734,736,3437,3404,3384,3385,3443,3445,3046,3474,3048,3406] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [4114,4116,4247,4083,4098,4099,4271,4272,4273,3428,3429,4264,4266,3465,4263,3354,4245,4246,3189,3192,3205,3196,3198,3201,3208,3204,3370,3217,3218,3203,3374,3435,3353] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1457,1459,393,422,633,1295,1483,1484,1485,396,412,632,557,669,1458,1475,574,634,635,639,631,1476,627,628,1310,1311,400,401,402,408,405,406,407,409,578,1328,384,1326] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [252,647,648,649,650,611,612,251,274,640,638,641,273,882,883,829,830,613,614,588,270,271,250] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3620,3621,3669,3113,3137,3088,3089,3627,3631,3632,3633,3634,3087,3135,3112,3617,3684,3344,3360,3361,3362,3136] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [54,61,2623,2633,2671,2676,2654,2665,71,1774,1780,1788,1789,1792,2677] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4295,4287,3007,3017,4318,4320,4340,4339,2986,2988,2996,2979] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [292,295,831,835,566,821,888,824,873,564,548,317,339,341,340,289,291] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1504,190,192,1532,195,200,183,211,1530,1498,1499,1558,212,221] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [797,323,479,803,806,534,795,798,916,515,523,502] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
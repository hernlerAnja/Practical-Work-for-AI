
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
        
        load "data/4QP7.pdb", protein
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
 
        load "data/4QP7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [382,384,4561,4562,4564,4785,4786,4938,4939,4940,4784,383,369,374,409,410,411,434,435,436,408,399,1352,1353,400,379,385,376,4967,4970,4972,4973,4961,4977,4936,1354,1358,1360,4947,5015,1357,181,191,4613,4584,4587,4588,346,347,714,345,328,342,703,715,702,39,36,38,333,4574,4757,4759,4760,4573,4577,4578,4583,4579,176,4606,5016,5017,4612,4614,4805,4795,4799,4798,4801,4807,4903,4904,4905,4909,4937,4948,4915] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3569,3924,3949,3950,4025,3557,3562,3556,3598,3536,3538,3541,3542,3558,2926,2914,2915,2916,2918,3933,4030,4033,2936,2933,3926,3925,3525,3086,3087,3520,3070,2971,2970,2948] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [322,323,757,307,762,758,756,779,1186,588,778,773,775,324,1262,1267,1270,1261,1161,806,835,794,795,799,1187,792,793,1163,1162,1170,170,173,177,178,184,208,159,206,207,155,158,163,154] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1133,1150,1163,1162,1170,1161,1268,1269,1270,1377,172,176,170,171,173,174,177,1357,1367,1371,1373,1293,1362,436,1292] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3225,5270,5307,5309,5310,3222,4073,4079,5271,5268,4063,4064,4060,5303,5289,4068,3259,3218,3251,3249,5256,3261,3859] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3605,3726,3657,3970,3686,3687,3688,3689,3986,3643,3639,3962] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1711,1721,1722,1724,1726,4270,4272,1725,5219,5220,3834,3798,3835,3838,5045,5061,5051,3828] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [979,2407,981,1016,2456,948,949,950,951,1214,1230,2398,2403,2410,2412,946,916] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [841,842,892,874,875,876,963,1223,922,923,924,925,926,880,1199,1207,791] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4122,4123,4124,3920,4158,4160,4146,3586,4369,4148,4416,4417,3909,3911,3926,3584,3621,3623] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3778,3336,3779,3712,3337,3752,3754,3780,3714,3994,5147,5196,3744,5150,5152,3329] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1157,821,823,859,860,1629,1382,1383,1384,1406,1418,1408] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [5037,5041,5042,1393,5021,5030,1376,1391,1389,1385,1711,1718,1719,1720,1707,1361,5012,1369,5069,5044,5067] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1471,1477,1735,1746,1770,1942,5181] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
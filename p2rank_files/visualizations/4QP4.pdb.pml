
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
        
        load "data/4QP4.pdb", protein
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
 
        load "data/4QP4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4561,4562,4565,4785,4786,4961,4569,4938,4939,4940,382,384,369,383,4784,372,373,374,409,410,411,1353,399,434,1349,1352,400,435,436,376,379,385,406,408,5012,4970,4972,4967,4973,5013,5015,4977,4936,1358,1360,1362,4947,1354,1357,4573,4577,4583,4613,4584,4587,4588,4579,38,4574,346,347,703,714,715,4755,4756,4757,4758,4759,4760,181,342,345,702,191,173,174,176,333,37,4606,5016,5017,4948,4884,4913,4805,4807,4903,4904,4937,4905,4801,4795,4798,4799,4915] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3569,3924,3950,4024,3557,3562,3558,3949,3556,3536,3541,3555,3542,2926,2921,2922,2913,2914,2915,2916,2918,2919,2920,3597,3933,4030,4031,4033,2936,2940,2933,3925,3926,3086,3087,3525,3520,3070,2969,2971,2970,2950,2948] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1267,1268,1270,323,324,757,207,307,155,773,1186,762,1263,1261,1262,208,206,177,170,834,799,806,793,794,1185,1187,778,786,1170,1161,163,154] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1722,1724,1712,1713,1726,4272,1721,5219,5220,1725,3798,3835,3836,3837,3838,3827,3834,5059,5061,1723,5051,3828] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4583,4584,4587,4588,4589,4579,38,346,181,342,345,328,191,194,39] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3604,3605,3606,3726,3657,3686,3687,3688,3689,3986,3643,3635,3639,3962] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1382,1383,1157,1384,1418,1420,821,823,1408,1406,1629,859,1163,1162] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [841,842,963,874,875,876,922,923,924,925,926,1223,892,1207,791,1199,798] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4146,4148,4158,4160,4369,3584,3586,3623,4416,4417,4124,3920,3909,3911,4123,3926,3621] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1150,1163,1170,1162,1161,172,1377,163,1268,1269,1270,171,173,174,177,170,1371,1133,1362,1357,1373,436,1292,1293] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [5147,5196,3778,3779,3712,3742,3744,3780,3336,3752,3754,3714,5150,5152,3329] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1393,1376,5002,5030,5042,5021,1385,1389,1391,1711,5044,1710,1718,1719,1361,1355,1369,5012,5067,5070] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [981,949,951,989,574,2407,1015,573,1016,1017,566,2452,2456,2410,2412] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1746,1770,1968,1484,1737,1471,1477,1735,1942,5181] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
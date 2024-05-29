
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
        
        load "data/6EII.pdb", protein
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
 
        load "data/6EII.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [982,983,985,987,989,1012,1015,1886,1051,1023,1913,1346,962,1348,1365,1092,1885,1887,1129,1135,1093,1088,1881,1883,1877,1908,1121,1165,1119,1016,1020,1931,1932,1347,1312,1314,1315,1316,1860,967] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3902,3946,4122,4139,4634,4095,4120,4121,4096,4093,3761,3764,3915,3916,3871,3874,3831,3793,3794,3796,3760,3748,4659,4660,3768,3765,3766,3767,4661] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4237,4239,3210,3181,3184,4075,4402,4106,4108,4091,3172,3193,3197,3200,3188,3189,3190,3191,4263,4264,4390,4238,3209,4255,3416,3423,3457,3421,3422,3415,3418,3362,3384] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [308,316,317,318,319,284,287,290,291,827,812,813,817,501,283,3991,5452,5453,2863,3983,2861,3541,5479,3958,3984,3989,4017,4018] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [412,403,407,409,419,581,640,676,416,603,637,638,646,564,565,400,429,1465,391,1464,1481,1482,1484,1294,1628,1341,1309,1310,1489,1490,1616,1323] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [380,548,1357,960,963,383,378,379,443,445,444,385,918,921,563,920,1454,1457,1322,784,783,1456,1355,1356,1458] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [257,259,280,654,621,622,656,648,617,645,619,889,890,281,647,3525,869,3523,595,3573,3529,256] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4102,4231,4239,3210,3166,3169,3171,3180,4105,4106,4107,4108,3742,3744,3160,4129,4130,3225,3161,3224,3226,4131] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3564,3566,3565,4228,4230,3329,3699,4130,3225,4232,3701,3702,3226,4231] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [2835,2841,5396,5430,5442,5419,5436,5441,4545,4551,4559,4560,4563,4009,4586,2852] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [626,666,664,217,219,627,1491,1587,1584,1505,1284,1574,636,637] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1228,1777,1771,1785,1786,1789,2668,2656,71,2667,2662,54,58,60] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3936,3937,3897,3549,4170,4180,4193,3961,3938,3963,3895,3540,267,266] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
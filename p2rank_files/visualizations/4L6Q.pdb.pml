
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
        
        load "data/4L6Q.pdb", protein
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
 
        load "data/4L6Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1200,1201,1222,1223,1622,1204,4781,1621,1613,1614,1617,1633,1665,1666,1616,1647,2754,2755,1645,1215,1048,3874,3875,1192,1195,1007,1010,1011,729,732,733,735,2845,2846,2847,2849,4782,2843,4780,725,727,721,4794,708,4158,713,714,4347,4348,4369,4362,4760,4768,4370,4764,4195,4339,4340,4342,4343,4769,4770,4368,4763,4812,4813,4154,4157,5902,5903,3876,3880,3861,3882,5996,3872,3868,3855,3860,4351,4353,1634,1635,5993,5986,5990,5991,5992,2751] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [3790,3791,3792,3739,3915,3916,3733,6044,4386,4719,4730,4720,4831,3737,4356,4361,4359,4360,4746,4747,6041,3899,4338,4186,4333,4334,6039,4826,4827,4824,4825,3735] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [2894,1600,1239,1679,1237,1572,1573,1583,1209,1212,1214,1599,1191,1187,1039,1186,1677,1678,1680,768,769,1684,1687,644,645,586,592,593,643,595,2920,752,590,2892,2887,2897] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [4856,3771,4017,4033,4034,4035,4037,4847,4834,4833,4849,3744,3742,3753,3754,3757,3792,3740,3913,3916,3932,3769,3772] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1685,1686,1687,886,887,888,890,1699,1700,766,767,768,769,785,622,1709,1702,624,625,868,870,869,607,645] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [728,710,726,727,746,686,688,501,687,689,690,709,1077,1079,3143,1078] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [2972,2973,2974,2975,2982,2983,1118,3054,228,224,232,262,263,3000,261,2966,1121,3042,235,3045,2977] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [3648,4224,4225,4226,3836,3837,3873,3893,3857,3856,3834,3835,6288,3874,3875,999] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1049,3874,3875,999,3143,3141,3873,3893,4225,4226,6289,6290,4213,6288] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [3382,6120,6123,6192,3371,3408,3409,3410,3379,6119,6130,6147,6116,6113,6198,3375,4264,6201,4265,4268,6180] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [5860,5874,5899,677,678,4158,716,719,4157,4159,4166,4611,5901,4171,4168,4169,4581,4584,4585] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [4396,4398,4400,4401,5253,5280,4722,4723,5008,5010,4997,4999,5295,5282,5320,4422] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [908,911,953,952,954,916,944,3090,3092,914,155,108,111,112,115,90,97,102,985,133] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3237,3244,3255,3258,3259,3262,4132,4099,4100,4101,4091,6239,3261,4061,4063,4058,4060,4062,6237,6231] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1437,1438,1021,1024,2752,2754,1011,1012,1019,3866,2727,3863,3864,2713] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [4624,5134,5136,5707,4626,5170,5173,5704,5703,5683,5687,4605] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [4856,4708,4977,4983,4847,4834,4692,4707,4730,4976] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2557,2560,1987,2536,1479,1458,2565,2558,2026,2564,2023] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
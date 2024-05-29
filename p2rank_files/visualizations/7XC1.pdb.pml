
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
        
        load "data/7XC1.pdb", protein
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
 
        load "data/7XC1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [180,183,190,193,1194,1294,342,1291,1287,1290,777,778,343,344,1292,1293,492,493,1306,194,210,197,207,455,456,206,208,454,1310,452,361,855,826,1186,1185,1210,1211,608,1285,1286,228,336,340,341,359,178,226,211,213,227,795,782,793,327,171,177,174,175,798,806,813,814,815,1174,1157,1452,1315,1317] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3316,3312,3313,4168,4169,4170,4172,3321,3351,3291,3326,4312,4314,4315,3318,4177,4179,919,3059,3066,3052,3055,3068,3070,3072,3069,3073,916,3075,3222,4152,3204,4153,4154,4155,4156,3205,3206,4036,4035,4019,4056,4049,3352,900,901,915] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2541,1040,584,585,586,1041,2544,2545,1249,973,975,1013,1014,1015,1245,4883,1039,593,594,583,581,582,1254,1005,1006,2554,2497,2499,4665,2496,4667,2494,4703,4704,4676,4677,4702,4921,4919,4923,4696,2487] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [3204,4148,4153,4154,3205,3206,4147,4149,3203,3090,3038,3088,3089,3036,3037,3042,3039,3033,4047,4056,3638,3639,3189,3192,3198,3187,3188,3190,3644,3660,3661,4073,4072,3472,3716,3674,3675,3676,3677,3688,3668,3717,3045] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4276,4411,4408,4683,4685,4686,4687,4688,4418,4682,4684,4414,4299,4317,4441,4278,945,949,4381,1240,4288,4273,1232,1235,1241,1234] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1820,1549,1546,1556,1411,1412,1816,1821,1823,1825,1552,1414,1481,1518,1519,1425,1437,1455,1449,1451] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4048,4049,3704,3706,3707,4370,4371,4355,4356,4358,4354,4357,4359,4034,4044,4335,4580,4628,4043,3742,934,935,936] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4400,5208,5209,5217,5219,4823,5201,4819,4822,5187,5190,5192,4434,4435,4847,4821,4436,4450,4448] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [843,880,1718,1181,1508,1172,1174,1473,1495,1497,1509,1187,841,845] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3836,4109,3810,3834,5363,5365,5361,3831,3832,3835,3837] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3456,3837,3867,3901,3902,3447,3903,5407,3835,5363,5356,5361,5358,3877,4107] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1824,1825,1826,1554,1413,1414,1415,1416,1412,1835,2030,2021,2028,1566,2008,2031] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1227,1255,581,582,1253,1254,1271,1272,783,784,786,4881,4883,4884] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1571,1574,1999,2001,2356,1984,2357,1586,1587,1588,1589] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
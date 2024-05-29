
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
        
        load "data/5OTP.pdb", protein
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
 
        load "data/5OTP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [983,1024,1878,1879,1026,1869,1870,1022,1358,1351,1355,1121,986,984,985,1051,1050,1124,1025,982,1020,1021,967,980,1015,1354,1165,1340,1341,1316,1853,1872,1135,1315,1927,1924,1925,1926,1339,1314] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [784,785,549,1349,1447,1449,1451,1321,1450,1325,1326,1327,783,915,916,918,925,920,921,547,548,380,382,444,443,445,378,379,385,388,390,391,1455,1458,563,564,565,399,400,429,944,1350,963,941,940,364,383,947] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3227,3229,3168,3169,3170,3172,4037,4038,3164,4061,3745,3746,3213,4169,4166,4158,4161,4162,4032,4167,4059,4060,3166,3332,3333,3724,3725,3728,3345,3346,3228,3347,3348,3349,3702,3704,3567,3568,3569,3729,3731,3705,3700,3703,3709] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4585,4589,4590,4591,3761,4023,4026,4027,4564,4583,4587,4581,4025,4050,4066,4052,4069,3876,3832,3835] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2698,1203,3595,3596,3597,3114,3074,3100,3101,3103,759,760,761,1204,1205,1208,1237,1177,1178,3067,3068,3601,3071,3075,3041,3284,3102,3285,2671,2672,2673,3078,80,1236,82,3092,3095,1179,1180] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3059,3061,3621,748,741,792,742,743,744,791,3032,3031,3028,3440,3026,3064,3403,3673,3399,3429,3431,3402,3404,3405,3406,3653,3401,3438,3379,3432,3380] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3200,3196,3198,3199,3212,3213,4169,3184,3187,3191,3192,3193,4036,4038,3203,3388,3423,3424,4167,4168,4185,4186,4188,4005,4193,4194,4195,4021,4332,4020,4320,3365,3348,3349,3369,3430,3460] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [640,1457,1294,1458,1482,1483,406,1310,407,408,409,1609,1621,410,639,1484,646,581,676,428,400,429,403,415,585,416,419,604,1325,1327] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [70,81,1778,1764,1779,1782,2607,2660,61,2617,2638,54,1770,2655,2661] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1497,1503,218,1498,1550,190,197,199,202,207,1529,1531,1551,228] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
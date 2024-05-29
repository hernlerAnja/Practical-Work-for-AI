
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
        
        load "data/2ESM.pdb", protein
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
 
        load "data/2ESM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [45,48,49,36,77,52,54,51,53,6453,4383,6464,88,87,3370,6474,6473,3390,3391,6452,44,3802,12,14,16,35,37,4385,15,111,3436,3437,3362,3444,3431,3443,3445,6454,6455,78,3786,3795,3796,3799,6457,6459,3785,3789,3779,3372,3368] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1625,1286,1629,691,692,693,643,640,641,634,2931,2936,2941,1636,1734,1735,1736,804,1239,1257,1652,1653,638,2938,1234,1235,1728,645,646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3946,3947,4058,4910,3895,3897,3892,3888,3894,6198,6200,4887,4883,4911,4544,4992,4994,4894,4986,4993,4492,4493,6202,4497,3900] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [670,672,661,662,655,646,908,673,837,938,1597,1732,1733,820,821,1636,1734,1736,1613,1614,935,934,1751,937,936,939,1749,1752,1758,1757,923] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [5009,5008,4193,4194,4196,4091,3913,3916,5016,4855,4175,4176,3926,3927,5124,4994,4241,4074,4075,5006,5007] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [958,960,929,919,925,3650,3684,3130,3132,3133,3648,3626,951,3145,877,875,876,909,888,910] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1001,151,177,197,135,140,142,143,159,162,957,958,959,960,961,963,956,3150,3684,3685,3682,3683,3157,3172,992,955,3182,954,191,3209,962,964] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3267,3269,3305,3222,1127,1113,1115,3279,760,778,779,780,1126,1109,1110,796,798,736,3244] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1161,1211,561,562,1209,812,829,678,683,684,583,606,701,685,702,1187,1189,3008,3009,1191,3016,3017,3018,649,686,2986,2992,2993,842,1190,675,674] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4220,4222,3389,4249,4250,4259,4213,4257,4258,4217,4221,6411,429,431,4215,4214,3409,3413,3414,3415,3416,3404,3405,3396,3408,3394,3395,428] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3522,4424,4427,4423,3519,3520,6380,3535,3562,6294,6299,6300,6310,3560,6303,6360,6372] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [268,1165,1166,1169,3034,265,306,308,281,3120,293,3039,3053,3054,3058,3067,3038,3048,3049,270] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2040,2583,2603,2604,2605,2607,2041,1527,2042,1508,2612,2076] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
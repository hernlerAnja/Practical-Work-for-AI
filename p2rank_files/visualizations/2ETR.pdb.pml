
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
        
        load "data/2ETR.pdb", protein
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
 
        load "data/2ETR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [820,821,1636,692,1625,691,693,819,640,641,2936,634,638,1285,1286,1287,643,1234,1235,1651,1653,1728,1087,1239,1088,1262,804,1257,1260,1652,2938,2940,1261,1729,1733,1735] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [6453,6455,51,52,53,54,6464,77,3802,14,15,16,4383,9,37,44,45,4385,40,41,12,3444,3785,6457,6459,78,3789,3779,3795,3796,3799,88,3436,3437,3362,3372,87,111,3368,3370,6473,6474,3391,6452,3431,3443,3445] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4542,4544,4883,4909,4911,6200,6198,3945,3947,4493,3946,3892,3888,4991,4985,4987,4986,4492,4058,4910,4515,4519,4520,4497,4345,4073,4074,4075,4993,4894,3900,3894] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1758,1597,1613,1735,935,937,670,672,936,938,939,673,1749,1752,983,1736,663,662,820,821,1636,1614,1750,1751,923,924,934,1753,1877,910,906,908] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4176,4192,4174,4175,4193,5124,3924,3926,5007,5009,5016,4994,4855,4194,4196,4074,4075,4993,4894,3916,4871,4872] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3684,3685,159,162,3683,197,3150,3155,3157,991,992,961,962,963,964,955,956,957,958,959,960,3682,140,142,151,1000,1001,1032,176,135,177,3172,3182,191] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [876,888,910,913,919,909,911,912,884,3134,3626,3650,3615,3130,3132,3133,960,926,929,950,951,925,3648,3145,877,939] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [796,798,1110,1113,1115,1116,3267,3269,1126,1127,797,760,759,778,779,780,3279,736,3222] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [3409,3416,4217,4220,4222,6411,6418,429,431,4221,3413,4214,4215,4216,4213,444,3408,3389,3394,3395,3404,3405,3396,3451,4250,6433,4249,4257,4258,4259,4290] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1187,1189,1190,1191,3007,3008,3009,2986,686,2992,2993,2994,675,3016,3017,562,683,829,685,701,702] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [306,308,3054,3048,3049,3053,3038,3039,3033,3035,1165,3117,3120,1166,1169,265,266,268,3034,281] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [15,16,4383,4384,4385,3990,3992,4013,4014,4032,4033] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [2040,2042,2583,2603,2604,2605,2587,2612,2607,1508,1527,1529] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [579,575,743,577,3295,3252,738,737,748,752,3293,3266,3268] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4646,4645,4644,4685,4687,6097,6082,6095,6077,6002,6004,5991,5992,4676,4678] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1275,1312,1309,2928,2929,1349,1351,1317,1660,1339,2841,2851] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3956,4083,4419,4467,4469,4445,4447,4436,3816,3815,3837,3838,3860,3955,3859,4066] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
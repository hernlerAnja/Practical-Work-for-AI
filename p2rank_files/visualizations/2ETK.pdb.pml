
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
        
        load "data/2ETK.pdb", protein
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
 
        load "data/2ETK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [821,1733,1735,693,819,820,1625,1626,1636,1729,1234,1235,1728,1651,1653,804,1257,1261,691,692,634,638,2936,2938,2940,1260,640,1652,1286,1239,1262,641,643] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3900,4884,3888,4544,4911,6198,6200,6203,3899,3909,3894,3945,3946,3947,3892,4074,4075,4993,4493,4073,4492,4987,4991,4984,4985,4986,4889,4894,4883,4910,4515,4345,4058,4497] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [45,47,78,77,81,82,6453,6454,6455,6456,51,53,6452,52,54,6464,88,111,86,87,85,6474,40,41,3779,12,14,16,44,37,3802,9,15,3436,3437,3444,6457,3431,3443,3445,3795,3796,3799,6459,3785,3372,3362,3368] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [958,960,929,3684,3130,3133,3134,3648,3647,3649,3626,3650,3145,888,875,877,882,876,925,905,911,919,950,951,3132] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [667,670,672,662,663,1614,923,924,937,939,940,908,910,673,1751,1752,934,935,936,938,1749,1748,1758,1597,821,837,1735,1736,820,1636,1613] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [159,140,141,142,162,151,177,197,3150,3683,3684,3685,3682,958,960,3157,992,955,999,1000,962,964,3155,3172,956,957,959,961,963,135,3182,1001,1032] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4193,4194,4196,5016,3910,3911,3916,3924,3926,4175,5009,4074,4075,4993,4994,4855,3909,5007,5008] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3413,3414,3416,3409,3405,4259,3395,3396,3404,3408,4217,4220,4222,6418,3389,4249,4250,4213,4214,4258,429,4221,4215,431,6411] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3519,3520,6380,3535,6294,6369,6303,4427,4423,3522,3560,3562,6310,6299,6300,6301,6327,6360,6372] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [778,797,798,779,3267,760,3279,736,759,3269,1126,1127] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3244,3303,3304,3308,3302,3306,3305,3307,3269,1126,1127,3222,3267,3272,3276,3279,3246] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [561,583,716,812,701,702,601,606,605,562,1209,1211,829,1189,3008,3009,686,1187] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [737,752,753,3266,3293,3198,3197,3268,579,542,578,3295] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4846,5014,5109,5122,5123,5118,5121,4841,5135,5208,5210,5232,5016] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3859,3860,3837,4083,4419,4467,4469,3814,3815,3816,4066,3955,3956,4447,4445,4436] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
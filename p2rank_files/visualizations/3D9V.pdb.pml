
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
        
        load "data/3D9V.pdb", protein
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
 
        load "data/3D9V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [655,1625,1653,643,1235,691,692,693,640,633,634,638,2936,2938,1286,646,1729,820,821,982,1733,1735,819,804,1239,1652,1260,1257,1251,1234,1728] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4493,3946,4910,3890,3892,3945,3888,6198,6200,4073,3899,3900,3908,3909,3897,3947,3894,6226,6206,4884,4887,4881,4883,4911,4544,6203,4987,4985,4986,4492,4991,4074,4075,4345,4058,4497,4515,4509] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [45,47,49,111,77,6455,51,52,53,54,6453,4383,50,6464,44,41,37,40,12,14,16,35,36,3802,4385,15,25,3785,3444,3445,3786,3795,3799,6457,6459,3466,3789,78,3784,3778,3779,3796,3373,88,86,87,3362,3368,3372,3370,3436,3437,3431] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [837,820,821,1733,1735,1734,1736,819,1597,1614,1636,1888,662,663,670,658,674,655,693,1751,935,937,1758,1749,936,938,940,1596,1598,672,939,673,910,923,924] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [992,955,999,956,962,964,197,3155,3157,3172,3150,957,958,959,960,961,1001,1000,140,142,143,144,1032,151,135,3182,191,162,161,3682,3683] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3133,888,925,908,3626,3145,877,875,882,884,876,939,910,3684,3685,3130,3132,960,926,929,950,951,937,3648,3650] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3912,5146,3916,5140,4091,3917,3924,5009,4193,4194,4196,4198,5016,3926,4175,5007,4855,4993,4894,4994,4872,4074,4075,3909] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3411,444,4217,4219,4220,4221,4222,6411,6418,4213,4214,4215,4216,3415,3414,3416,3409,3412,3413,428,429,431,4218,4249,4250,4257,4258,4259,4290,3396,3404,3405,3451,3389] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1209,812,826,829,678,683,1211,561,562,701,685,702,1190,1189,1191,3008,3016,3017,3018,675,684,686,2986,1187,1188] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3267,3279,759,760,779,778,3269,1127,736,1126,797,798] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        

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
        
        load "data/6U2H.pdb", protein
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
 
        load "data/6U2H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4317,4319,4323,4324,4686,4713,4715,4339,4687,4690,1683,1684,1685,4312,4315,4314,3757,3763,1621,3766,3771,4298,4294,4297,1774,3761,1772,3758,4290,4291,4292,4717,4796,4797,4800,4801,3769,3773,3906,4803,3810,3904,3770,4697,4151,4152,4153,4154,4269,3809,3900,3892,4255,4270,3907,4075,3908,4049,4150,4351,1742,1714,1567,1735,1736,1737,1741,1716,1739,1740,4350,1748,4349] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [6100,6104,6107,6008,6009,6010,6106,5973,6108,7000,7001,7003,6897,5963,5969,6511,5957,5960,6512,6491,6492,5961,6523,6913,6889,6915,6917,6513,6514,6515,6519,6353,6474,6494,6912,6351,6352,6354,6914,6916,6092,6490,6469,6470,6350,6275,6996,6997,6090,6091,6452,6274,6248,6497,6498,6921] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6685,6686,6688,6687,6718,6719,6720,6721,4741,4742,6959,4735,4744,6966,6710,7969,6709,7946,4286,1807,3831,3879,3880,4304,4305,6740,3862,6742,6967,6329,6330,6337,3873,3877,3843,3844,3870,4283,3876,6655,8029,8031,1809,1812,1814,6652,7968,6654,1840,1841,1842,6650] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [5831,2199,2200,2234,5808,5809,2812,2841,5810,5814,5818,5822,5823,5806,5811,2197,2201,2820,2838,2850,2852,2818,2208,3182,2781,2783,3180,2779,2178,2179,2169,3498,3172,3527,3171,2232,2233,2887] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [6504,6944,6500,6080,6486,6505,6507,5684,6935,6480,6077,6076,6073,6472,6483,4128,6934,4137,4129,4138,4122,4540,4542,6475,4123,4486,4487,4488,4519,4520,4521,4510] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4364,1784,4318,4354,1746,1749,8053,1723,1757,1720,4363,4751,4752,4362,4408,4409,4393,4392,4310,4303,4305] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [8070,8071,8072,961,962,1384,1326,1331,960,8067,1002,991,968,1001,1036,1037,384,382,8092,932,933,8093,351,931] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4783,6932,6330,6983,6982,4732,4734,6966,4759] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1617,1682,1683,1684,1685,1640,4342,4343,4688,4689,4690,4676,1679,1680,1681,1654,1648,1652,1655,1658] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5883,5888,5893,5895,5915,6403,6402,6448,5913,5912,5914,5908,5911,6098,6116,6425,6424,6115,5929] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4079,4083,4084,3648,3657,3660,5857,6279,6281,6282] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4875,4910,4887,4889,4896,4897,5284,5254,5255,5283,4342,4343,5190,1655,1656,1657,1658,1659,5202,5228,5236] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4128,4129,4138,4122,4540,4542,6070,6475,4121,4123,6381,6380,6062,6480,6077,6076,6073,6472,6483] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3712,3715,3708,3711,3916,3695,4202,4203,3688,3693,4225,3683] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3404,3405,3408,3434,3435,3436,3104,3105,3191,3378,3380,3376,3401,3403,3074,3076] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
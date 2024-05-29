
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
        
        load "data/6XAG.pdb", protein
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
 
        load "data/6XAG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4694,4696,4698,4304,4670,4671,3755,3758,3761,3763,4278,4279,4273,3752,3748,3749,4275,4271,4272,4250,4251,4029,3885,3889,3765,3791,3887,3888,4132,4134,4131,4133,4135,4697,4678,4781,4782,4777,4778,4785,4784,3873,3790,3881,3789,4234,4236,4055,4056,4333,1683,1684,1685,1711,1714,1716,1621,1619,4292,4293,4295,4296,4297,4300,4330,4331,1748,1713,4305,1741,1567,1569,1599,1737,1740,1774,1773] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [6484,5960,6499,6900,6902,5966,6079,5963,6478,6477,6479,6899,6901,6903,6904,6510,6876,6340,6341,6461,6481,6485,6235,6261,6094,6095,6983,6987,6984,6456,6457,6442,6091,6439,6087,5967,5995,5996,5997,5969,6093,6988,6990,6337,6262,6501] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [6729,3861,3825,7915,7911,7946,7947,4264,4281,4725,4267,3858,3812,4715,4716,6953,6675,6706,6707,6708,6946,6673,6674,6696,6697,6672,6727,3854,6317,6316,4261,3857,6324,6325,6954,1804,1833,1838,1840,1841,1842,1807,1814,7937,7944,4285,4286,4288,6641,6642,6637,6639,7938] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6970,6466,6969,4111,6465,6954,4259,4260,4763,4764,4143,6349,6317,6312,4722,6953,4747,6920,6922,4748,4710,4713,4715,4721] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2178,2200,2201,2782,2783,2820,5820,2781,5817,5821,2812,2841,3178,3203,2811,2818,3498,3527,3171,3170,3175,3176,3180,3182,2168,2169,3172,2197,2198,2199,2230,2232,2233,2234,2887,2838,2852,2850,5825,5828,5830,5831] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4657,4891,4886,4888,4668,4655,4671,4921,4906,1679,1652,1640,1655,1657,1658,1659,1681,4322,4323,4324,5201,4907,1683,1684,1685,1680,1682] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [4747,6922,4740,4748,4467,4468,4469,4490,4491,4499,4502,6491,6492,6931,4110,4523,6067,6473,6064,6921,6470,6063,6467,4118] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5976,6197,6198,6201,6204,6206,6236,5978,6108,6110,6111,6104,6426,6173,6170,6172,6200,6199,6443,5971,5972,5980,5981,6092,6089,6094,6090] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3995,3998,4220,4221,3966,3964,3905,4237,4000,4799,3993,4030,3888,3770,3771,3774,3773,4797,3902,3904,3884,3892,3898] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [382,8032,8036,961,8040,8041,960,962,1330,384,1001,1002,351,968,988,991] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [4334,4373,4291,4344,4299,4731,4732,4733,4389,4374,4289,1757,1784,1783] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [6103,6412,6413,6435,6389,6390,5886,5891,5896,5915,5916,5917,5918,5932,5914] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3074,3076,3099,3104,3106,3189,3401,3404,3405,3402,3403,3435,3436,3408,3191,3378,3376] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [3704,3707,3703,3706,3897,3721,4243,3879,3675,3680,3685,4206,4207,4229,4183,4184] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [6525,6529,6530,6874,6877,6526,6528,7421,6861,7141,7127,7108,7111,6863] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
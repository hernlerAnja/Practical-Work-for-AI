
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
        
        load "data/6RU8.pdb", protein
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
 
        load "data/6RU8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2520,2524,2525,3556,3552,3554,3555,2672,2782,2783,2784,2817,2818,2528,2533,9759,9761,3557,3560,3561,3562,3563,2521,3422,3433,2509,2515,2516,2518,2562,2563,2564,2511,2655,3012,3452,3453,3034,3031,3013,3017,3036,3037,3054,2513] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [6820,6821,6817,6212,6661,4258,6633,6629,6630,6631,3869,6620,6643,6816,6220,4443,4445,4413,4439,4283,4284,4286,4279,3834,3836,4255,4256,4252,4272,4273,4276,4268,4254,3844,3845,4435,4436,4437,4456,4454,3926,4460,3960,6794,6659,6647,6648,6651,6642,6654,6675] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [1861,1863,1435,1468,2044,2045,9238,9211,9233,9050,9052,9043,9066,8635,9082,9084,9237,9234,8643,1857,1859,1860,8667,8634,1891,2041,2042,1888,1889,2018,1436,2043,1873,1877,1878,1881,1884,1444,2040,9071,9077,9074,9093] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7349,7351,7813,8256,7298,7300,7348,7350,7442,7838,7834,7295,7296,7302,7305,8359,8360,8354,8355,8358,7574,7607,7608,7458,7459,8350,8353,7815,8361,7311,7312,7308,8255,8254,7837,7883,8225] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [167,1154,1151,1153,259,630,611,612,616,115,117,633,635,636,634,383,1155,1156,1159,1160,1161,1021,1052,113,653,1051,1032,1162,119,120,122,124,129,132,125,128,276,166,168,275,137] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5863,5985,5986,5988,5987,5977,5980,5981,5982,5235,5442,4923,4925,4927,4977,5069,5086,5201,5234,4978,5440,4975,4976,4932,4935,4938,4929,4939,5465,5882,5883,5464,5461,5852,5510] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [3870,4197,1742,6607,1758,1759,1761,4257,4258,6633,6600,6602,6638,6245,6598,6632,6572,1744,4232,1736,4223,4198,4225,4228,4229,4227,4263] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [647,648,1057,1064,1072,1097,1098,1066,1096,687,2354,2356,2369] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [4175,4177,9675,9676,9681,9029,9004,9005,9002,9003,8915,8963,8964,8966,8965,9693,9683,9689,4145,4148,4147,4135,4126,4131,4173,4136,4140,9030] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4768,3465,4783,3497,3049,3473,3088,3048,3458,4770,3499] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1749,1751,1759,1762,1792,1793,9660,6607,1753,3747,9659,9661,3741,3866,1360] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [6543,6574,6575,6579,6580,6492,6541,6542,6540,9602,9608,1731,1740,1736,6567,1782,9610,9620,6581,1750,1745,6606,1752] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5499,5500,5501,5502,5536,5569,6179,6192,6400,6476,9794,9765,9800,9802,9801,9799,5855,5856,5854] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5888,5929,7143,7141,5479,5895,5903,5927,5478,5518,7156] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1403,1628,1630,9637,1415,1416,1025,669,670,671,1023,1024,668,9635,9636,738,1706,9600] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [8300,8302,9567,7891,9554,9552,7851,7852,8261,8276,8268] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [4180,4182,4183,4185,4186,4188,4181,3854,3856,3859,3861,3792,3795,3791,3766,3769,3776,3823,3852,3783,9734,3849,3770,3771] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [7873,7874,7875,8229,9860,8602,8614,8615,9869,7909,7942,8899,8823] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3070,3071,3072,4025,3425,9709,3817,9708,9710,9707,3426,3424] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        

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
        
        load "data/5LIH.pdb", protein
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
 
        load "data/5LIH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3635,3637,2806,2807,2808,2683,2684,2634,2877,2881,2884,3114,3115,2865,2869,2622,2628,4771,3182,4742,4740,4744,4748,4728,2656,2664,2668,2821,2822,2863,2864,3092,4944,4946,2633,2642,2631,3502,3636,3662,5171,5172,2657,2658,2659,2661,2662,3652,2660,3654,5187,5188,3638,3518,5157,5167,2643,2646,3541,5150,3531,5151,3530,3200,3203,3235,4751,2791,3130,4966,4964,2624,2626,4939,3630,3629,3556,3557,3152,3158,3175,3155,3172,3134] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1132,1027,1028,1041,676,5067,5068,5066,108,110,111,120,103,105,160,161,2253,2252,99,101,106,144,119,123,693,694,697,2258,2259,2261,2284,2286,2238,2250,2254,1058,1059,652,649,669,666,284,285,286,1137,1138,1139,1140,145,136,1154,349,351,1156,624,1131,129,133,134,137,141,342,269,628,646,1015,5074,5065,5081,1164,5089,5084,128,138,139,5103] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [925,1411,1413,1908,1903,1905,1906,1907,1910,1912,1920,1921,1924,1211,1215,1217,1218,1444,1447,1861,1862,921,922,929,923,897,930,933,1951,1947,1928,1944,1913,1927,1404,1400,1401,1406,1415,1416,1408,1224,1235,1389,1419,1420,1386,1863] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3910,3912,3702,3707,3710,3713,3714,3720,3913,3711,3425,3433,3694,3946,3903,3905,3907,3914,4400,3428,3400,3424,3426,4419,4420,4433,4437,3918,4355,4357,4356,4402,4403,4404,4405,4406,4407,3915,4409,4412,4410,4413,4416,3899,3900,3901,3919,3731,3888,3882] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [707,740,759,760,761,2163,708,2160,2161,833,834,793,795,2158,2159,768] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1299,5048,692,5045,5055,5058,1022,1523,5051,1311,1312,1300] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3796,4063,4089,5141,5128,3794,3795,5158,5159,5160,5162,3198,4022,5134,3807] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3267,3266,3275,3268,3336,3337,3296,3298,4645,3564,4646,4647,3213,3217,3247,3219] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        

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
        
        load "data/7AJS.pdb", protein
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
 
        load "data/7AJS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3195,1234,1236,1530,1534,1535,1235,1253,1392,1393,1276,1251,1265,1266,1267,1269,1567,490,487,491,1410,1413,1481,1483,1414,1406,398,399,521,1482,493,464,2798,3178,238,239,244,231,234,247,249,2791,2796,2797,2776,2777,2785,2786,2789,224,3194,1523,1524,1531,1536,1578,1540,1543,1544,1547,1552,1553,1554,1555,1556,1557,2770,1499,1500,1501,1514,1521,1480,3182,3193,2790,2788,3186] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1387,1390,1393,1276,1383,1384,1385,1386,395,832,834,829,382,839,688,858,859,1264,886,1292,1293,853,855,856,864,857,397,399,522,835,212,218,215,216,250,270,269,249] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2992,2993,2985,2988,2978,4008,27,28,30,31,32,37,39,465,466,440,441,4250,4270,4273,4274,18,29,439,428,11,3995,3996,4011,3994,17,22,23,4012,4263,4275,4283,4286,4306,4291,4292,4293,4294,4296,4244,4242,4131,4145,4146,4147,4148,3001,3003,2998,3153,4019,4132,3978,3979,4152,4153,4257,4259,4260,3218,4220,4222,4224,4225,4239,3216,3220,3275,3247,3250,3239,3241,3242,3246,3213] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3607,4035,4122,4123,4124,3602,4036,3003,3004,3151,3153,4019,4125,4126,4129,4132,3022,3024,3023,3149,3136,3596,3599,2970,3595,3431,3572,3582,3430,3573,3575,3577,3578,4007,4008,3629,2978,2969,2972,2973] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1667,1698,1673,1674,2656,2662,2676,2665,2666,2667,2668,2669,1442,1665,1671,1672,1669,1159,2675,1158,1668,1663,1677,2622,1661,1662,1664] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
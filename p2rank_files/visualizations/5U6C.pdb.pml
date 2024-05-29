
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
        
        load "data/5U6C.pdb", protein
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
 
        load "data/5U6C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1230,1231,612,613,350,743,763,1213,1306,1307,1308,1311,1314,760,177,178,758,1229,766,793,796,1202,1211,1216,802,231,232,362,364,348,351,353,358,182,366,173,174,175,179,180,181] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2865,2895,2679,2898,3331,3332,3333,2678,3408,3409,2863,2864,2868,2337,2338,2339,2341,2490,2845,3415,3414,3416,3413,2343,2344,2345,2370,2372,2371,2850,2861,2904,2902,3304,3318] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2846,3414,3410,3411,3412,3417,2521,2556,2558,2845,3415,2503,2520,2828,2829,2830,3419,3425,3420,2604,2605,2578,2579,2581,2676,3409,3426,3427,2675,2706,2709,2583,2586] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1852,1853,1618,938,939,3933,3934,3943,3944,3945,880,882,883,2984,2985,3698,1616,2982,878,879,3693,3696,3697,1601,1604,1605,1606,2980,2981,1617,3038,3040,3710,3708] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3725,3730,3715,3716,3717,3718,3722,2958,1624,1626,1633,1636,1637,1638,1623,1625,883,2985,1630,2922,2957] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
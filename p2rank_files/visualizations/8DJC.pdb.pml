
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
        
        load "data/8DJC.pdb", protein
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
 
        load "data/8DJC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3707,3813,2898,2897,2899,2988,2989,3805,3806,3810,3811,3812,2791,2737,2740,2790,3254,2882,3665,3826,3827,3829,3696,3305,3695,2736,3331,2757,2763,2764,2767,2768,2769,2770,2766,2914,2772,1744,1736,1737,3828,3834,3684,1726,1745,3667,2771,2773,2742,1720,3700,3723,3724,3255,3804,3094,3095,3279,3272,3021,3293,3285,3286,1769,2762] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [244,245,246,336,194,196,351,1179,731,546,711,706,1154,1155,1163,1261,1180,1260,1262,1263,1266,1267,1269,545,352,353,757,737,738,745,226,228,198,224,192] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4292,4293,217,4317,215,218,222,224,216,219,4274,4284,4285,226,228,4268,1267,1268,1269,353,1282,1155,1163,1125,1142,1290,1283,1284,1141] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1444,1445,1446,4029,1374,1378,1381,1727,1754,1753,3929,1481,1473,3924,1728,1409,4264,4270,4271,4275,4276,1410,1413,3992,3993,3994,4021,1716,3926,3921,3922,3925,3961,4302,4301,4032] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [793,882,829,914,915,916,831,794,1201,1200,951,952] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3742,3745,3744,3494,3454,3455,3456,3457,3458,3342,3341,3424,3375,3377] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [252,173,148,150,609,25,26,683,253,256,257,255,362,628,627] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3231,2562,2695,3158,2718,2693,2799,2889,2908,2801,2800,2802] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
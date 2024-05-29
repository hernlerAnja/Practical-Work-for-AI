
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
        
        load "data/6RSD.pdb", protein
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
 
        load "data/6RSD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [211,1233,1234,355,356,357,358,484,192,193,194,195,196,175,188,190,185,171,181,423,372,457,411,428,426,1249,1250,1258,1087,1252,1273,1235,1248,447,448,450,1274,1385,1388,1389,1390,1392,1359,1415,1096,1097,1432,1257,160,161,167,168,169,1133,1416,1419,1124,1430,1122] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [148,149,150,152,153,155,1128,1133,1232,1148,1149,1227,729,732,724,726,210,342,708,211,1233,1234,209,1235,1119,759,751,758,784,750,740] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2534,2673,2473,2475,2478,2532,2533,3433,3527,3532,3533,3534,3448,3428,3058,3419,3051,3449,3085,2471,2472,2476,3083,3084,3008,3032,3050,3029,3024,3026,3040] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2494,2491,2483,2484,2490,2515,2516,2517,2518,3397,3557,3550,3558,2746,2745,2747,2727,2703,3396,3424,3433,3533,3534,3535,2534,3422,3548,2686,2687,2688,2689,2784,2755,2757,2500,2511,2513,3716,3719,3704,3688,3690,3692,3715] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4051,4066,3762,4063,4050,3423,3763,3074,3075,3076,3976,3421,3422,4065] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1893,4193,4218,4249,4251,3817,1918,1951,3813,3816,4190,1515,4220,4221,4226,3815,1926,1517,1516] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1462,1463,775,776,1750,1751,1765,1766,1763] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1394,1388,1087,1374,1375,1530,1086,1425,1474,1501,1475,1550,1421,1257] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
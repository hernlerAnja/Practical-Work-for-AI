
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
        
        load "data/4BHN.pdb", protein
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
 
        load "data/4BHN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1068,1057,1166,1167,150,144,1175,155,156,162,163,203,322,675,676,679,683,1084,305,506,637,638,642,649,657,1083,661,202,145,147,148,656,660,321,1168,1172] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3119,3120,2164,2165,2166,2170,2695,2699,2169,2698,2544,2714,2717,2222,2223,2326,2168,2675,2680,3093,2174,2177,2171,2184,2176,2224,3211,3202,3203,3204,3208,3104,2721,2722] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1921,1922,1935,1884,1904,1396,1400,1405,958,1401,1402,1404,1918,1428,960,1927,970,1406,1409] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2452,2479,2480,3032,3011,2450,2455,1359,2481,2484,2447,2482,1895,3249,1879,3012,3013,1374,1377,1358,3014,1379,1886] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2481,2483,2484,2485,1894,1883,1884,1393,1394,1396,1400,1405,1401,1402,1229,1379,1409,1885,1886] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2884,2864,2897,2898,2793,2814,2886,2788,2790,2791,2859,2862,2863,2839,2887,3140,3138,3162,3163] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3420,3911,3925,3928,3418,3419,3425,3426,3448,2996,3930,2994,3422,3424,3006,3942] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [751,752,753,757,754,755,1096,1102,1103,1104,1105,803,827,828,862,861,850,778] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
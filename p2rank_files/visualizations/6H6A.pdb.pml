
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
        
        load "data/6H6A.pdb", protein
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
 
        load "data/6H6A.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1966,2245,2247,2851,2852,2496,1742,2226,1945,1946,1721,2883,2891,2892,2493,2494,1719,2074,2495,2497,2849,2244,2210,2012,2508,2002,2004,2516,2064,2512,2513,2515,2517,2617,2870,2524,2314,2312,2340,2243,2341,2681,2523,2538,2539] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [878,879,1045,782,785,783,1390,850,852,781,1220,1409,1044,1422,1235,1391,1046,1048,763,764,765,1431,1063,1066,1065,1067,1089,1156,1074,1075,292,603,274,276,275,291,293,518,519,497,498,1388,1430,1068,547,549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [3908,3642,3910,3912,3643,3909,3911,3913,3626,3930,3907,3929,3931,3932,3933,3736,3939,3940,3185,3186,3187,3480,3170,3434,3954,4014,3661,3663,3728,3730,3424,3426,4267,3388,3389,4246,4248,4249,3367,4280] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1357,152,455,156,160,162,163,453,191,188,1329,1338,1339,1334,447,1439,235,445,224,244,246,237,1453,1448,1452] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1675,1678,2800,1636,1669,1679,1680,1682,2900,1895,1689,2819,2818,1901,1894,1605,1607,1608,1633,2798,2799] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3317,4298,4300,4302,3325,3054,3057,3056,3050,4215,4216,4199,3323,4196,4197,3118,3129,3085,3082,3131,3135,3138,3134,4192,4195] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
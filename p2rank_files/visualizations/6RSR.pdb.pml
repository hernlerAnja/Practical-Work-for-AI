
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
        
        load "data/6RSR.pdb", protein
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
 
        load "data/6RSR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [958,1167,911,960,1125,957,1164,2531,2536,1439,2519,2565,2570,2573,2572,2633,2635,2617,895,1400,600,639,641,308,838,913,735,2620,601,306,307,1438,683,684,680,686,668,2550,2542,2545,961,1109,2552,1024] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2300,2256,2298,2299,2521,2522,2534,2536,1127,1532,1521,1583,243,246,248,249,244,245,261,262,345,568,1452,346,1436,597,1437,1438,263,264,268,285,601,599,1487,1488,1489,1484,1497,1498,1520,1472,1470,2261,2264] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4714,4716,4722,6568,6570,4715,4724,4725,4744,4746,4747,3875,3876,3893,3896,3903,3907,5881,5904,5908,5891,5907,5924,6430,6431,5927,6391,6456,3827,6548,6493,6494,6495,5623,5627,1771,1775,3865,3854,3863,4702,4704,4730] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [2535,2536,2537,601,302,306,307,316,318,319,320,263,264,268,270,271,285,286,292,262,346] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1611,6275,6276,3096,1612,1565,3050,3051,3118,3116,2705,3117,2688,2689,2224,1567,3101] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [4286,4289,2054,2056,2051,2055,1990,2898,1988,4283,2884,2886,2843,1958,4338,4340,1956,2000,4355,2004,2001,2007,4285,4282] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [520,552,553,554,1184,1185,436,437,438,439,440,498,1187,1419,111,1203,110,1236,95,1183] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4655,9459,9476,9543,6776,4634,6639,6707,4632,6709,9411,4630,4647] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3172,3597,3598,3599,3815,3814,3845,3105,3816,3031,3085,3104,3579,3768,3784,3580,3767] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1565,3050,3051,3118,3116,2705,3117,2688,2690,3096,3101,3111] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [43,1348,188,332,364,366,620,656,657,658,1346] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [8236,6471,6526,6527,6528,6529,8134,8239] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2745,2772,2775,2833,2834,4194,2853,2835,2836,2868,4167,4191] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
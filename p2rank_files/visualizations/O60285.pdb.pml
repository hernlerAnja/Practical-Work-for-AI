
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
        
        load "data/O60285.pdb", protein
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
 
        load "data/O60285.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [633,634,1577,1578,1579,631,800,1592,1593,1594,1595,1598,1600,501,465,467,472,500,496,497,499,481,482,492,4536,4529,476,483,484,473,495,646,648,767,486,490,754,756,762,485,1479,4493,4499,4513,1437,1453,1454,459,460,4494,902,903,904,1494,1570,1572,1573,1575,1495,1467,1039,1044,1056,1065,616,511,513,514,453,454,455,457,1092,458,1038,632,833,832,1061,1090,1082,1085,1466] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2255,2256,2438,2441,2452,2448,2254,2653,2655,2662,2663,2667,2669,2409,2293,2297,2407,2296,2433,2636,2289,2290,2291,2292,2294,2287,2320,2691,2693,2694,2695,2698,2699,2637] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1758,1760,1747,1111,1113,1470,1109,1461,3670,3675,3676,2014,2013] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4527,4531,4537,1602,1723,1721,1705,1706,4532,4534,4540,4542,4544,1594,1607,1599,1615,1429,758,760,761,791,759,1711] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [868,871,1347,1349,1322,1323,2540,2548,1343,1344,2544,2546,1353,1380,1382,2549,2551,2553] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [5188,5189,5190,5220,2716,2719,2707,2708,2754,2742,5167,2718,5210,5212,2751] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2671,2675,2703,5158,2668,5188,5190,5157,5159,2705,2706,2708,5134,5136,5165,5167] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
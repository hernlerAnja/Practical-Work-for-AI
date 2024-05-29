
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
        
        load "data/6VNJ.pdb", protein
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
 
        load "data/6VNJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2628,2873,2874,2631,2633,2876,3761,3767,3769,3768,3913,3920,2626,2817,2911,2902,2901,2904,3784,3785,3593,2905,2906,3908,3900,2624,2613,2616,2620,2622,2612,2635,2636,2637,2638,2601,2603,2605,3759,2943,3763,3743,3744,3746,3627,3641,3631,3603,3602,2799,2800,3745,2651,2600] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2609,2610,2611,2825,2588,2590,2589,2586,2822,2824,2826,2229,2231,2809,2232,2660,2808,2564,2223,2221,1371,1367,1368,1369,2582,2225,2226,2227,2561,2563,1577,1380,1382,1578,1563,1600,1601,1602,1603,1604,1607,1595,1079,1055,1056,1057,1058,1059,2224,1329,1594,1529,1530,2278,2248,1628,2259,2264,1032,1033,2287,2288,1064,2267,2269,2574,2577,2568] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [124,125,127,130,131,179,180,181,314,725,128,724,1274,1275,1276,329,133,143,149,142,146,1187,1188,775,778,782,1157,751,750,1268,1273,1171,729,747,743,580,810] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2599,2594,2593,2595,2597,2598,3213,2600,3252,3253,3280,3248,3658,3745,3738,2649,2650,2651,3195,3743,3627,3641,2784,3657,3217,3050,3199,3245,3220] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1315,434,1432,1434,1431,432,431,399,401,157,347,405,149,150,154,403,407,1291,1299] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1498,1499,1703,1705,1798,1160,799,800,1751,798,1790,1791,1805,1804,1162] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2190,1640,2000,1830,1829,2047,2048,2192,1479] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
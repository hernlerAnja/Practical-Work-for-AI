
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
        
        load "data/4N7V.pdb", protein
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
 
        load "data/4N7V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1753,1754,923,930,933,934,938,941,3732,115,116,118,3601,3603,94,110,114,939,940,964,965,1046,1769,1771,3582,3581,1770,1759,3594,3612,3613,3600,1783,3643,3651,3652,3703,987,988,1031,1032,1801,3676,3701,3733,3667,3668,3702,3640,3644,3636,3648,1800,1785] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2807,2813,2804,2827,1710,1713,1714,3390,1701,1715,1719,2786,2806,3353,3354,3327,3329,3334,3335,3333,3358,3359] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1520,1012,1013,1014,1015,1016,1017,1011,1494,1496,1495,1181,1461,1497,1485,1486,1458,1178,1482,1519,1159] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2625,2514,1855,2521,1830,2519,1828,2590,2592,2593,1822,1826,1850,1858,1848,1849,2586,2623,2611,2584,2587,2588,2544,2589,2591] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2968,2970,3306,3333,3293,3294,3304,2966,3297,3308,2991,2828,2822,2823,2824,2826,2827,2825] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1559,1560,1592,1593,1094,1244,1084,1093,1095,1097,1101,1054,1615,1614,1100] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1214,1127,1128,1129,3758,3759,3761,1278,1279,3726,1148,3721,1295,1145,1197,1199,3719,926,927,1217,1219,1215] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [949,1642,1643,1747,950,1612,1613,1614,1085,97,1070,1669,99,1670] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1085,950,84,1070,99,910,911,74] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [918,1079,1108,919,1109,1219,1076,1096,3796,882,894,883,884,1235] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3479,3480,3481,1910,2761,3558,3425,3453,3454,1896,1897,2881,1898,2879,2896,1885,2721,2722,2877] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
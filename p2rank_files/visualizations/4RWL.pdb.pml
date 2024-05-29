
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
        
        load "data/4RWL.pdb", protein
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
 
        load "data/4RWL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1791,1796,1661,1649,1658,1672,3872,4006,4010,4011,4012,4013,1660,3985,3986,4017,1809,1794,1795,1802,4016,3790,1798,3874,3875,3857,3999,4002,4003,4009,3863,3865,4023,4024,1576,1788,1633,1643,1644] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2532,2530,2533,2535,2904,2423,2424,2425,2540,2547,2548,2544,2908,2915,2926,2929,2373,2375,2379,2377,2378,2785,2787,2707,2903,2706,2675,3431,3435,2705,3423,2374,3430,3346,3347,2947,2957,2984,3317,3424] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [335,449,331,334,187,556,557,674,678,480,319,696,159,161,186,185,162,1088,1194,1195,1102,1201,1202,1118,1117,699,717,158,658,673] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3998,4003,4005,3866,3867,3921,3955,4152,4147,4150,3956,3980,3562,3555,3560,3585,4151,4149,3732] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1515,1548,1518,1937,1939,1354,1652,1377,1741,1788,1790,1783,1653,1765] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3534,2972,2973,3532,3518,3514,3506,3507,2970,3579,3322,3580,3801,3314,3318,3319,3320] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1323,1635,1317,3971,3972,1359,1668,1669,1291,1319,1335,3913,3948,3940,1656,1659,1662,1663,1664,1666,3912,3914,1673] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3870,3567,3880,3882,3883,3887,3888,3876,1698,1699,1700,3877,3878,1733,3525,3527,3849,3543] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1089,1090,1296,1297,1310,1091,1093,1298,1586,1324,1322] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
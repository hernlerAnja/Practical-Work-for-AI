
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
        
        load "data/4F63.pdb", protein
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
 
        load "data/4F63.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3672,3675,3712,3710,3891,3894,3887,3889,3748,3750,3742,3888,1813,3726,3729,1789,3732,3759,3760,3757,3707,3709,3917,3915,3912,3906,3909,3902,1592,1807,1812,1649,1676,1677,1659,1660,1806,1809,1788,1665,3895,3896,3897,3898,3871,1817,1814] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2895,3257,3258,2898,3228,2338,2343,2344,2345,2346,2871,2870,2887,2888,2891,3330,3331,3332,3333,3339,3242,3337,3338,2845,2619,2651,2496,2849,2728,2863,2867,2482,2341,2379,2495,2378,2380,2342,2339,3348,3349,3350] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [677,695,1099,1100,161,169,656,663,674,290,180,179,181,670,162,164,165,1176,1177,1183,533,534,459,535,303,304,305,652,427,306,1070] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3873,3883,3647,3617,3865,3841,3888,3450,3751,3752,3806,3890] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1678,1679,1662,1680,1682,1684,1685,1375,3797,3798,3799,1306,1307,1351,1651,1672,1675,1690,1693,1650,3833,3856,3823,3824,3825,3857,1335,1338,1339,1333,1332,1331] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1668,1669,1806,1791,1801,1783,1534,1757,1758,1564,1370,1531,1393] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1045,1046,1047,1048,1357,1358,1314,1261,1260,1259,1033,1396,1395,1184,1207,1217] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2618,2589,2590,2593,2595,2585,2562,2588,2619,2496,2368,2380,2362,2365,2361,2512,2565,2358,2360,3360,3361,3362,3337] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
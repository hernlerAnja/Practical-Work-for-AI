
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
        
        load "data/7V29.pdb", protein
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
 
        load "data/7V29.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3587,3480,3494,3495,3586,3591,3593,3594,3617,2462,2458,2461,2648,2455,2456,2457,2453,2454,3004,2436,2438,2486,2485,2487,2644,2646,2442,2443,3020,3008,3023,3509,3510,2632,3019,3740,3743,3050,3484,3485,2435,2441,3040,3043,3456,3628,3458,3772,3771,3773,3626,3670,3443,3457,3756,3671,3672,3666,3669,3676,3809,3727,3728,3729,3754,3708,3629,3631,2807,2776,2774,2808,2882,2884,3003,2988] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [768,775,1184,1213,1214,1298,1290,1291,1296,765,745,748,733,744,607,609,729,533,183,186,187,371,373,1297,210,211,212,369,357,532,499,500,501,728,713,166,167,168,169,172,160,161,163,1198,1320,1189] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2821,1469,3404,1493,1777,1800,1801,1772,1426,1425,1492,1813,1819,1825,3371,2835,3369,2838,2841] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1772,1773,1767,1451,1493,1777,1469,1492,1491,1505,1506,1779,1780,1457,1453,1456,1463,1467,1468,790,791,792,1444,1187,1724] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1159,1162,1199,1335,1198,1333,181,1320,1185,1447,1458,1460,1431,1432,1188,1189,1298,1295,1330,1160,1433,1475,1476] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3753,3754,3747,3749,3752,3759,4020,4076,4063,4069,3801,3788,3789,3065,3066,3067,3482] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3283,3284,3263,3316,3545,3546,3537,3549,3262] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3951,3982,4087,4377,4379,4221] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1925,1655,1791,2081,2083,2086] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
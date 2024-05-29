
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
        
        load "data/4TND.pdb", protein
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
 
        load "data/4TND.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1915,2038,2039,2545,2544,2034,1617,1604,1912,1913,4015,4016,4019,4020,11,12,4085,4086,1600,9,1598,1599,50,4013,4018,4049,4050,4052,1870,1871,1881,1882,1864,1867,1862,1868,2526,2494,2510,2491,2512,2043,28,29,33,2046,2495,13,14,26,27,22,2054] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1638,1639,1529,1531,1637,1493,1494,1495,1496,1497,1498,2561,2562,1640,2567,2568,2569,1800,2031,2036,1530,1625,1481,3707,1482,1484,2449,2076,2078,2048,2477,2051,2478,1475,1476,1478,2062] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4069,4030,1563,155,1410,1580,1405,1407,1409,146,1399,147,1332,1361,1360,1369,1385,141,1336,143,1374,3992,1937,1939] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1799,1772,1775,1658,1508,1510,2578,2579,1766,1768,2566,1640,2568,1498,1501,1639,2564,1511,1769] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [599,600,355,356,1089,1090,1038,1058,1066,633,597,573,577,439,440,549,572,574,428,430,1118,632,1042,1041,401,346] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2300,2321,2322,2323,3478,3611,2301,3476,2320,2330,3453,3609,3608,3582,3583,3607,3610,3580,1017,1014,2331,1892] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2802,2822,2823,2653,2654,2838,2839,3360,3361,3366,3401,3403,3406,3404,3405,3411,3440,2832,2826,2830,2831,2642,2375,2864,2834] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2524,2525,2526,2528,2494,14,1893,3618,1891,3598,1877,1879,1880,1882] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3640,3635,3543,2245,2214,3637,3633,3636,2238,3555,2237,3544,2243,2209] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3999,1838,1840,1842,1852,4011,1314,4005,4006,1866,1867,4012,334,361,4014,1850,371,374,372] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
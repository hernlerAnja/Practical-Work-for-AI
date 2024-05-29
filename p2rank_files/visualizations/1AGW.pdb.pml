
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
        
        load "data/1AGW.pdb", protein
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
 
        load "data/1AGW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3760,3763,3800,1853,4001,3830,3836,3838,3831,3983,3979,3980,3962,3987,3986,3993,3994,4000,1846,1847,1849,1848,1821,1822,3820,3842,3847,3848,3845,1619,1622,1844,1845,1860,1679,1707,1689,1690,1704,1718,1659,1866,3988,3989,3990,1706,1835,1838,1839,1840,1842,1695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [673,1199,1205,190,318,319,321,554,555,556,1121,173,169,170,171,188,189,695,698,699,677,305,174,1218,475,474,443,476,1213,1215,1216,1217,1198,1092,1106,1204,1206,716,1122] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2936,2954,2957,2961,2383,2389,3331,3332,3408,3302,3409,3316,3414,3415,3416,2933,2937,2915,2922,2536,2911,2429,2549,2550,2551,2430,2387,2384,2386,2388,2428,2927,2794] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3839,3840,3535,3931,3957,3980,3982,3975,4128,4129,3705,3970,4127,3894,3735,3558,3702] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1594,1841,1561,1564,1394,1417,1790,1753,1789,1698,1699,1839,1816] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1705,3923,3913,3915,3948,3949,1681,1333,1357,1702,1708,1709,1710,1715,1399,3886,1359,1332,1375,1714,1720,1723,3921,1355] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1069,1068,1055,1384,1389,1419,1282,1287,1283,1420,1067,1281,1381,1382,1070] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3540,3850,3851,3498,3516,3855,3856,3860,3861,1744,1746,3846,3822,3843,3849,1782,1774,1770,1771,1807,1745,1772,1773,3493,3494,3500,3504,3497,1741] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3212,3213,3658,3659,3661,3663,4214,4218,3672,4200,4203,4202] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1089,1632,741,1093,742,743,1339,1346,1350,1366,1364] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
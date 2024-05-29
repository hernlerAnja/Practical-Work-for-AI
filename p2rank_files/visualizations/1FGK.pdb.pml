
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
        
        load "data/1FGK.pdb", protein
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
 
        load "data/1FGK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1838,1839,1842,1845,1846,1847,1848,1706,1707,1690,1704,1821,1718,3845,3990,3983,3987,3988,3989,3994,3962,3963,1853,1860,3763,3830,3980,3836,3838,3831,1849,3842,3847,3848,3820,3986,3979,3976,4001,3993,4000,1622,1659,1619,1840,1689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [319,673,190,318,320,554,555,1121,556,677,173,174,305,188,189,169,170,171,175,176,698,699,695,1205,1199,716,1122,1198,1092,1106,1204,1206] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2382,2383,2384,2389,2937,3332,2936,2954,3408,3331,3414,3415,3416,2961,2957,2964,3302,3316,2922,2933,2536,2386,2428,2429,2430,2911,2551,2552,2915,2794] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3735,3705,3975,4127,4129,3980,3982,3839,3840,3535,3957] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1561,1594,1564,1394,1698,1417,1790,1789,1841,1824,1699,1839,1834] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1069,1067,1068,1070,1206,1229,1239,1283,1504,1055,1503,1384,1379,1380,1419,1420,1421,1389,1282,1287,1340,1381,1382] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1681,1399,1715,1332,1333,1375,1357,1359,3914,3915,1702,1708,1709,1692,1710,3886,1714,1720,1723,3923,3913,3948] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2397,2398,2414,2401,2411,2405,2406,2408,2628,2391,3440,3438,3439,2646,2647,2652,2653,2656,2625,2648,2623,2550,2552,2658,2681,2430,2548,2412,2413,2415,2409,2568,2626,2659] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3843,3849,3540,1774,1807,3855,3856,3860,3861,3516,1772,1773,3493,3494,3846,3822,3498,3850,3851,3853,1782,1771,1745] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1097,1338,1339,1364,1632,741,1346,1350,1366,1093,1095] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
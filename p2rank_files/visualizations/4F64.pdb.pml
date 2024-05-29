
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
        
        load "data/4F64.pdb", protein
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
 
        load "data/4F64.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3297,2884,2763,3371,2656,2529,2531,2375,2417,2517,2372,2374,2377,2416,2418,2905,3268,2371,2930,3298,2933,2922,2923,3370,3282,3376,3377,3378,2689,2879,2880,2688,2864] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [172,164,165,170,171,685,686,703,1113,1114,682,660,299,188,187,189,168,166,541,542,543,1208,432,464,311,313,314,315,1190,1191,1196,1197,1198,659,465,1084,1098] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3923,1683,3902,3903,3907,3916,3781,3924,3927,1848,3931,1819,1822,1823,1824,1825,1830,1837,1684,1681,3788,1672,1798,1812,1600,1816,1817,1650,1653,1657,1666,1667,1599,1634,1636,1815,795,1633,3703,3706,3707,3926,3920,3779,1826,3760,3763,3773,3790,3791,3919,3937] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1692,1381,1313,1357,1691,1697,1700,3856,3858,1657,1658,1679,3888,3889,3887,3866,3852,3854,3859,1686,1685,1687,3828,3829,3830,1312,1339] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4060,4062,3874,3648,3873,3506,3645,3646,3678,4061,3920,3922,3782,3783,3483,3481,3482,3476,3897,3915] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2532,2533,3401,2626,2622,2625,2599,2602,2394,2396,2399,2401,2402,2400,2382,2385,2386,2389,2393,3400,2627,2630,2632,2549] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1806,1541,1675,1676,1767,1816,1818,1801,1793,1811,1571,1376,1538,1399] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1059,1060,1061,1062,1363,1364,1365,1361,1366,1274,1362,1269,1268,1270,1047,1371,1401,1402,1231] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1493,1529,1494,2030,2033,2036,2025,1505,1506,1508,2035,963,995,1497,965,967] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
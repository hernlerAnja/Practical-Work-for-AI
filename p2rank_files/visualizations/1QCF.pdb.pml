
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
        
        load "data/1QCF.pdb", protein
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
 
        load "data/1QCF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1714,2501,1556,1557,1559,1611,1612,1941,2583,2585,2587,2568,2569,2067,2500,2062,2063,1959,2047,1866,2598,1729,2048,1613,1726,1717,1722,2114,2115,2139,2476,2570,1730,2484,2575,1562,1568,2577,2596,2107,2108,2084,2087,2136,2110,1712,1715] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1730,2484,2576,1562,1568,2476,2477,2448,2600,2601,2604,2628,2630,1589,1591,1587,1571,1583,1584,1585,1594,1597,1574,1578,1579,1729,1728,1744,2599,1613,1595,1596,1745,2465,2675,2744,2673,2721,1580,1581,1582] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [628,648,649,2270,2271,2272,2273,685,3498,650,3509,3576,3572,958,935,955,949,952,954,943,968,3601,2267,2246,2248,2249,656,978,652,683,655,686,3522,3526,3538,3539,3528,3559,3560,3561,3540,3490,2262,2264,2236,2237,2238] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [515,83,516,586,563,540,531,1344,578,580,669,1343,572,582,585,581] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2436,2438,2606,2608,2610,2672,2603,2604,2674,2854,2856,2675,2735,2678,2683,2668,2680,2852,2433] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2465,2773,2774,2131,2976,3034,2477] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
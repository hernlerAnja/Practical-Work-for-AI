
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
        
        load "data/5H0H.pdb", protein
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
 
        load "data/5H0H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2458,2459,2466,2467,2553,2559,2558,2578,2582,2586,2583,2430,2447,2708,2096,2097,1550,1553,1554,1556,1560,1563,1565,2610,1566,1569,1572,2703,2705,1574,1539,1541,1593,1594,1595,1696,2557,1704,1708,1710,1711,1712,2030,2581,2027,2029,2063,2069,1542,2089,2092,2121,1537,1543,1546,1549,1538,1576,1577,1578,1579,1567,2482,2483,2550,1923,2569,2551,2552,2568,1940,2565,2567,1848,1849,2562,1941,2044,2066,2045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [925,3527,3528,936,3510,3517,3519,3514,3515,3516,3518,3520,3512,3513,2229,2219,2218,2220,2221,3486,610,2254,3478,2246,3499,2249,2252,2253,2248,665,667,668,940,931,934,937,926,634,638,631,630,632] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1891,1893,1897,1890,1892,779,617,618,590,606,2307,589,1909,2304,2305,3460,2306,3490] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [61,63,65,53,64,497,564,498,513,545,554,512,563,1325,524,1326,561,522,520,523,1346,1347,1348,1330,568,499,425,50,506,51,54,560,567,562] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1362,1370,1375,1674,1384,1388,1364,105,108,117,118,1667] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [3034,3123,3326,3328,3166] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
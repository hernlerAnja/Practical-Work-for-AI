
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
        
        load "data/5H0G.pdb", protein
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
 
        load "data/5H0G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2458,2550,2466,2551,1711,1712,2558,2552,2554,2555,2559,2562,2578,2557,2581,1848,1849,2580,2582,2483,2089,2092,2096,1710,1569,1727,2610,1549,1552,1553,1579,1556,1566,1567,1576,1577,1578,1565,1544,2121,1545,1696,1923,2044,2049,2482,1938,1940,2045,1704,1708,2029,2030,2066,2063,2069,2065,1537,1538,1539,1543,1541,1542,1593,1594,1595,1546,2568,2565,2567,2569,2459,2447,2427,2428,2430,2586,2583,2708,2705,1572,1574,1560,1561,1563,2703,2713] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [638,634,665,667,610,630,631,632,940,599,960,3559,3553,2254,2249,2224,2229,2231,2252,2253,2255,668,926,937,925,931,934,936,664,608,597,3564,3510,3513,3514,3515,3526,3528,3525,3548,912,3516,3517,3518,3519,3520,2218,2219,2220,2221,2223,3478,3486,3497,3499,3527,2246,2248] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [589,590,3490,606,3460,779,1891,1893,1890,1892,617,1909,2304,2306,2307,618,1897] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [51,545,54,497,63,64,65,1330,1348,425,53,568,498,499,501,1346,1347,567,554,560,564,1325,1326,522,561,563,513,520] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [650,652,1897,1898,1899,617,639,1909,1900,1908,1894,614,612,615,616,2522,2495,2520,2496,2507,2053,1355,1356,1357,2536,2537,1354,649] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [287,1403,114,115,393,394,395,397,144,129,113,119,123,126,1393,1397,1401,284,286,1402,117] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
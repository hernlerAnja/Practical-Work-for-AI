
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
        
        load "data/5H0B.pdb", protein
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
 
        load "data/5H0B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2458,2459,2466,2559,2467,2552,2554,2555,2556,2558,2427,2430,1549,1550,1552,1553,1565,1556,2562,2578,2582,2583,2586,2610,2708,1569,1572,1574,2096,2097,2121,1696,1593,1594,1595,2029,2030,2557,2581,1704,1708,1710,1711,1712,2580,1727,1539,1541,2089,2092,1538,2069,1542,1544,1545,1547,1579,1923,2550,2044,2569,2568,1939,1940,2565,2567,2045,2551,1848,1849,2482,2483,2066,2061,2063,2447,2703,2705,1563] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [609,3486,610,631,3517,3525,3526,3527,3528,3557,3559,3553,3544,608,3478,3497,3563,925,3548,934,936,2249,2252,2253,2254,2255,2248,2229,2219,2218,2220,2221,634,630,667,632,940,960,637,638,597,599,665,668,931,926,937,636,2231,3499,3510,3514,3515,3516,3518,2246,3519,3520] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1890,1892,589,590,617,618,606,1897,1909,1891,1893,2305,3460,2307,2306,3490] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [54,64,65,522,513,497,425,53,498,499,567,568,564,560,652,561,562,563,1325,1326,545,554,1346,1330,1347] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [393,394,395,396,131,132,145,113,114,115,129,1397,1401,118,1393,116] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
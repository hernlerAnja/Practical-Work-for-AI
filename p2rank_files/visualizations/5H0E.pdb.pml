
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
        
        load "data/5H0E.pdb", protein
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
 
        load "data/5H0E.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2466,2552,2554,2555,2558,2559,2578,2427,2430,2582,2583,2586,2610,1552,1553,1554,1556,1565,1569,1572,1574,2612,2458,2459,2096,2097,2121,1923,2482,2044,2550,2483,2066,2566,2568,2551,2557,2045,2564,2565,2567,2569,1940,1941,2029,2562,2579,2581,1848,1849,2580,2069,2089,2092,1539,1541,1593,1594,1543,1544,1595,1537,1542,1538,1708,1711,1712,1567,1576,1577,1578,1579,2030,1727,1696,2447,1563,2703,2705] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [3528,912,925,934,936,3526,952,916,3548,3553,2220,2221,2218,2219,2223,2224,2229,3486,3497,3527,3561,3559,2253,2254,3478,2252,2248,2249,608,609,610,3564,634,665,628,630,667,631,937,960,632,940,2231,926,668,931,935,950,596,597,599,638,3499,3510,3513,3514,3515,2246,3517] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1325,545,554,560,562,567,564,568,1326,561,563,522,1347,1348,1330,425,51,50,497,53,54,520,506,512,513,63,64,65] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1891,1892,1897,618,590,606,589,1909,2307,2305,3460,2306,3490] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
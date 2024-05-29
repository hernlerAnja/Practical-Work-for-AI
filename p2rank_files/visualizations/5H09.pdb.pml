
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
        
        load "data/5H09.pdb", protein
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
 
        load "data/5H09.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2458,2459,2466,2092,2096,2097,2551,2552,2554,2555,2556,2557,2559,2558,2581,2562,2578,2580,2582,2427,2430,2586,2583,2708,1712,2703,1563,1727,1569,1572,1574,2610,2705,1552,1567,1576,1579,1553,1556,1560,1561,1565,1566,2447,2121,1923,2550,2482,2483,2030,1848,1849,2089,1696,2044,2029,2045,1941,2066,2069,1593,1594,1595,1708,1710,1711,1537,1539,1541,1543,1544,2063,1542,1538,1545,1547,1940,2565,2567,2568,2569] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [631,925,931,630,632,3528,934,3559,3553,3588,3510,3517,3514,3515,3516,3518,3519,3527,3526,3548,926,912,936,610,599,3486,3478,3499,2224,2229,2231,2249,2252,2253,2254,2255,2219,2246,2248,2218,2220,2221,2223,3520,960,940,634,638,667,937,665,668] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1891,1892,1897,1909,618,589,590,2304,2305,3459,3460,606,2306,3490,2307] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [560,63,53,64,65,562,555,564,497,554,545,513,561,563,1325,1326,522,524,520,425,567,568,498,1330,1347] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
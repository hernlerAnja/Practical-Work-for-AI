
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
        
        load "data/2H8H.pdb", protein
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
 
        load "data/2H8H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2568,1591,1703,1704,1538,1545,1546,1575,1536,2466,2467,2474,2715,2667,1549,1565,1567,1569,2455,2738,2569,2593,2594,2597,2669,2589,2591,2622,2624,2438] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2568,1690,1696,1700,1589,1590,1591,1702,1704,1532,1533,2491,2466,2101,2474,1527,1526,2064,2066,1528,1530,1531,2097,2094,2073,2068,1926,2052,2490,2048,1687,2047,2558,2561,2562,2566,2033,2070] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [93,74,65,1331,1332,1340,433,1334,1336,71,75,78,60,1353,1953,1955,94,1359,1664,1345,1350,1352,1351,1668,1669,2061,2058,2050] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2579,2580,2558,2561,2562,2563,2578,1941,1943,2033,1925,1924,2048,2568,1700,1702,2573,1847,2591] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [49,485,499,506,1320,48,1321,47,1342,418,35,37,34,38,547,549,548,550,541,542,543,531,535,1305,508] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2549,1349,1351,1912,1326,1327,1331,2548,2500,2533,2534,2503,2507,2506,2056,2061,1898,1899] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1892,1894,1902,2310,2311,3461,3462,578,1903,2365,3495,577,606,608] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3519,3538,594,595,596,598,624,586,587,3570,3571,584,622,623,926,929,658,659,3490] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
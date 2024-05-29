
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
        
        load "data/6QYX.pdb", protein
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
 
        load "data/6QYX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2235,1987,1989,1883,1502,1884,1918,1814,1813,1447,1781,1481,1482,1780,1450,1451,1454,1500,1503,1778,1752,1755,1977,1979,1980,1756,2233,2234,1457,2231,2237,2244,2242,1456,2012,1857] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1180,1184,579,580,581,1167,2505,1335,1339,1342,1131,614,616,1331,1324,1327,589,666,1352,578,576,577,583,1351,1353,540,541,1178,1172,1130] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1454,1500,1497,1499,1883,1502,1884,1906,1908,1909,1905,1456,1541,2249,2256,2237,2244,2242,2257,1457,2231,1516] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [161,162,179,26,707,45,704,714,717,2677,27,25,693,695,694,2700,2715,2716,2717,181,699,2675] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1136,1138,1142,1143,1146,1551,1106,1108,1110,1543,1547,1552,1558,2290,2292,1539,1557,2291,2293,2302] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [668,669,670,671,612,672,2722,853,850,852,687,675,2723,637,1320,629,1319,656,618,626] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1086,1087,1088,2434,1050,1052,1053,2383,2385,1060,1024,1026,1062,2388,651,643,652] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
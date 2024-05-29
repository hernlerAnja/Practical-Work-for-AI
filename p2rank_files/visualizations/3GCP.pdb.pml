
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
        
        load "data/3GCP.pdb", protein
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
 
        load "data/3GCP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [551,553,588,1350,1351,1352,397,1362,580,587,579,581,666,667,843,1363,589,1357,1358,1367,1359,1361,1371,1375,865,862,543,396,393,395,824,825,826,830,832,389,380,679,265,267,269,243,244,266,268,270,242,288,381,240,287,860,1181,1183,1339,1345,1349,1332,1130,615,658,1129,1131,1178,1180,1172,1167] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1499,1501,1914,1498,1901,1502,1943,1946,1480,1481,1973,1975,1970,1457,2235,2237,2238,1446,2246,2248,2252,2253,2260,2261,1879,1902,1801,1776,1777,1775,1853,1983,1985,2007,1878,1880,2239,1808,1810,1854,1809,1449,1453,1454,1444,1445,1511,1512,1519,1520,1496,1513,1455,1531,1537] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1108,1136,1142,1546,2294,2295,2306,1110,1138,1140,2291,2297,2301,2302,1143,1146,1541,1542,1543,1548,1554,2296] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [671,656,668,850,851,852,853,1327,1328,612,669,670,672,618,621,623,626,686,2724,674,675,2723,358,637,629,641] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [643,1088,2437,1087,1062,1026,1050,1052,2389,1060,1024,2393,1022,2412,2434] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [704,717,26,27,45,707,179,693,694,695,699,181,2701,2676,2717,2678] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
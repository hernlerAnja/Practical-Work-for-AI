
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
        
        load "data/6Z19.pdb", protein
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
 
        load "data/6Z19.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1368,1366,1467,1475,1465,1468,1469,1470,1473,1474,1476,566,430,564,565,429,415,417,416,1339,400,1327,1352,1328,420,784,917,918,919,920,921,922,677,786,365,379,380,381,384,385,386,387,961,1367,445,446,444,945,926,942,383,548,549,550,939,941,1495,1500,1502,1492,1493,1494,1312,1501,596,639,636,637,597] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1668,1948,1666,1653,1655,1951,989,990,1943,1945,1946,1336,1340,1341,1342,1344,1325,1335,1326,1328,1634,1887,1889,987,1035,1942,1033,1885,1892,1923,1334,983,997,1028,1029,1030,1038,1924,1925,1633] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [191,217,219,1515,220,229,198,200,1547,1548,1549,203,208,1516,1568,1569,1546] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [527,331,487,542,924,510,531,805,806,814] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1817,2696,2700,2690,2695,2693,88,76,77,78,1780,1782,1790,1791,1794,1776,1238,2642,61,72,60] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [618,619,621,648,655,657,260,278,281,838,836,837,870,871,649,890] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1175,1865,1376,1898,1139,1131,1146] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/7ZYK.pdb", protein
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
 
        load "data/7ZYK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1472,1473,1471,1470,916,411,423,410,414,418,782,943,946,944,784,940,456,572,573,574,919,440,454,455,391,393,559,396,915,917,558,560,937,924,1476,1477,1479,1347,1468,1306,1642,1307,1322,1323,1334,1338,1370,1366,1368,1478,1498,1495,1496,1497,1305,1504,1503,1505,638,430,432,575,576,675,920,427,591,619,639,939,961,962,390] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1330,1898,1864,1896,1960,1957,1662,1664,1675,1676,1677,1865,1648,1328,1329,1874,1869,1870,1875,1134,1171,1092,1120,1089,1325,1327,987,1352,1337,1339,1379,1353,1321,1640,1323,985,986,988,1015,1011,1013,1016,1021,1023,1905,1906,1954,1951,1049,1087,1876] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [2700,2706,2711,1803,2658,2689,59,63,1789,1799,1800,1826,1791,1241,2712,86,1209,1785] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        
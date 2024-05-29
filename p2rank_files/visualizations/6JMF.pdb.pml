
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
        
        load "data/6JMF.pdb", protein
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
 
        load "data/6JMF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1980,1986,1987,1988,1875,1889,942,943,945,948,949,952,947,1507,1510,1903,1904,954,955,1120,1488,1119,1489,1003,1004,1005,1104,964,1361,1535,1538,1531,1528,1517] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [974,2010,2113,2118,2000,1983,1984,1985,2004,2005,2009,975,964,967,971,972,1120,1118,1119,1853,1987,1889,1890,1214,1216,2003,2026,981,983,1192,2001,2002,1225] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [166,167,187,197,198,199,817,821,822,823,824,135,136,138,118,120,1420,854,809,170,1232,1260,1263,1265,1267,1292,1293,1294,1234,1410,1412,1397,1398,1399,1411,1258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [629,664,631,632,635,637,603,92,94,793,6,16] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1196,1197,1201,1203,1438,1233,1454,144,1436,1447,169,129,143,1198,1200,1131,1132,1145,1130] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2092,2093,2100,2101,2102,2258,2135,2207,2259,2204,2213,2209,1843,2235,2234,2107,2110,2111,2114,2134,2098] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2272,2271,2063,2267,2278,2279,1784,1786,1789,2265,2280,2055,2061,1806,1810] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [49,336,337,599,519,520,521,46,592] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        

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
        
        load "data/3OEF.pdb", protein
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
 
        load "data/3OEF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1489,1490,1509,1511,1506,1525,1504,1505,1507,1508,1510,1786,1788,1789,1985,1987,1755,1455,1456,1463,1465,1462,1543,2239,2240,2241,1524,2215,2233,2228,1549,1813,1996,1997,1957,1925,1926,1914,1994,2019,1955,1958,1865,1892,2216,2226,1891,1916,2219,1822,2218,1820,1821,1532] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1360,1361,1362,575,577,578,1338,1339,1344,1348,1349,1350,611,612,655,663,1185,1188,1174,1179,1187,1191,1137,1138] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [349,853,857,859,348,2705,665,668,684,666,667,619,672,2706,855,1327,626,625,634,875,1278,1309,609,615,623] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2271,2274,2277,2281,2282,2275,1560,1566,1550,2276,2286,1143,1145,1150,1558,1153,1115,1117,2440,1147,1555] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [704,696,701,714,2658,2660,153,692,172,17,18,34,36,690,2698,691,2683,2699,2700,2679] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1033,1031,1067,1068,1069,2372,648,1059,1060,2418,1093,1094,1095,637,638,2369] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
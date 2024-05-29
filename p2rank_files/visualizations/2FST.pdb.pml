
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
        
        load "data/2FST.pdb", protein
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
 
        load "data/2FST.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1381,1392,1396,1397,1398,1399,1400,1401,1402,1403,1417,1347,1357,1354,1355,1358,2144,1439,1416,2149,2156,1681,2133,2134,2135,1757,1758,1784,2131,1783,2142,2157,1806,1712,1713,1714,1378,1847,1850,1829,1830,1825,1419,1805,1382,1818,1887,1889,1874,1877,1879] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [637,1270,1271,558,560,551,549,552,585,1264,1265,1272,1273,1117,1260,1111,1113,1114,1105,1064,1100,586,629,1257] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [637,1266,1275,1276,1277,361,559,560,1268,833,837,838,836,636,813,814,818,1269,357,797,344,353,345,251,252,359,799] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [993,957,959,994,983,985,2288,1019,1020,2285,2330,2308,2331,995,1233,623,614,1021,2334,622] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2190,2192,2193,2191,2198,2202,1039,1075,1076,1079,1451,1069,2197,1037,1041] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [822,1253,824,627,639,640,641,643,583,589,597,600,642,658,646,2620,2619,608] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1200,1227,966,967,932,898,899,930,863,864,1196,853] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [819,820,821,822,823,839,1252,1204,1253,824,828,322,1231,1232,1235] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
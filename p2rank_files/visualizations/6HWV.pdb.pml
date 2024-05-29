
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
        
        load "data/6HWV.pdb", protein
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
 
        load "data/6HWV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1371,673,1377,1378,1379,1381,1382,1383,594,1387,1396,1400,1395,560,831,832,836,387,388,380,384,684,259,261,277,278,279,229,231,883,872,876,372,230,870,838,839,848,371,852,256,258,260] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1472,1521,1526,1519,1525,1520,1522,1523,1539,1540,1505,1803,1504,1804,1973,1473,1475,2254,1465,1476,1558,1562,2267,2272,1547,1565,2278,2279,1907,1941,2012,1880,1906,1929,1931,1932,1928,1837,1836,2010,1881,1999,2001,2003,1970,2256,2258,2265,2280,2257] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1204,1365,1369,1359,1187,620,621,1151,1198,1201,1200,1192,1150,1352,1355,664,587,672] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [674,677,861,1347,675,676,678,618,624,681,2745,2746,693,862,863,1348,643,647,662,635,634,632] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1581,2316,2320,2310,2313,2314,2315,1568,1575,1564,2321,2325,1573,1162,1163,1158,1570,1156,1126,1124,1128,1166,1130] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1080,1044,1070,1081,1082,1046,657,1072,1106,1107,1108,2457,2454,646,647,648,1328,2411,2408,2406] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [726,699,700,705,710,720,2700,153,701,713,17,18,36,747,1,723,170,172,2739,2740] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
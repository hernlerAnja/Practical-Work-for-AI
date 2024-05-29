
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
        
        load "data/6Q7B.pdb", protein
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
 
        load "data/6Q7B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [219,330,334,684,1261,1263,321,574,702,319,320,1250,1256,1257,1258,1259,1260,220,336,338,707,725,163,167,164,721,719,498,499,500,703,472,473,475,468,471,492,1239,1242,1262,1264,1265,573,1160,1159,1121,1243,1247,1252,1071,1075,1251,1254,521,565,523,1058,1018,1059,766,762,759,731,744] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [929,957,958,978,953,954,928,930,927,1207,1213,1218,548,550,1217,1194,558,557] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [996,2062,2066,2073,1456,2054,2057,2059,2060,1031,2069,1452,1454,1460,1446,1461,1464,2015,2061,1428,2016,1458,1448,1047,1445,1447,1429,1024,1023,2023] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1842,1827,1836,1856,2246,2248,1819,2272,1852,1588,1612,1613,1663,1664,1666,1555] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1760,1358,1360,1361,1362,1396,1771,1731,1756,1729,1730,1764,1765,1768,1382,1385] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1127,1342,1343,1131,1295,779,782,1115,1123,1624,1626,1630,1296,819,1616,1622,1642] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
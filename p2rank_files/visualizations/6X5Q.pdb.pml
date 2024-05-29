
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
        
        load "data/6X5Q.pdb", protein
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
 
        load "data/6X5Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1046,1150,512,1064,1065,1153,1043,643,511,1154,267,1158,1159,1160,647,648,646,441,98,99,100,105,149,253,652,645,150,265,266,668,692,1036,695] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1049,1161,1174,267,410,1159,1160,1182,1176,384,372,378,379,382,373,375,345,385,1046,136,124,319,266,281,282,318,2241,1036,2208,2216,2220,2221,1024,1037,1025,2201,1184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [939,941,1231,1435,1437,1439,945,917,1997,2000,2001,2002,2003,2012,950,1469,1991,1433,1440,1441,1445,1446,1444,1980] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2203,2204,2206,1618,2183,2186,2187,2188,1612,1614,1615,1636,2190,1617,2181,2172,1587,1333,1585,1586,1611,1320,1613,1616,1321,1322,1541] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1610,1609,1584,2167,2168,1575,1577,1591,1532,1760,1761,1777,1778,1757,2159,2162,2163,2164,2169,2165,2166,2172,1573,1587,1612] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1072,790,791,728,817,818,820,757,1088,1111,1112,1115,1118,1097,1103,1119,1087,846,1073,1082] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
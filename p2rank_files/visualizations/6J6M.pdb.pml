
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
        
        load "data/6J6M.pdb", protein
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
 
        load "data/6J6M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1222,548,1224,1225,1229,1231,1150,1223,1230,1149,1151,1251,1253,469,412,546,1240,1242,713,714,731,732,735,721,314,315,142,144,145,151,152,313,687,688,692,298,552,563,564,414,567,672,673,710,704,311,140,192,193,194,134,136,137,133,139,1116,1131,1132,1136,739,740] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1330,1332,1375,163,1137,1227,1091,1092,1094,1328,1290,1255,1256,1259,1136,1120,1124,172,1231,1254,1397,1398] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1896,1898,1899,1900,1928,1929,1721,1727,1889,1831,1832,1743,1745,1749,1761,1763,1764,1765,1766,1635,1890,1893,1914,1874,1883,1720,1705,1732,1736,1737,1739,1675,1696,1638] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [773,775,1185,1187,924,926,853,889,888,827,893,830,832,1184,1177,1178] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1079,1080,1082,1260,1258,1259,1083,1262,1266,1327,1337,1339,1092,1094,1522,1398,1389,1523,1518,1519,1521,1397] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [236,238,240,241,239,271,272,577,576,578,580,581,575,292,41,39,274,276,277] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
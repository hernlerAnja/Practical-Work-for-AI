
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
        
        load "data/3PXZ.pdb", protein
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
 
        load "data/3PXZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [135,1186,1187,1190,154,291,292,654,671,673,460,462,528,458,533,484,438,439,440,436,468,469,470,464,466,412,155,1258,308,309,1271,1272,379,1085,1114,725,728,1185,535,536,1113,122,134,128,1090,125,127,635,326,328,668,669,670,672,655,553,550,575,576,592,593,594,471,698,174,120,275,118,172,173,117,697,116,115,713,714,721,705,1194,1197,1213,1217,1216,461,1259,1218,1221,1201,1087,1088] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [983,1522,958,956,959,2257,2262,2266,2269,1495,981,987,979,980,1497,1501,1489,2211,2235,2246,2252,2255,2256] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1449,1473,1474,1463,1858,2212,2213,2214,1484,2206,1488,1489,2221,1451,1446,1906,1899,1871,1897,1869,1870,1855,1864,1893] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [646,80,83,642,644,38,41,282,62,79,182,184,164,166,297,299,300,279,280,293] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1845,2195,2197,1793,2186,2001,2002,2003,1846,2173,2179,2150,2184,2174,1797,2151,2152,2033] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1070,1082,1086,1079,1081,1089,1342,1343,742,1595,743,744,745,1382,1383,1371] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1042,1423,1424,1392,1393,1043,1506,1350,1376,1386,1389,1396,1544,1390,1505] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1320,1324,1300,1298,1337,1331,1057,1072,1073,1349,144,1342,1090,1319] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [661,21,22,219,269,255,558,557,560] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
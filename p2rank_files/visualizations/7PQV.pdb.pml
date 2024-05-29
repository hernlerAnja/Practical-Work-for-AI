
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
        
        load "data/7PQV.pdb", protein
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
 
        load "data/7PQV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1271,1270,1254,1355,1346,1347,1348,1349,1352,465,1351,1354,1406,1408,1410,1411,1412,867,870,871,847,651,652,1358,1359,1367,1368,1371,1377,1378,1381,1382,724,844,845,851,1203,1215,1204,1206,346,304,347,445,463,464,461,832,833,481,1402,1404,1433,628,1245,326,1246,1216,1217,1218,1494,1448,1454,895,896,920,888,316,319,323,1444,1445,1446,1447,1434,1431,921,301,302,309,348,305] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1321,1309,1317,1307,1322,1324,1034,1036,2324,2321,1320,705,707,1062,1031,1056,41,67,68,69,709,1086] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1333,128,1316,1301,105,92,93,94,101,102,123,124,127,714,727,107,130,689,675,685,129,132,855,856] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [129,751,156,157,423,1300,1301,93,94,127,860,853,856,429] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [250,454,229,473,811,228,248,249,270,266,374,452,472,354,355,356,357,358,359,271,272] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [912,1483,1474,1691,1485,1731,1732,1733,1734,1473,1242,1246,1247,909,1240,1241] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
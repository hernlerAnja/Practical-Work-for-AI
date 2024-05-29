
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
        
        load "data/3EQG.pdb", protein
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
 
        load "data/3EQG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1422,1423,479,481,1192,1204,1340,1400,1401,1193,348,463,464,465,1343,1243,1342,1344,1341,1338,1391,1393,1347,1356,1357,1348,822,1205,1206,1464,1457,1461,1462,1463,1421,329,328,1447,321,322,327,1425,1428,1424,1446,1222,1223,1234,1236,1207,312,313,316,334,331,332,319,1508] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [877,878,880,884,885,909,910,1234,1236,302,305,346,301,307,348,464,465,1343,304,347,855,859,1243,1336,1344,1259,1260,445,856,835,836] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [821,835,836,822,725,640,833,718,1332,1345,1353,1355,1335,1337,711,641,712,720,723,617,1365,1391,1393,1367,1371,1348,1423,1340,1401,463,465,1343,1338] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1285,1298,1302,1295,1296,1051,1306,1309,1313,684,696,1020,1045,1021,1022,1023,1046,2344,1025,2372,69,68,41,66,59,1075,98,2388] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [124,127,128,129,130,131,132,123,156,740,157,425,92,93,94,1290,107,108,678,849,842,846,703,844,845,1322,1289,1305] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1221,1231,1235,897,900,933,934,1498,1499,1705,925,1229,1230,1228] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [473,266,270,374,250,249,228,454,452,272,354,355,357] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
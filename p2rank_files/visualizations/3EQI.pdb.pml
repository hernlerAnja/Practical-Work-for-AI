
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
        
        load "data/3EQI.pdb", protein
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
 
        load "data/3EQI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1418,1424,1391,1422,1423,1397,1399,1401,1420,1204,1195,1192,1193,1400,1340,1338,464,465,1341,1343,1344,348,330,479,481,1243,1205,1206,1207,1244,617,1360,1367,1370,1347,1348,1356,1357,1393,822,640,641,821,834,835,1332,1335,1337,1345,1354,1355,711,712,723,637,664,665,1464,1454,1455,1461,1462,1445,1446,1447,1468,1508,313,316,327,328,329,331,334,319,1236,1222,1223] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1336,464,465,1343,1344,1259,1260,302,346,347,348,877,304,305,859,1243,1234,835,836,445,856,909,910,301,306,307,313,885] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1298,1301,1302,1295,1296,1285,684,1051,1306,1310,1313,696,1020,1022,1023,1024,1025,2372,2344,2354,1045,67,68,69,698,66,40,41,1075,2388,1021] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [94,1290,1305,101,92,93,678,102,107,108,675,668,127,128,130,129,132,156,157,682,844,845,1322,1288,1289,842,849] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
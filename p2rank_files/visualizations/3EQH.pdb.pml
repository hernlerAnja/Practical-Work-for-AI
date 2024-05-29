
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
        
        load "data/3EQH.pdb", protein
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
 
        load "data/3EQH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1207,1340,1420,1421,1422,1423,481,1205,1204,1192,1193,1397,1400,1418,1424,1347,1356,1357,1348,1399,1393,1234,1243,1341,348,464,465,1342,1343,1344,1236,1223,316,327,328,1206,313,319,1464,1457,1462,1445,1446,1468,1451,1419,1425,1507] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [877,878,880,1260,1259,302,347,304,305,859,1234,1243,1336,348,463,464,465,1342,1343,1344,346,860,840,856,445,835,836,885,909,300,301,306,307,308,310,1235,1236,312,313] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [834,835,821,822,713,1332,1335,1337,712,1342,1343,1344,1357,1348,1360,1399,1370,1393,481,711,1355,1353,640,617,1367] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [844,845,1322,842,843,128,129,130,132,1288,1304,1290,682,1305,94,664,156,127,122,157,674,107,108,92,93,101,1275,849] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1045,2344,1075,1302,98,59,66,684,696,698,67,69,1313,1023,1025,1051,1020,1306,1310,1311,1295,1298,1296,1309] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [472,473,355,357,354,267,270,272,266,228,454,452,374,250] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
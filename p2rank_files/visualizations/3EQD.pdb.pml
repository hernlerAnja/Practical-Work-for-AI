
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
        
        load "data/3EQD.pdb", protein
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
 
        load "data/3EQD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [331,479,481,1422,1423,1204,1205,1206,1207,1244,1340,1192,1193,1341,1424,1425,1397,1399,1400,1338,1345,1355,1347,1348,1356,822,640,641,617,1393,1370,1401,1360,1367,1195,1357,1222,1223,1468,1462,319,322,323,325,328,329,1461,1446,1508,463,464,465,1342,1343,1344,348,835,1243,1332,1335,1337,313,316,312,315,334,1236,1354,664,665,637,723,711,712,725,821] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [464,465,1344,856,1259,346,348,304,347,445,836,305,859,1234,1243,1336,877,878,1260,313,316,885,909,910,301,312,308,309,300,302,306,307,880,1235,1236] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [716,842,843,845,1322,1304,1275,1288,1290,101,102,127,129,92,93,107,128,130,132,664,668,673,156,1305,678,682,94,675,849] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [69,1298,1302,684,696,1309,67,68,66,1025,2344,40,41,42,1045,1075,1051,1306,1310,1313,1020,1296,1023] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [472,473,799,354,355,452,454,374,270,250,800,228,357,359,272] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
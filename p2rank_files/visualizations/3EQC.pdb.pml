
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
        
        load "data/3EQC.pdb", protein
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
 
        load "data/3EQC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [348,464,465,836,346,347,305,304,445,856,853,1243,1244,1341,1347,1348,1349,1350,1344,1259,1260,877,878,859,1346,479,481,1428,1429,1204,1205,1403,1406,1400,1405,1426,1354,822,1399,1396,1397,306,307,308,309,301,302,910,1234,1235,1236,884,885,880,908,909,330,332,328,329,331,1222,1223,1206,1207,1486,1424,1430,311,312,313,315,316,310,319,326,327,1439,1440,1446,1442] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [821,835,833,1333,1360,1349,1339,1343,1344,712,713,1361,720,723,640,641,711,717,718,725,1354,1371,822,1399] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [845,844,1322,716,842,129,132,1288,1304,1290,102,124,127,92,93,101,123,107,128,130,664,674,156,678,94,1305,108,1275,846,849] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1075,2322,41,66,694,696,67,68,69,698,1306,1311,1313,1298,1296,1051,1309,1310,1020,1021,1022,1023,1025,1045] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [270,250,249,454,473,800,228,452,354,355,374,272,357,359] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
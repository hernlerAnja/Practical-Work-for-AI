
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
        
        load "data/3UO5.pdb", protein
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
 
        load "data/3UO5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [449,481,447,450,380,414,1257,1258,1259,1264,1265,1266,1267,1269,1271,1272,439,412,413,438,443,1238,1241,1242,1243,1244,1236,1237,1113,1148,1268,1370,1371,174,176,177,162,1372,1373,403,1153,1112,1129,1130,1141,196,178,338,181,155,158,167,154,139,195,1168,1170,135,136,137,141,142,194,784,323,731,322,590,1169,306,736,748,750,337,775,754,757,758,1099,1098,1449,1103,1347,1350,1343,1417,1418,1379,1366,1374,1375,1346,1403,1406] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [614,615,616,617,618,620,9,285,279,280,282,281,283,265,301,612,622,613,623,724,45,47,48,50,7,237,238,240,92,723] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [418,419,420,456,449,448,450,488,379,695,696,633,635,636,656,357] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1408,1382,798,800,802,1146,1409,1622,1659,1661,1695,1652,837,831,1667,1668,1398] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
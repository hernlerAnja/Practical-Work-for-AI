
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
        
        load "data/5I9Y.pdb", protein
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
 
        load "data/5I9Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [579,711,1239,473,474,475,1243,1244,1314,1283,1289,334,695,324,330,337,338,336,445,450,1316,440,444,1279,1281,1282,1315,1317,443,342,448,352,410,412,413,414,417,733,321,710,499,1253,154,160,210,211,155,158,157,1312,1313,1318,169,192,194,195,193,172,188,190,183,184,185,729,731,1158,1159,1234,1236,575,1137,1142,1238,1242,1245,737,738,762,766,759,1128,736,758,744] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [920,951,967,968,557,558,988,918,919,921,1192,1184,548,550,1198,1202,1203,959,961] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1506,1507,1508,1509,1511,1512,1513,1515,1516,1519,2156,1002,1006,1034,2149,2153,2160,1040,1041,1042,1514,1033,2141,2146,2147,2148,2144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1500,1501,1436,1437,1440,1444,1091,1410,1411,1412,1299,1300,1366,1343,1347,1374,1346,1350,1380,1297] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1895,1610,1721,1887,2367,1638,1643,1904,1922,1924,2341,2343,1640,1641,1666,1667,1668] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
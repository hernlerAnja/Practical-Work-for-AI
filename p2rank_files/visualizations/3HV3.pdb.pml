
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
        
        load "data/3HV3.pdb", protein
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
 
        load "data/3HV3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1347,1351,271,1349,241,364,242,244,270,868,378,536,1336,656,657,832,833,863,571,572,852,857,850,856,1229,1341,1350,1332,878,1243,1329,1335,1248,1252,874,871,872,376,269,248,379,1342,1344] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1174,1176,1326,1327,1333,1337,1319,1320,1323,1169,1122,1158,563,604,605,1121,648,570,572,561,536,1336,656,1339,1355,1171,526,1163,535,533,534] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1839,1900,2215,2217,2213,1866,1864,1865,1796,1795,1969,1971,1466,1488,1763,1433,1432,1435,1436,1443,1439] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1439,1440,1441,1497,1505,1506,1517,2231,1498,1433,1435,1436,1443,1488,1485,1487,1482,1484,2219,1864,1865,1890,2224,2215,2213,1866,1888,2226,1523,2237,2239] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [694,704,685,689,2679,2656,2654,684,697,166,707,22,23,183,2695,185] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [677,842,843,658,659,660,665,602,612,2701,662,1315,1316,619,608,616,627] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1051,1041,1043,1053,1015,1017,1052,1077,1078,1079,2415,633,642,2365,2367,2371] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2272,2273,2284,1533,2274,1127,1130,1133,1097,1099] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
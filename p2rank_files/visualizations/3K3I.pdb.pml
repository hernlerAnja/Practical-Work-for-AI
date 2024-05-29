
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
        
        load "data/3K3I.pdb", protein
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
 
        load "data/3K3I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1314,1326,1325,1310,658,1309,1327,1328,1329,1292,862,1230,652,655,656,871,857,860,868,872,370,371,372,835,839,842,837,843,384,380,278,386,388,544,579,817,855,231,227,228,233,229,878,880] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [657,580,538,572,1311,1314,542,544,1315,1304,1305,1147,1149,1318,1153,1155,1301,1141,571,1094,1095,1136,649,1298,606] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1417,1414,1441,1445,1913,1461,1463,1464,1465,1458,1459,1460,1462,1887,1408,1409,1743,1413,1442,1454,1455,1419,2212,1466,1410,1420,1847,2194,2205,2207,1846,1869,1871,1777,2197,1820,1875,1879,1880,1881,1867,1868,1882,1952] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [912,928,930,997,1268,961,963,911,913,1241,1247,1249] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [647,660,603,609,612,613,617,1293,1294,678,2685,2686,846,848,661,663,666,620] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1542,1510,1515,1521,2253,2254,2255,2256,1513,2260,2261,2265,1074,1099,1106,1107,1100,1102,1070,1072,1110] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [698,153,711,695,705,708,2640,36,34,152,171,172,17,18,686,685,690,2663,2638] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1024,988,990,1014,1016,1051,1052,2393,2396,1050,643,1026,1274,634,2352,2346,2349,2348] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1293,1294,660,846,847,848,628,620] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
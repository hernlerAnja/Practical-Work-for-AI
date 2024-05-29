
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
        
        load "data/3IW8.pdb", protein
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
 
        load "data/3IW8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1421,1420,1462,1464,1466,1467,1468,1469,1463,1465,1413,1445,1447,1448,1746,1747,1482,1490,1483,1444,1895,1882,1884,1846,1870,1871,1872,1850,1849,2201,1823,1953,1955,1778,1779,1780,1913,1883,1916,1942,1944,1414,2199,2200,2197,2210,2214,2215,2208,2222,2223,1422,1423,1424,1507,1501] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1335,1337,1339,237,651,572,381,537,827,831,850,851,846,825,849,844,373,364,365,810,379,380,377,812,271,272,240,259,1334,1319,1336,1338,1240,861,1317,1320,1330,1324] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1151,1156,563,564,565,1325,1324,1164,1327,642,599,1114,1115,598,1315,1316,1321,650,1169,1308,1311,1167,573,538,1162,1165] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1034,1036,2396,2399,635,1072,1070,1071,1045,1046,1008,1010,1044,2351,2355,636,624,627] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [179,181,704,2640,691,688,698,701,26,27,45,679,683,678,2678,677,2679,2680] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1511,1513,1518,1524,2259,2263,2264,2253,1516,2256,2257,2258,2268,1090,1120,1126,1127,1130,1092,2423,1122,1508] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [834,836,671,2685,2686,652,653,654,655,596,656,658,659,606,826,613,621,1302,1303,1304,610,602] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
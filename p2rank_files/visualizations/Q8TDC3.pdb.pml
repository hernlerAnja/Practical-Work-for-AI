
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
        
        load "data/Q8TDC3.pdb", protein
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
 
        load "data/Q8TDC3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [352,354,355,862,1298,1299,883,886,887,902,900,901,4366,299,4364,4365,305,306,312,719,1380,911,1270,4342,1382,1385,1269,1271,1283,336,310,317,464,465,318,1387,1389,302,447,303] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4315,1546,1548,4317,1265,1796,927,1790,1795,4258,4261,4282,4284,4285,4312,4283,4287,4289,4294,4290,4291,938,966,4288,1267,1270,1272,1273,1275,912,1263,932,923,924] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4924,4925,4839,4840,4985,4927,4932,4938,4920,1501,1502,1505,1498,1503,1580,4810,4807,4937,1520,1525,1526,1855,1521,1552,1513,1508,1581,1584,1587,1588,1890,1891,4873,4808] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [324,329,335,321,4337,1387,1388,1389,1242,1410,1411,1402,1403,1405,1412,336,1274,1257,1259,1517,1515,1241,1514,1510,1512,1513,1502,1505,1509] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3044,2898,741,251,427,390,393,392,238,754,2928,2925,740,739,742,744] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [927,929,1756,1790,1795,1786,1787,959,1783,1784,1796,4261,4259,4260,4283,924,966] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1649,1650,1648,1686,1173,2181,2178,2186,1663,1664,2173,2175,2177,1652,1170,1169,1147] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [650,651,652,3049,3048,3069,2512,3055,3051,3060,2546,2542,590,621,594,2534,2537,2541,2565] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        

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
        
        load "data/3ZSG.pdb", protein
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
 
        load "data/3ZSG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1508,1486,1487,1502,1504,1505,1507,1935,1977,1980,1811,1808,1810,1460,1462,1463,2261,2264,1459,1452,2278,2279,2274,1555,2285,2286,2287,1887,1888,1948,2017,2019,1936,1843,2041,2007,2009,2263,2265,1844,1914,2272,1913,1842,1530,1548,1537,1529] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [393,830,384,845,847,829,385,290,291,241,864,401,558,397,399,592,272,292,273,274,1362,873,1360,1374,1368,1370,1371,866,869,671,1359,1361,1356,1357,1358,1366,1350] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1338,1344,1348,1349,1350,1351,583,585,584,670,1331,662,618,619,1185,1186,1188,1184,1182,1176,1133,1134,1135,1171,1172] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [708,711,45,26,27,179,162,718,721,724,2727,698,703,2741,2757,2758,697,181,699,2718] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [633,630,616,622,855,857,1326,660,673,674,675,1327,678,691,676,2764,2763,679] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1030,1064,1065,1066,647,1091,1092,1054,1056,2421,1028,2424] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2327,1110,1112,2328,2332,1142,1558,1565,1140,1560,1563,1146,2323,2322,2320,2321,1571] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
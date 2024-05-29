
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
        
        load "data/4RQV.pdb", protein
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
 
        load "data/4RQV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2675,1028,2474,2688,2690,2692,2694,673,674,332,345,325,331,344,387,351,2508,2445,2446,1705,306,1708,323,324,411,412,413,672,1602,1274,1275,2674,1618,2507,1647,1650,307,310,309,641,1634,1694,370,371,372,2736,2725,948,2737,1027,949,950,952,947,966,967,3022,2381,3013,2412,2413,3010,355,955,901,953] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2127,2187,2176,2177,2178,2179,2186,4834,4860,4864,4810,2128,4656,1238,1206,1207,1220,1221,4885,4887,2190,1205,2192,4879] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1218,2543,2546,2639,2640,2641,1619,1629,1626,1291,1336,1252,1289,1620,1216,1219,2544,2575,2557,1665] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3275,2905,2906,2918,2920,3323,4399,4400,3276,4413,4526,4527,4510,4511,3291,3287,4504,4508,4509] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4769,4778,4793,4920,4783,1990,1991,4771,4782,4867,2012,1951,4962,4963,4964,4933,2009,2014,2016,2008,1948] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1571,971,1507,1563,1567,1503,1509,1373,1536,1371,1372,1383,1384,1409,969,983,1039,1041,1042,1043,982,987] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [429,692,695,239,240,242,244,398,397,399,694,1466,1468,1470,156,1542] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
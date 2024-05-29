
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
        
        load "data/3KY2.pdb", protein
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
 
        load "data/3KY2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [840,1347,847,1317,1346,253,254,1431,432,433,434,563,676,1423,1424,674,677,1441,1331,1429,1430,1432,1439,1443,1454,236,275,276,418,238,794,235,239,241,798,836,837,819] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3638,2839,2654,2656,2693,2694,3231,3618,3623,3716,3721,3715,3722,3639,2854,2855,3723,3295,2653,3609,3265,3268,3237,3240,3233,3258,3214,3215,3096,3098,3219,3733,2853,2852,2984,3017] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2116,2115,976,964,965,966,2112,1066,1067,1069,937,938,936,1068,3962,3963,3982,3908,3909,1113,1900,1876,1073,1079,1878,1899,913,1089,2439,2427,2438,3981,3998,1084,1088,4497,4500,4493,4494,4495,4496,3912] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1431,433,434,540,541,564,535,538,534,257,258,259,260,261,450,507,254,1452,1453,1454,530,1429,1430,435,430,437,438,276] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2854,2855,2859,2677,2678,2679,3723,3745,2694,2961,2985,2871,2928,2929,2956,2926,2950,2949,2951,2955,2675,2676,2932,2673] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1716,1735,1737,1285,1461,1465,1514,1471,1515,1511,1513,1475,1614,1615,1550,1551,1622,1653,1518,1524,1295,1280,1292,1293,1281,1571,1331,1430,1294,1454] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2129,1121,2420,2421,2416,1087,2422,1088,1089,2426,1113,1882,1884,2153,2112,2115] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2296,2298,1785,2293,1750,1753,1764,2310,2299,1228,1227,2314] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1159,1132,1401,1382,1383,1384,1385,1077,886,1104,1076,1102,1106,1127] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4169,4264,4298,4308,4458,4460,4462,4463,4303,4034] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [864,1921,1913,1914,1590,1630,1632,1322,1321,1592,1595,1602,1645] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        

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
        
        load "data/4ZK5.pdb", protein
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
 
        load "data/4ZK5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1121,773,148,149,742,113,147,1144,1220,1143,1222,723,725,729,270,726,114,724,1221,709,115,143,144,169,170,116,285,286,287,704,705,1223,1226,1227,1228,111,112,117,145,739,735] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1250,1089,1090,1091,1251,1229,1076,1077,1249,1081,1263,1266,135,140,3639,141,145,286,287,1227,1228,1242,142,143,1243,1244,1269,1128,1298,1281,1290,1292,1297,4042,4043,1455,1457,3666,3664,1108,1301,1304,1346,1348,4058,4055,4056,1431,1440,1375,1373,1439,4039,4040,4041,4059,1282,1283,1342,1532] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3379,3727,3725,3911,3721,3380,3574,3597,3837,3834,3836,3752,1662,1664,1663,1670,3673,1676,1678,1679,3594,3645,3608,3595,3819,3394,3392,3596,1287,1288,3676,3677,3683,3686,3393,3411,3660,3669] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [796,797,2620,2619,794,765,1120,1607,1322,1339,1579,1338,1616,1617,3655,3648,3656,1306,3621,3623,3624,3665,1307,3626,3627,3628,2644,2645,3619,1636,1637,1324,1634,1610,772,1118,137,138] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3032,3038,3044,3045,2464,2465,2466,3076,3423,3048,3024,3026,3028,2442,2444,2445,3008,3446,3447,3524,2566,3012,3029,2583,3542,3419,3421,3431] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1703,4082,1698,1704,1383,1699,1705,1388,1391,1396,1736,1394,3767,3774,1403,1707,1710,1746,3762,4078,4083,4084,4125] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3394,3596,3431,3432,2583,3542,3590,3523,3599,3374,3553,2466] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/2FGI.pdb", protein
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
 
        load "data/2FGI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2536,2537,2668,2893,2894,2416,2534,2700,2538,2396,2777,2898,2920,2522,2916,2919,2366,2364,2414,2415,2910,3410,2878,3284,3313,2947,2362,2363,2375,2394,3390,3298,3391,3397,3398,3392,3393,3399,3314,2937] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3971,1658,3972,3969,3970,1825,1601,1668,1669,1683,1686,3944,1685,1818,1817,1821,1800,1814,1674,1839,1824,1832,3802,3829,1801,3813,3824,3827,3830,3745,3961,3962,3963,3965,3742,3812,3818,3820,3782,1826,1827,1828,3983,3968,3976,3982] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1110,1111,555,699,554,1187,1188,1095,1193,1194,1195,321,188,190,1207,443,170,171,173,174,695,698,716,189,305,677,672,673,556,475,476,319,320,317,474,723,726,1081] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3517,3821,3822,3962,3964,3957,3717,3947,3913,3540,3939,3952,3687,4112,4109] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1688,1689,1691,3867,3868,3895,3897,1378,1671,1681,1684,1687,3905,1694,1693,1698,1699,1702,3896,3930,1338,1660,1316,1317,1336,1354,1348] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1818,1803,1813,1677,1678,1732,1769,1768,1373,1396,1543] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1531,2048,2030,2035,2038,2040,2041,1496,1507,992,962,964,2056,1499] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3522,3825,3828,3831,3832,3833,3835,3837,3838,3842,3843,1724,3482,3804,3480,3497,3498,1750,1753,1786,3475,3476,1751,1752,1761] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1360,1361,1057,1059,1056,1058,1271,1267,1399,1483,1265,1266,1044,1482,1368,1363,1362,1303] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [742,1082,1083,1084,743,1323,1086,741,1329,1343,1390,1611] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4196,4200,3643,3195,3640,3641,3194,4189,4182,4184,4185,3654] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
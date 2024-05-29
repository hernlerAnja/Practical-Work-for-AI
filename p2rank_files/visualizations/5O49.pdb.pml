
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
        
        load "data/5O49.pdb", protein
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
 
        load "data/5O49.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1609,1824,1827,3842,3843,3826,3831,3840,1694,1682,1693,1677,1705,1806,1807,3960,3976,3969,3972,3977,3980,3979,3833,3955,3956,1606,1835,1842,1848,3984,3991,1828,1830,1831,3758,3759,3812,3815,3809,3825,3973,3793,3795,1676,1660,1663,1643,1644,1646] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [161,162,168,173,176,731,1137,1138,713,730,718,1214,1215,1221,1222,205,203,204,334,688,692,710,165,163,166,346,347,348,349,350,459,460,461,672,569,571,493,687,1234,1231,1233,492,1229,1108] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2768,3396,3323,3324,3397,3308,3398,3401,2362,2911,2769,2885,2886,2656,2531,2532,2534,2688,2689,2364,2519,2416,2418,2417,2890,2908] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3834,3835,3889,3529,3535,3536,3926,3559,3700,3925,3730,3973,3975,4107,4109,3534,3958,3950,3968] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1548,1551,1964,1966,1685,1387,1410,1775,1740,1774,1826,1686,1809,1819,1824] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1352,1392,1702,1368,1325,1326,1668,1350,1696,1707,1710,3880,3882,3881,1689,1692,1695,3918,3941,3942] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1375,1281,1084,1085,1374,1083,1086,1071,1414,1265,1280,1262,1072,1489,1491,1074,1255,1373] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3769,3285,3291,3296,3297,3299,3478,3479,3492,2955,3553,3506,3508] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [758,1332,1343,757,1109,1111,1333,1113,1357,1355,1619] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
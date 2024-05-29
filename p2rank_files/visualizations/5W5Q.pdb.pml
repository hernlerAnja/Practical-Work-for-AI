
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
        
        load "data/5W5Q.pdb", protein
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
 
        load "data/5W5Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3663,3508,3676,3509,2660,3667,3600,3601,3487,3469,3470,3471,3754,3757,3760,3763,3713,3711,3738,3737,1347,3496,3498,2659,3619,1341,1343,3488,3500,1342,1339,3712,3714,2524,2525,3715,135,1337,3740,3523,3524,3085,3620,3610,2643,3089,3106,3672,3650,3673,3674,3456,3457,3451,3988,3804,3802,3786,3787,3785,3798,3648,3452,3647,3666,3598,3630,3671,3722,3685,3748,1731,1732,1740,3460,3461,3459,3830,3910,3912,3914,3896,3829,1723,1724,1725,1737,1738,2518,2520,2521,2527,2543,2509,2522,2523,1303,3122,127,2542,2506,3109,3101,3103,3115] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [287,1235,1233,1234,1241,1060,139,142,1236,1319,1322,1324,143,1310,1312,1224,1230,1231,285,301,302,410,668,442,1204,1202,1207,1212,1057,1059,1221,1206,1208,443,4119,4120,4118,1055,1056,1067,1068,1511,1513,1069,136,1336,137,138,1070,1352,1353,1321,1345,4133,1350,1403] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3175,3176,3177,1284,1300,1301,1302,1303,1296,1297,1293,1288,621,324,323,349,340,1342,1331,1332,3780,4093,3497,3498,1343,3488,3500,3144,3145,4035,4063,4066,4073,4061,3486,3763,3794,3762,3778,3795] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [117,120,123,1099,115,168,169,170,1107,1199,1200,1206,1208,1205,1201,116,111,112,113,114,270,721,728,752,720,1095,1122,1123,705,708,688,714,704,285,286,129,287,751] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1097,744,1100,774,775,743,1085,1092,1393,1394,1640,1666,3700,3732,1362,3696,3725,3743,3744,1087,3698,3702,3733,1677,1377,1379,1695,1698,1697,1671,1678,1668] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1760,1764,1438,1443,4154,4160,4161,4163,4164,4167,4169,4156,4157,3839,3847,3852,1772,3858,1451,1446,1449,3859,1447,3844,1766,3850,1457,4204,4206,1797,1768,4131] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [684,1200,1206,1205,1195,1202,1207,1201,1216,1218,443,546,478,539,540,543,439,683,672,673,681,1189,530,283,285,668,664,665,666,442] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
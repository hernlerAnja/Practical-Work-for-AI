
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
        
        load "data/3C4F.pdb", protein
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
 
        load "data/3C4F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3103,3532,3533,3102,3120,3123,2530,2527,2521,2528,2526,2494,2496,2500,2501,2509,2499,2502,2503,3609,3610,3611,3616,3130,3156,3157,3158,2498,2701,2713,2551,2552,2715,2960,3076,3077,3081,2879,2880,2847,3061,3088,3093,3099] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [209,1212,1213,1289,1290,1291,1296,206,207,208,205,1309,637,639,755,756,760,558,559,231,392,394,526,1307,523,182,175,179,180,181,183,230,782,380,781,798,177,178,772,774,778,786,740,200,809,836,837,799,187] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4271,4268,4269,4270,4272,1952,1949,1805,1806,4126,1803,4114,4116,1945,1950,1951,1924,1925,1938,4125,1817,4123,4275,1956,1963,4283,4276,4282,1948,4042,4098,4095,4108,4109,4261,4262,4263,4038,4041,1721,1758,1718,1778,1788,1789,1941,1942] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1198,1158,1160,1161,1187,1480,1481,1479,1159,1384,1437,1186,1146,1518,1519,1333,1334,1603,1378,1379,1380,1320,1330,1297,1483,1488] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1944,1797,1798,1893,1663,1892,1660,1493,1693,1927,1937,1919] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4262,4264,4013,4117,3813,4212,3983,4213,3836,3980,3981,4409,4410,4411,4239,4257,4118] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3480,3518,3800,3478,3479,3481,3506,3507,3757,3801,3704,3700,3698,3466,3467,3474,3839,3738,3640,3617,3652,3650,3651,3461,3613,3614,3517,2520] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3830,4051,3500,3504,3505,3506,3508,3757,3755,3756,3769,3145,3146,3772,3783,3781,3785] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2172,2169,2162,2164,2165,1651,2154,2159,1616,1627,1628,1629,1617,1619,1093,1094,1621] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1184,1186,1437,1436,1188,825,826,1465,1731,1463] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4496,4500,3414,3936,3937,3939,3412,3416,3413,4485,3950,4482,4484] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
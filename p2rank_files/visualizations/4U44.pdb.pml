
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
        
        load "data/4U44.pdb", protein
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
 
        load "data/4U44.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2481,3460,3461,2501,2502,2503,2603,2619,3579,3045,1312,2484,2487,3676,3082,3483,3484,3069,3063,3066,3049,3456,2469,2466,2467,2468,3065,2471,3633,2620,3627,3635,3636,3570,3448,3431,3469,3467,3468,3411,3590,3558,3560,3561,3623] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1284,4097,4098,4099,4100,4106,1282,1283,4096,3701,3703,171,173,174,185,187,1308,1309,1310,1307,1323,1324,176,1123,1124,1125,1110,1285,1483,1484,1115,1481,3704,1152,1142,1141,162,169,168,170,160,161,1262,1162,4112,4113,1374,1402,1397,1400,1399,1465,1466,1316,1321] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [161,1150,776,1178,1260,1261,1262,1162,1255,1256,1257,324,325,208,1177,206,207,308,736,1253,1254,732,731,753,756,317,321,323,150,155,800,769,152,153,762,752,1154] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3448,3416,3429,3430,3431,3717,3764,3720,3723,3762,3758,3633,3610,3635,3636,3745,3747,3746,3870,3872,3874,3789,3960,3417,3419,3420,3607,3608,1700,1701,1702,1708,1714,1715,1717,3855,3856,3640,3682,3697,3714,3708,3710,3632,3631,1312,3460,3461] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3692,3693,1350,1654,1655,1333,1348,1365,1364,1643,1645,1648,1672,1675,1674,1151,1155,3664,3665,791,792,1152,3660,3661,3663,3702,3662,1142,1140] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1301,1302,1303,1313,1314,3740,4064,4065,3460,3457,3458,3105,3135,3136,4033,4035,4007,4045,4038,3104,3453,377,379,378,3754,3755,4044,3448,3722,3738] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3701,3703,173,186,1308,1309,1310,3672,2484,3676,1311,1312,1313,1314,2481,2482,169,2483,184,3671,3698,3714] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4139,3804,1409,1736,1742,1743,1414,1420,3807,3810,1749,3812,3818,1774,1737,4182,4141] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2776,2780,3596,2795,2803,2804,2805,2798,2343,2792,2879,3582] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2888,2891,2893,2821,2822,2419,2887,2915,2331,2407,2409,2420,2547,2549,2584] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
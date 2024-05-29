
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
        
        load "data/4U40.pdb", protein
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
 
        load "data/4U40.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3784,3793,3800,3801,3851,3798,1768,2569,3718,3719,3758,3732,3720,3721,3517,3804,3807,3833,3834,4035,3845,3849,3697,3722,3503,3512,3516,3518,3522,1751,3506,3507,3508,3957,3877,3879,3942,3959,3961,3876,1752,1753,1765,3504,3695,3694,2556,2557,2558,1369,3810,3535,2567,1759,3767,3769] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1350,1352,1264,410,1255,1258,1265,1269,285,301,302,675,1339,697,1340,1342,142,136,137,138,1381,1364,1375,4164,4165,4166,4167,4163,4173,1338,1349,4179,4180,4181,1230,1232,1233,1249,1240,1252,286,287,1235,1135,1234,1236,1114,1115,1095,1096,1097,1098,1136,1083,1085,1086,1087,1088,1537,1539,1541,1531,442,443,1384,1387,1431,1456] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2590,2588,2589,3666,2690,3648,3132,3571,3570,3156,3168,3169,3153,3160,2707,3555,3543,3545,3548,3172,3176,3177,2542,2549,2558,2543,2532,2537,3199,3200,2534,2535,3152,3161,3162,3647] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [145,147,1371,3810,1329,1330,1331,3535,1316,1359,1360,3809,3825,3827,3828,2560,2549,2550,2551,2552,2553,2556,2558,2543,3534,3547,3841,3842,3191,3192,4082,4108,4119,4120,4137,4139,1312,4113,4140,3544,3545,3546,3548,3540,135,2565,2562,1332,349,1324,324,3222,3223,151,2544] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [170,169,286,287,1123,1227,1228,1236,121,168,112,113,114,115,117,120,122,123,1127,270,712,716,736,749,733,1150,1151,756,780] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1694,1696,1699,3752,1421,1422,1705,1706,1725,1726,3780,3750,3751,3778,3779,1389,1390,1405,3773,1125,1113,1115,771,772,1120,1668] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3714,3670,3677,3657,3672,3645,3723,3722,3556,3518,3498,3499,3713,3698,3673,3555] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [4204,4206,4178,4207,4208,4182,4211,1471,3891,3886,3897,1466] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
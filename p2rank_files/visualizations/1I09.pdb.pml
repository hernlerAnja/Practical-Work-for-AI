
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
        
        load "data/1I09.pdb", protein
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
 
        load "data/1I09.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1171,1338,1211,1314,1315,1317,1311,294,4368,4378,4385,4386,4387,4367,4377,1330,1331,1332,1334,505,488,296,4569,293,295,4558,4561,4563,4567,4379,1422,1447,1416,1335,1161,1336,1342,498,1351,1352,4566,1421,4544,4555,4559,4568,4570,1409,277,1316,426,427,276,314,265,312,313,261,263,617,1308,1309,1310,410,616,753,1227,746,748,759,766,764,768,280,285,291,292,425,442,508,423,489,290,443,4362,1188,1200,1199,259,773,780,799,1228] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3824,3905,2801,2854,2855,2856,2961,2965,2967,2968,2969,3348,3062,2983,2984,3061,3042,2985,2805,3364,3366,2952,3380,3399,3784,3783,3807,3795,3765,3767,3911,3912,3913,3934,3906,3907,3910,3928,3926,3796,3904,3169,3346,3349,3353,3373,3823,3370,3766,4034,2827,2822,2818,2819,2842,2832,2833,2834,2835,2989,1801,1802,1784,2836,2837,1803,1778] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1452,1466,1502,4395,1811,1504,1531,1537,1541,1542,4020,4023,1539,4354,4358,4364,4394,1812,1774,1785,1786,1430,1433,4369,4370,1426,4123,1428,4042,4052,4086,4087,4088,4019,4396] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [214,417,436,725,216,239,87,13,88,699,681,320,321,322,324,237,238,319] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2152,1592,1595,1596,1597,1598,1604,1605,1608,2188,2191,2193,2500,2501,1366,1365,1102,1603,1128,1100,1101,1126,1108,1109,1076,1112,1632,1104,1074,1077,2200,2206,2182,2171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3698,3700,4188,3696,3697,4186,4187,4182,4216,4843,4831,3672,4834,4835,5143,5144,3704,3705,4179,4180,4181,4805,4189,4192,4193,4795,4800,4836] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3435,3436,3459,3845,3471,3473,3524,3844,3553,3554,3556,3557,3558,3389,3842,3592,3594,3390,3391,3864,3867] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [998,928,957,960,1249,962,1246,1248,835,836,871,873,2360,936,1240,1234] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2781,2629,2630,3252,3251,3325,2863,2864,2865,2758,3232,3234,2756,2978,2866,2867] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1852,2139,1893,1894,1850,1818,1820,1843,1552,1554,1932] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
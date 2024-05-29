
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
        
        load "data/4E6Q.pdb", protein
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
 
        load "data/4E6Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [387,388,493,525,405,483,484,485,188,241,186,240,242,230,193,194,196,197,203,204,228,227,1343,213,217,218,219,222,463,465,214,486,184,190,191,192,1320,1326,1328,1327,1341,1342,1214,1185,1223,1349,1350,1351,1490,185,1240,1209,1210,1213,776,632,1239,372,777,795,801,826,861,189,798,833,1218] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3233,3777,3782,3783,3784,2695,3234,2690,2694,2696,3680,2646,3670,2647,3696,3697,3675,3666,3667,3089,333,324,2638,2639,2640,2645,3283,3291,3290,3318,3238,3255,3258,2643,2642,2829] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3680,3785,2646,3670,3671,2647,2657,2658,2682,2683,2680,2681,2671,2672,3782,3783,3784,2690,2696,2844,2845,2645,3798,2982,3800,2862,3642,3806,3807,3808,2673,2676,2678,2944,2938,2940,2943,2916,2920,2922,2945,2950] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3326,3328,3330,3314,3353,3355,3356,3357,3365,3366,3367,3280,811,790,3276,3278,357,782,661,662,353,346,349,337,343,344,354,3393,3394,812,3729,3726,805,1253,1254,641,786,1256,3722,3321,3273,3313,3319,3271] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [250,251,395,396,397,147,2790,99,129,130,752,753,100,265,378,131,133,143] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3566,3881,4785,4778,4782,4113,4114,4116,3541,3535,4776,4773,3565,3567,3564,4115] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1072,2316,1656,1657,1658,2319,2311,1659,1660,2300,1663,1424,2276,1078,1084,1107,1108,1109,1419] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1726,2243,2244,2242,1885,1886,1693,1694,1696,1560,1527,1534,1535,1533,2052] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [797,809,3279,796,810,258,167,168,259,3269,3268,3708,3718,3721] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [850,851,1861,1554,1846,1198,1552,1555,1550,1553,1860,1518,1521,1214,1184,1211,1212] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3823,3824,2940,2941,2942,2943,3943,3944,3947,3800,3808,2972,2911,2912,3928,3933] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1489,1515,1516,1645,1469,1599,1625,1487,1482,1485,1593,1597,1603] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3973,4054,4056,4447,3972,3987,4448,3958,3966] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
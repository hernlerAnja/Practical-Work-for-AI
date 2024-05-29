
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
        
        load "data/5IU2.pdb", protein
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
 
        load "data/5IU2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [401,403,404,551,552,553,505,1477,1386,1474,1366,1365,657,998,1468,991,1002,1467,1469,1470,405,407,408,409,410,1001,426,406,428,1052,444,446,427,1027,1377,1378,1379,1005,1019,1020,1021,1023,1401,541,530,671,672,668,670,1476,1471,1475,547,660,664,658,986,987,506,484,526] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2936,2938,3856,3848,3045,3049,3055,3849,3850,3854,3855,2937,2795,2796,2797,2798,2799,2800,2793,2815,3406,3756,2814,2816,3431,3765,3042,3365,3370,3780,3846,3847,3377,3381,3366,2802,3043,2801,3402,3384,3399,3400] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2936,2938,3856,2891,2911,2890,2932,2793,2937,2872,2832,3744,3745,2834,2815,3756,2814,2816,3758,3765] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2948,2949,3065,3321,3322,1973,1992,1993,1967,3315,1990,3078,3079,1632,1634,488,490,1633,495,512,514,515] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2883,2897,2899,2900,2876,2878,4016,4017,4018,4407,4350,4349,4378,4379,4380,4381,936,564,4362,4382,675,676,677,680,694,942,943,935,563] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3659,3658,3661,4694,4695,4696,4701,4706,3634,4710,4128,4137] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1754,2307,2308,2303,2306,1282,1774,1742,1747,1748,1753,1280,1745] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1379,1652,1653,444,1366,1364,1042,481,484,485,487,1625,474] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [530,671,672,1490,1476,1491,505,1477,523,526] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1409,1411,1413,1171,1172,1173,1175,1176,1177,1178,1148,1174,1146,1410,1407,1408,1417,1425] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1603,1610,1614,1613,1600,1589,1690,1341,1496,1571,1572] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        

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
        
        load "data/4F7S.pdb", protein
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
 
        load "data/4F7S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [233,236,227,228,1379,534,535,536,1376,1397,433,1368,1369,1373,1374,1375,432,1240,1247,290,288,289,231,564,431,793,795,797,247,248,273,565,1383,1367,640,641,642,1263,1264,821,2779,848,2780,2781,416,801,818,792,791,1239] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4148,4149,4160,4158,4159,4465,2865,2866,4458,4459,4460,2867,2877,2879,2882,4466,4467,4469,4471,4468,4117,4106,4184,4109,2846,2849,2850,2851,2864] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [4847,4848,4839,4843,4844,4845,4846,4888,4841,4872,4849,4850,4386,4387,4384,3244,3207,3208,4806,3245,4895,4876] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4773,4774,4391,4394,3165,3166,3168,3161,3171,3173,3124,3125,3126,3167,3169,3170,3172,2990,4799,4797,4798,4403,3051,3157,4397,3197,3155,4401,4433,4404,3024] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2605,2607,2391,2635,2640,1751,967,1747,986,2651,1021,1017,1011,1012,1010,1013,2376,2347,2346,2377,2335] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1157,1175,1201,1180,556,2834,525,1391,3670,3677,3679,1169,1181,1440,1441,1612,1439,1182,2814,2817,2818,2819,2821,2825,3681,1158,1160] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1235,1520,1521,1233,1234,894,1735,904,906,1224,1779,1483,1485,1226,866,1484,1507,1509,864,867,869,859,861] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3558,3858,3860,4958,4960,3850,4956,4957,4962,4937,4998,4999,3869,4961,4984,3542,3543,3544,3916,3904,5007] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1196,1617,1619,1449,1451,1452,1528,1561,1562,1648,1530,1531,1411,1210] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2490,2491,2062,2063,2043,2098,1550,2086,2087,2099,2499,2484,2061,1602,1627,1587,1551,1584,1588,2065] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1999,2475,1986,1985,1978,2263,2259,2436,2031,2032,2033,1998,1989,1990,2034,2470,2474,2432,2458,2464,2468,2469,2434,1982] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2754,2701,2743,2744,1004,2755,981,982,972,975,2724,927,968,974] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
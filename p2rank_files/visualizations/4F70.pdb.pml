
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
        
        load "data/4F70.pdb", protein
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
 
        load "data/4F70.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [440,442,801,803,1373,298,272,273,274,275,276,277,299,237,239,242,542,570,248,647,1369,646,648,1265,1266,824,827,2671,2672,797,799,425,807,818,820,802,798,1370,1379,1242,1384,1382,1241,855,887] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [872,875,1398,1228,1434,1422,1423,1399,870,867,904,905,908,909,1649,940,941,1693,1694,1435,1242,865] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4033,4000,2729,3992,2760,2762,3989,2747,2748,2750,2765,4343,3997,4348,4344,4349,4350,4351,4352,4353,4354,4037,4041,4042,4043,4341,4032,4067,2732] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3426,4867,4864,3757,4879,4880,4882,3439,3440,3441,3739,3740,3741,3743,3756,3736,3752,3733,4841,4839,4840,4820,4845,3424,3425,3788,3427,3787,5,7,9,4890] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [563,535,538,539,540,542,569,1373,571,647,639,1366,1360,598,1175,531,1180,1186,1374,1377,1370,1192,1131,1363,1367,1132] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3997,4004,3239,3240,3242,3238,3981,3986,4034,3222,2716,3975,3976,3971,3978,3539,3543,3544,2704,2717] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4654,3051,3052,3053,3054,3055,3056,4681,4652,4656,4680,4682,3009,3048,3049,3008,3050,4657,2873,2874,4287,4284,2907,4280,2934,3038,3083] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3313,3315,3317,3307,3309,3345,3346,3355,3356,3347,3042,3396,3082,4286,3040,3081,3076,3080,3075,3071,3320] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2496,2498,2282,989,1665,990,991,992,2526,2531,988,1013,1022,1023,2542,2267,2278,2237,2268,2226,2233,2238] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1464,1465,2382,1952,1934,2381,1989,1977,1990,2375,1953,1956,2390,1516,1541,1498,1501,1502] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3378,3380,3372,3376,3383,3410,2953,3387,3405,3402,47,50,77,78,52,89,3381,3363,2952,81] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
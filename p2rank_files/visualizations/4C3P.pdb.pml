
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
        
        load "data/4C3P.pdb", protein
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
 
        load "data/4C3P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [470,157,471,146,1144,313,314,472,1145,1226,1233,1234,1235,504,706,505,1132,1159,1160,1161,1227,767,775,581,154,156,165,167,149,158,440,434,435,438,403,405,329,127,133,134,136,139,185,186,187,312,722,130,297,128,138,745,748,766,727,739,1104,1120,1121,3626,433,1259,1100,1248,1257,430,431] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2737,2776,3552,3553,3554,2773,2774,2775,2706,2742,2469,2471,2675,2709,2633,2744,2808,2616,2617,2618,3010,3026,2735,2736,2707,3539,3561,3563,3564,3538,2453,2457,2459,2450,3565,3530,3533,3567,1346,3566] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1282,458,459,494,496,1284,2724,2725,2727,2717,2718,2700,1283,1285,1286,1287,2719,2723,2753,2754,461,483,484,490,517,518,519,520,521,2215,516,4445,4452,4447,487,2216,4463,1291,2736,2702,1281,2734,2765] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [460,419,420,425,426,461,421,423,424,2791,2788,3591,398,2787,2820,2821,2822,2824,459,412,413,414,396,415,3579,3580,3582,3585,2765,2761,2762,2763,3586,3587,3588,3589,3590,2794,2798] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3530,3531,2884,3464,3465,2491,2490,2438,2440,2431,2432,2437,3031,3049,3038,3043,3052,2434,2450,3538,3070,3079,3436,2616,2618,3026,3027,2808,2601] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1092,1094,1276,3725,3723,3724,1275,1277,1299,1497,1298,3579,3580,3581,1261,1439,1458,1459,1460,3722,3695,1466,1467,1468,3567,3565,3398,3558,3751,3752,3753] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1388,1398,3913,3914,3940,1399,3941,3903,3867,3868,3124,3126,3898,3123,3093,3095,3121,3127,3440,1365] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3607,3692,3664,3663,1092,3725,3723,1090,3694,1258,1260,1261,1263,1255,1256,1104,3628,3721,3690,3691] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3621,1684,1685,3654,3655,1612,1658,1644,1642,1136,791,1137,1657,3644] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3616,3663,1710,3617,3636,3733,3734,3699,3697,3701,3702,1750,1752,3691,3732] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4505,4506,4507,4485,2183,2194,2170,2180,2182,4486,449,2208,2197,2198,408,409] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
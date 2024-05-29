
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
        
        load "data/5UI0.pdb", protein
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
 
        load "data/5UI0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [271,273,420,422,423,424,1392,407,785,555,215,216,217,222,223,225,272,219,408,406,220,831,1307,1308,1309,824,803,806,789,1279,1391,1393,1386,668,1385,784,834,234,827] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3226,3751,3752,3753,3223,3829,3830,2821,2954,2608,2663,2611,2664,2662,2819,3230,3233,3723,3737,3732,2822,3835,3837,2823,3834,2607,2613,2614,2610,2807,3188,3202,3067,3184,3196,3205,3198] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3725,3726,3701,3738,3859,4000,3858,3860,3728,2625,2626,2638,2639,2641,2643,2636,2637,2645,2924,241,2644,3998,462,465,461,477,4016,4017,3995,3996,503,2822,3837,2823,2953,3836,3850,3851,3853,2919,2921,3852,2920,3737,2646,2647,2648,2898,2615,2614,2664] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [234,235,238,242,243,2642,1552,2632,2633,2863,1281,1282,1284,1572,1551,2876,1573,2860,247,249,251,525,1414,1415,1416,1406,1405,1556,273,423,254,256,257,424,1392,223,225,1257,1293,1294,1390,1391,1393] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1539,1553,1527,1528,494,1554,1555,3966,3971,3972,3999,3989,3992,3996,3997,3965,3873,3874,3947,3691,3945,3946,4000,3860,2892,2893,2894,2923,493,1556,495] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2642,2644,1552,1554,3998,238,242,243,3997,2640,2901,2890,2891,2632,2633,1551,2876,247,525,502,492,1556,491] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1247,1502,1503,1556,1429,1430,1416,1545,1548,1553,1527,1528,1555,1521,1566] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1720,2262,2255,2259,1157,1155,1159,1187,1707,1709,1185,1186,1188,1706,2252,2254,2266,2270] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4706,4699,4150,4153,4696,4697,4698,4710,3629,3630,3631,4714,4161,4163] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3189,3092,3073,3074,3076,3816,3767,3815,3068,3193,3069] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4372,59,58,4370,4371,35,4408,4410,712,53,49,51,57,4400,4377,4381,736,733,725,726] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [464,465,4045,4313,3249,3250,4265,3727] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
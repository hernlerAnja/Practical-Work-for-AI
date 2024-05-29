
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
        
        load "data/4PTE.pdb", protein
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
 
        load "data/4PTE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1692,3922,3932,1699,1700,2789,1901,2791,2794,2797,2775,2781,2799,2936,1672,1675,1689,1717,1724,3924,1919,1920,1914,1918,3826,3680,2922,3006,3809,3810,3823,3824,3825,2800,2937,3703,2987,2992,3003,2999,2938,3696,3679,3692,3694,3695,3828,3829,3831,2994,2996,3835,3841,3663,3907,3906,1893,3653,3845] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1088,1071,1235,1239,1343,4279,1233,1236,1237,1061,401,1243,399,4302,1333,4277,4280,4303,1335,4506,4507,4496,4488,4253,4256,4285,4288,1317,1318,1087,1111,1216,1218,218,219,216,1217,213,413,1231,1232,355,356,394,361,206,208,210,4309,4310,4505,4502,203,4286,4287,194,200,4261,4262,4263,1104] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1111,1216,1218,218,219,1215,1212,341,339,1208,1209,1127,1211,442,194,235,237,184,186,236,324,673,679,668,188,182,719,1128,693,690,183,686,1100,1099] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2922,3808,3809,3810,2800,2920,3703,3801,3803,3804,3807,2765,2769,2767,2816,2817,2818,2905,3261,3312,2763,2764,3693,3692,3691,3720,3286,3719,3277,3279,2775,2799] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3989,3987,3988,4016,4026,4024,4027,1400,1401,1428,1434,1326,1329,1436,3915,3918,4297,4259,4270,4296,4271,1328,1709,1683,1708,1358,1359,1362,1364,1682,1671,3946,3947] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [755,781,783,861,860,862,1133,1135,1146,1148,1149,756,828,859,857,897,898,858] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2603,2721,2723,2824,2825,2827,2912,2913,2826,2744,2746,3184,2617,2604,3166,3185,3238,3167,2828,2829,2931,2929] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3348,3349,3375,3420,3377,3450,3451,3452,3453,3454,3738,3740,3490,3741] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [246,247,248,348,350,600,162,164,163,139,141,18,31,17,332,578,646,596,576,595,243,244] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4045,4054,4438,4439,4451,1444,1871,4043,4049,4055,1455,1850,1849,1466,1467,4450] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
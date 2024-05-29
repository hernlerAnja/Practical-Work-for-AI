
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
        
        load "data/7VDR.pdb", protein
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
 
        load "data/7VDR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1050,1079,695,81,688,668,669,681,682,640,642,1157,1158,638,639,509,1078,401,644,641,643,692,111,1162,1163,1164,1165,1062,1051,135,257,82,244,78,122,259,136] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3405,3407,2404,2409,2410,2411,3299,3304,3401,3404,3320,3399,3400,3292,2403,3321,2922,2923,2930,2934,2935,2937,2519,2910,2881,2751,2880,2890,2907,2532,2533,2534,2535,2884,2643,2644,2886,2885,3406,2882,2883] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [5950,6303,6302,5942,5912,5913,5883,6331,6134,6160,5778,5786,5810,6133,5889,5812,6122,6123,6124,6128,5784,5790,5921,6094,6272,6273,6274,5878,5821,5811,5813,5814,5815,6292,6291,6296,6297,6294,6193,6194,6190,6192] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2962,2963,2956,2959,2960,2961,1334,1335,1337,1039,1314,1315,1316,1317,1321,2398,2400,2391,1332,1348,2386,1055,1054,712,2993] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3577,3579,3566,717,718,719,720,721,3574,3575,3576,3578,713,706,714,751,3590,3573,3296,2953,2954,3297,3556,3557,3563,3558] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [6566,2624,6560,2852,2853,6559,6593,6623,2621,2652,6599,6601,6595,6596] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [5300,4951,4956,5301,4995,4975,4974,5303,4927,4954,4949,4940,4941,4945,1253,1255,5287,5302,1244,1245,4994,5296] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2610,3406,3420,3421,3422,3423,3429,2611,2535,2536,94,74,3263,3281,3405,3407,3304] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4388,4392,4423,3997,4000,4374,4380,4385,4387,4393,4048,4052,3996,4349,4205,4354,4394] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [3673,4415,4078,4079,3674,3676,3672,3624,3660,3670,4111,4099,3678,3679,4407,4064,4061] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1428,1418,1869,1819,1837,1431,2158,2165,2166,2173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [6323,6324,6294,6615,6194,6183,6184,6189,6190,6192,6614,6208,6209] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
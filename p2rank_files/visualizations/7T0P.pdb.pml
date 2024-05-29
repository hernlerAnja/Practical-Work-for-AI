
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
        
        load "data/7T0P.pdb", protein
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
 
        load "data/7T0P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [778,1099,1100,1101,1102,1103,1679,784,1680,1681,1074,1075,1076,1288,1389,1390,1391,1384,1388,1429,1421,1377,704,343,345,361,362,762,134,723,725,1273,1282,1285,467,1277,1636,1088,1089,1098,1109,1111,1414,1416,1418,1419,1420,761,1068,1070,1071,1072,1413,1073,709,1126,1127,1265,726,730,757,729,736,754,1269,1110,176,189,191,150,153,131,177,156,158,159,190,132,135] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3514,3515,2283,2284,3516,2274,2275,2276,2278,3229,3230,2270,2302,3398,2316,2492,2493,2301,2315,2314,2474,3502,3513,3198,3199,3238,3215,3216,3236,3222,3225,3226,3227,3538,3541,3543,3544,3546,3545,3394,3237,2829,3253,3390,3414,3452,3410,3415,3417,2589,3200,3402,3407,3197,3201,3202,3554,2882,2886,2887,2903,3228,3254,2870,2879,2909,2476,2848,2850,2261,2854,2861,2258,2259,2262,3808,3809,3810,3765] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [4094,4095,4096,4097,4113,4117,4062,3966,3967,3968,3969,4063,4066,984,986,985,2046,2076,983,2050,2053,2075,2111,934,914,3944,4101,4103,3945,3947,3949,3974,1022,962,988,963,569,571,942,943,932,931,930,937,938,915,945,913,1215,1019,1020,4073,552,558,560,561,4139,4141,1231,993,995,4041,4068,4071,4072,4061,4070] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4074,4228,542,4192,4193,4225,4226,4071,4072,4159,4155,4158,4136,4160,591,593,594,544,545,553,554,557,546] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2597,2598,2599,2601,2749,2795,2595,2596,2568,2762,2750,2159,2763,2798,2796,2797,2138] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2629,2630,2606,3423,3437,3640,3185,3177,3178,3180,3419,3422,3193,3195,3424,2611,2577] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [623,624,625,15,629,636,638,673,674,444,473,474,671,672,477,478,479,476,667,670,475] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1050,1066,1511,1298,489,1294,1297,1299,1312,1058,1068,1284,1051,1054] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        

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
        
        load "data/4OBP.pdb", protein
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
 
        load "data/4OBP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3638,3640,1304,1306,1307,1258,1259,1260,1357,4042,1089,1257,1466,1467,1440,1448,1272,1273,1276,1278,4026,4027,4028,4029,4024,4025,4041,4045,1290,1291,3613,165,1098,1100,1099,1117,1116,1085,1086,1313,1355,1090,1383,1385,1449,1382,1254,1251,1237,1238,317,1137,171,172,181,170,316,330,332,441,1252,1253,182,185,321,380,415] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [751,1153,738,1152,750,744,1229,1230,173,174,175,176,177,178,179,199,200,1235,1236,1238,315,317,1232,1228,1231,146,147,143,144,145,300,718,735,714,713,734,732,733,782,779,780,781,814,3602] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3568,3619,3634,1672,1673,3570,1679,1688,3645,3701,1671,3726,3791,3792,3793,3365,3366,3367,3368,3572,3573,3657,3680,3694,3699,3681,3684,3683,3353,3354,3356,3357,3547,3808,3810,3811,3695,3897,3801,3651,3654,1296,3385,3660,3569,3544,3545] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3597,168,1127,1130,3595,1315,1316,1348,774,1588,1347,3639,1614,1616,1619,1646,1626,1625,1645,3623,3629,3630,3622,1331,2594,3593,804,805,806,3600,3601] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2982,3498,3006,3019,3420,3421,3018,2438,2439,2440,2556,3516,2557,3395,3393,3405,2998,3000,2540,3003,2986,2437,3002] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3394,3041,3042,3073,3691,3944,3074,3981,3982,3975,4002,3972,3970,1285,1286,1284,3659,3675,3692,3660,3677,4001,3383,3385,3397,3398,1295,368,369,371] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2302,2824,2390,2389,2391,2482,2484,2378,2486,2481,2521,2485,2852,2825,2826,2827,2829] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2556,2557,3564,3497,3507,3563,3548,3527,3495,3405,3406,3348,3572,3573] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
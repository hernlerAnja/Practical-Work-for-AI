
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
        
        load "data/7KIE.pdb", protein
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
 
        load "data/7KIE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3662,3663,2733,2734,2735,2736,2842,2844,2866,3526,3527,3563,3656,3659,3675,3676,3679,2553,2555,2556,2557,2814,2809,2811,2834,2837,2838,3684,3685,3686,3822,3825,3827,3579,2979,3095,3096,3097,3098,3100,3101,3578,3549,3655,3099,3144,2527,2518,2524,2525,2526,2576,2562,2564,2577,2520,2522,2523,3117,2720,2541,2559,2560,2561,2550,2740,2538,2519,3154,3552,3554,2546,210,474,437,475,433,3843,449,2545,3147] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [221,211,212,1318,1331,1332,1333,526,494,495,497,498,499,471,218,219,209,210,213,214,217,474,1208,1219,1209,1319,1183,1316,1317,220,393,504,395,396,1342,1491,1492,1494,2554,2556,2557,2814,3825,1340,1489,1341,1510,2789,2551,2815,2775,2773,2776] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [804,1235,787,1234,188,380,777,779,786,783,639,1311,755,765,235,236,237,378,394,395,396,758,760,379,185,184,186,190,191,189,814,1205,1319,1317,221,1318] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3686,3819,3823,3824,3826,3700,3827,3699,3837,3808,3835,3517,3741,3742,3806,3805,2806,2807,3815,3796,3807,3809,3801,3733,3736,3698,3730,3734] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1342,1490,1491,1493,1494,466,467,1173,1360,1362,1364,1409,1397,1463,1468,1474,1475,1476,1482,1472,1473,1410,1414,1486,496] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
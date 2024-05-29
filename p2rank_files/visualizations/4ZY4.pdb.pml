
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
        
        load "data/4ZY4.pdb", protein
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
 
        load "data/4ZY4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2609,2610,2611,2499,2501,2482,2483,2479,2965,3433,2834,2835,2970,2977,2988,2500,2594,2982,2701,2702,2704,2759,2760,2966,2627,3440,3441,2457,2451,2453,2455,3364,3365,2984,2991,3442,2452,3434,3435,3436,3443,3495,3446,3451,3453,3465,2832,2727,2728,2729,3455,2725,2758,2696,2726] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [230,231,233,236,244,245,247,1090,1183,1181,1182,1184,1178,1197,751,755,1079,1176,248,371,373,265,375,707,1175,358,705,443,468,1106,733,1107,724,712,228,263,264,219,221,222,726,748,246,397,440,432,434,436,3564,3566,3581,3565,1208,1069,1080,1068] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3536,3537,3538,3685,3684,3574,3575,3938,1341,1342,3666,3682,3961,1666,1667,3524,3526,3527,3532,3558,3573,3572,3518,3519,3598,3624,3634,3599,3579,3585,3586,3502,3633,3661,3659] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [270,273,384,142,144,191,166,271,275,281,289,363,364,365,366,679,681,131,132,133,623,625,167,169,684] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1209,1328,1201,1207,1042,1319,1322,1323,3923,1325,3577,3571,3936,3937,1313,3929,3930,409,434,435,406,1214] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1453,1274,1238,1462,982,1463,980,1460,1461,1275,1276,2006,2010,2011,2004,2005,2015,1467,1468,1965,1470,1284,1285,979,949,953] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3968,3969,3971,3970,3972,3973,1418,1733,1695,1696,1702,1707,1709,1316,1317,1410,1408,1425,1413,3946] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        

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
        
        load "data/6PP9.pdb", protein
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
 
        load "data/6PP9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [184,282,1184,183,266,1097,1096,1098,146,281,702,673,698,676,137,138,139,140,142,143,2726,2727,2729,134,729,730,731,732,733,696,697,691,693,634,1206,653,1177,1183,548,647,648,649,530,1174,525,1194,1195,278,526,135,671,669,670,1057,1055,1068,1078,1067,147,148,150,155,1349,1353,3655,3661,3663,3664,3656,1346,3672,3674,149,720,721,722,2725,2728,1069,1070,1071,703,2721,2706,2709] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3457,3464,3565,3442,3443,3444,3426,3428,3564,3641,3642,3619,3621,3647,3643,3730,3427,3717,3713,3714,3723,1712,1718,1725,1722,1724,3425,3413,3877,3622,3623,3624,3625,3415,3455,3566,3567,3568,3456,3101,3105,3106,3481,2528,2533,2566,3130,3098,3099,3645,3646,2686,2547,2549,2550,2551,2552,2685,2702,2684,3615,3617,2519,2520,2525,2526,2565,2522,2523,3562,3563,3403,3594,3572,3581,3584,3591,3043,3056,3057,3480,3559,3080,3081,2666,3077,3073,2545,2534,2537,2541,2544,2543,2530,2531,2546,3671,1729,1732,1733,3683,3719,3684,3687,3692,3694,3697,3698,3702,1742,1743,3710,3711] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2861,2946,3042,3043,3054,3056,2932,3559,3562,3561,3569,3572,2862,3577,3579,2684,3567] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3637,3604,3634,3635,3632,3659,2766,3609,1678,1688,1690,1691,2724,2731,2734,2736,2765,755,2746,2764,3638,758,1660,1664,1665,1666,1655,1652,756,722,3656] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1392,1339,1338,1447,1325,1352,1390,1375,154,155,1342,1343,1038,1040,1057,1056,1034,1499,1321,1025,1029,1233,1230,1231] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2341,2311,2312,3511,2894,2342,2345,2346,2347,2348,2936,2937,3543,3066,3065,3526,2899,2326,2885,2325,2889,2896,2924] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2338,2340,2961,2650,2645,2646,2339,2372,3067,3070,2341,2311,3509,3510,3511,2342,2345,2347,3063,3065,3496,3526] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1752,3799,3800,3801,3760,3761,1716,1715,3417,3418,1721,1724] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2492,2574,2489,2447,2693,2694,2446,2443,2468,2592,2673,2674,2675] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        

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
        
        load "data/6BFN.pdb", protein
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
 
        load "data/6BFN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1273,1222,1219,1255,1256,1257,1272,1238,3581,3583,3563,3566,3599,3616,3617,3600,3601,752,757,1229,1230,1231,2961,772,3574,3137,3575,3122,588,591,592,2991,2992,2993,3116,580,587,2994,3117,3118,624,626,628,751,753,2950,2958,2962] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [2584,2585,2743,2634,2635,2636,2741,2589,2592,2617,2619,2729,2587,3529,3532,3549,3550,3525,3526,3627,3637,3636,2984,3136,2985,3107,3118,3109,3111,3113,3133,3141,2583,2586,3153,3154,3161,3162,3187,3130,3134,3127] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [265,217,822,213,214,215,216,219,222,771,1181,768,769,789,1206,792,796,797,776,788,762,764,359,765,814,821,224,225,1182,1283,1286,1185,1291,1293,1292,249,266,373,615,744,746,1205,371,745,747,748,742,743] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [237,239,1153,1388,1390,1154,1387,1389,1170,1171,1395,235,236,246,248,243,394,240,242,1290,1291,375,503,1305,468,469,437,443,1314,1315,1316,1386] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1240,601,1004,1027,1003,974,975,977,976,3574,3575,3122,2712,1002,1222,1255,1256,1257,1264,588,591,592,3116,3119,599,600,2706,2709,2710,2705,1025,1026,3123] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3658,3659,3660,2807,2808,2839,3730,3650,2873,2838,3498,3515,2745,3497,3731,3739,3514,2610,2608,2612,2810,2814,2815,2764,2761,2763,2613,2615,2609,2607] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [2970,2971,3318,3348,3369,3371,3346,3316,3319,2961,340,342,336,3600,3601,3608,3584,335] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [479,658,659,660,672,41,42,510,657,488] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
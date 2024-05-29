
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
        
        load "data/7W7X.pdb", protein
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
 
        load "data/7W7X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [170,171,689,692,1093,164,192,165,166,167,168,169,141,142,143,699,723,720,140,137,138,139,656,658,660,664,672,191,446,1176,1167,301,520,639,640,1092,661,665,315,316,317,1182,1180,313,309,624,1078,1179,1077] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2298,2300,2296,2297,2299,2301,2272,2275,2322,2269,2270,2267,2271,2295,2323,2787,2788,2760,2764,2757,2759,2763,2798,2819,2822,2791,3192,2777,2778,3177,3266,3267,3273,3275,2428,2738,2739,2547,3278,3279,2444,3281,2436,2440,2442,2720,3172,3191,2743,2750,2765,2621] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [567,574,602,604,605,586,587,4171,4135,585,372,375,402,4197,359,364,365,4196,4160,4162,4163,4168,366,2592,3014,3016,3040,3043,3045,2590,3036,3037,3038,3075,2598,2599,2606] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1194,1200,1203,383,419,420,1188,1190,1204,1271,410,411,412,2932,4245,1205,2963,384,2965,4221,381,3219,3220,350,418,1208,1265,1267,1272,1032,2931,2939,3227,1294] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1551,1585,1587,1591,1851,1875,1588,847,1590,1837,881,1555,2091,1876,855,856,854,823,826,1850,1838,1839,1840,845,850,843,844,849,825] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2925,3946,3932,3933,2922,2944,2946,2955,3971,3945,3970,2948,2953,2924,2942,2943,3646,3682,3683,3685,3686,3680,3650,2980] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2829,2831,2833,3198,2778,2781,2782,2783,2784,2785,3203,2826,2857,2864,2867,2858,2861,1300,2869,2904,1290,3213,1299,2905,3228,3221] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1285,1313,1325,1327,1336,1027,1028,1273,1030,1032,1294,1309,1190,1017,3219,3220] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4231,13,399,431,568,569,570,455,453,5,400,4232,403,4196,4172,4203] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [757,758,759,730,732,762,734,683,805,806,685,686,765,768,727,764] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3881,4041,4043,3605,3634,4040,4037,4038,4039,3835,3602,3886,3740,3741,3443] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
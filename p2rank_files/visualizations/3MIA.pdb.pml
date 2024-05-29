
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
        
        load "data/3MIA.pdb", protein
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
 
        load "data/3MIA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [320,321,200,199,702,703,705,706,707,307,323,324,322,708,723,145,731,144,141,728,737,1139,1116,1140,757,758,759,745,746,753,744,1217,1221,1215,1216,1220,1124,578,503] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4007,3980,4017,4890,4976,4617,4570,4247,4569,4619,3981,4246,4248,4888,4889,4967,4968,4886,4009,4937,4939] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [519,520,1032,487,485,1267,455,456,493,495,1263,1253,3367,3793,484,486,1041,1044,1045,1040,4710,4717,3358,3060,4716,4730,3365,3059,3347,3797] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [411,668,354,355,356,403,404,405,353,378,379,3739,3705,3706,653,656,654,655,657,369,402,3674] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4952,4953,4814,4805,4801,4809,4810,4928,2949,4954,2981,2982,4921,5002,5004,5005,3012,4990,4993,4995,2999,3004,3005,3010,3003,4782] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3843,4677,4679,4680,4697,4749,4681,3059,3808,3842,4717,3358,3057,3060,4716,3797,3817,3803,3814,4665,3998,3831,3832,3834,3996,4747,3053,3054,3048,3083,4664] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4093,4526,4562,2881,2882,2884,2845,2847,2848,2883,4078,4066,4075,4083,4118,2726,2754,2752,2750,2751,2756,2757,2760,2763,2800,2722,4561,2857,4560,4587,4588,2725,2922] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4349,4351,4379,4449,4450,4290,4287,4283,4286,4234,4204,4201,4206,4225,4226,4232,4223,4227,4359,4361] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3109,3800,3110,3802,3805,3149,4143,2699,4144,4099,3778,2650,2698,2679,2681,3790] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1108,1112,1659,1711,1712,792,1701,1704,790,1692,1103,1450,1437,1439,1451,1113,1117,773,770,772,799,1105] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2299,2306,1908,1906,1917,1923,1929,1961,1962,1523,1924,1925] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
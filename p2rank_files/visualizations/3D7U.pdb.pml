
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
        
        load "data/3D7U.pdb", protein
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
 
        load "data/3D7U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [114,117,120,172,681,173,174,118,630,638,649,650,623,621,132,133,159,156,158,1007,1010,1011,1021,653,657,658,1037,136,145,151,257,270,272,603,590,604,256,258,605,609,627,157,1111,1114,1115,274,1108,1109,1110,1117,402,403,147,149,273,476,1036] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4241,4242,4279,4253,4234,4239,4240,4292,4237,4277,4278,4276,4293,4390,4294,4392,4393,4394,4710,4751,4769,4770,4773,4777,5157,5156,4743,4238,4750,4747,4378,4723,4725,4596,4729,4595,4724,4523,4269,4271,5237,4497,5141,5228,5229,5230,5231,5234,5127,4265,4267] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3133,3108,3209,3210,3211,3207,2350,2352,2742,2745,2749,2750,2184,2180,2182,2186,2187,2188,2193,2237,2238,2239,2344,2348,2700,2718,3131,3132,2695,2696,2721,2741,2335,2712,2714] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4269,4271,4273,5130,5131,5236,5237,5105,4463,4488,4496,5250,5251,5252,5141,5300,5103,5104,5259,5260,5258,4277,4276,4393,4394,4279,4406,5297,4270,4272,4274,4275,4267,4268,4407,4464,4461,4265] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [147,148,149,287,273,344,376,1130,1131,1132,343,1116,274,1117,157,150,151,152,153,154,155,1010,1011,1021,156,1180,1140,1177,1138,1139,984,985,1012] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [6302,6304,6306,6357,6358,6359,6305,6468,6470,6816,6307,7331,6862,7252,7253,7329,7330,7325,7327,6472,6838,6842,6843,6820,6455,6694,6815,6841] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3048,3053,2486,3056,3057,3059,3061,2520,3040,3197,2568,2996,2465,2487,2466,2495,3037,2995] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [6640,7165,7172,7115,7157,7175,7173,7168,7167,7160,7179,7181,6586,6615,7320,7324,6585,6606,6607,6688] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [710,3934,3965,3967,3968,3805,3746,4036,4027,1504,4028,4035] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [8088,8082,8079,8155,8156,8085,8087,4830,8052,8053,8054,8051,4792,8047,8078,8147,5624,5618,7925] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [7661,7662,7810,7663,7634,7803,7801,7802,7811,7604,7606,7808,7818,7822,7824,7819,7831,7573] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5,7,382,511,513,512,354,363,528,383,410,388] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
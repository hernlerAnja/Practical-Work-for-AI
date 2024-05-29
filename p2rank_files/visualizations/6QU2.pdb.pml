
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
        
        load "data/6QU2.pdb", protein
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
 
        load "data/6QU2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2613,11196,2646,2648,2650,2652,2777,2778,2780,2804,2779,2781,2782,2737,2744,2775,2776,2612,2813,2741,2743,10935,10944,11198,11199,11166,11167,10948,10952,10953,10954,10955,10957,10936,10937,10938,10939,10965,2800,2807,2816,2820,2614,2815,2821,2681,2721,2722,2723,2751,2752,10912,10910,10563,10576,10905,10569,10568,10570,10940] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2351,2375,2376,2377,2378,2002,2634,2635,2637,2638,11174,11207,11209,11211,11242,11213,11282,11336,11298,11302,11304,11337,11338,11339,11341,2606,11175,2393,11361,11368,11413,11377,11382,11381,11412,11374,2007,2008,2009,2010,2013,2349,2383,2379,2391,2392,2394] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [7056,7148,6654,7027,7055,7028,7153,7039,7156,7016,6037,6150,7147,6456,7146,7149,6600,6602,6603,6597,6607,6038,5989,6017,6018,6165,6167,6619,6620,6621,6624,5984,5980,5986,6627,6632] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [10012,8871,8873,8874,9023,9887,8892,8894,9021,8893,9458,9459,9456,8845,8848,9895,10002,10004,10005,10006,10009,9883,9911,10003,9312,9453,9454,9483,9872,9510,9912,9488,9492,9503,9006,9482,9475,9477,9480,9481,9463,9476,8836,8842,8840,9146] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [4195,4287,4179,4286,4288,4289,4167,4196,3596,3767,3747,3740,3742,3794,4290,4293,4294,4296,3297,3185,3129,3131,3183,3184,3127,3133,3136,3312,3165,3164,3772,3765,3766,3761,3759] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [274,327,440,328,271,270,308,276,279,307,282,745,888,890,892,893,1441,1443,1444,1445,457,455,1448,1329,1451,1318,1319,1305,1306,889,926,937,944,916,1346,911,914,915,922,909,910,897,746,1442,1317] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2648,2652,11240,11195,11209,11242,11213,2634,11283,11284,11285,2686,2689,2679,2680,2681,2722,2723,2724,2698,2675,2682,2038,2054,11236,11241,11243,11250,11259,11262,10615,10599] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1464,551,579,545,550,1465,1466,298,302,305,299,297,517,520,522,1329,1451,1287,1288,1289,1306,1593,457,1450,289,292,307,1468,1471,1472,1279,1579,1581,1582,546] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [6012,6289,6007,6015,6009,6183,6230,5999,6017,7155,7156,6999,6997,7016,7298,7171,7177,7169,6256,6227] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4129,4139,4316,4317,4424,4438,4426,4427,4296,4309,4310,3314,3436,4311,4422,3402,3403,4403,4417,3407,4179,4156,3154,3156,3159,3162,3164,3374,3377] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [10435,10176,10187,10390,10170,10171,10173,10175,10434,10186,9879,9870,9885,9888,6112,6094,9525,9527,9528,9529,9597,9599,10153] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [10025,10026,10027,10032,10033,9145,10011,9112,8863,8865,9086,8864,9083,8868,9111,9116,9845,9855,10142,10143,10149,10154,10140,10012,8871,8873,9872] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7031,7032,6669,7330,7317,7319,6671,6673,7331,7534,7578] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1626,1312,1313,1829,1873,1874,961,1625,1321,1612,1614,1322] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4674,4470,4471,4457,4459,4718,4170,4171,4172,3809,3811] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
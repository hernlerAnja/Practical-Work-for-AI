
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
        
        load "data/5L2W.pdb", protein
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
 
        load "data/5L2W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1210,1213,1214,984,3582,1222,1223,3606,3609,3610,3608,2935,2936,2937,2576,3571,3563,3566,3253,3254,2933,2934,2974,3241,3242,1209,393,1200,391,427,3557,2975,3245,425,3567,2551,3647,1232,1226,1236,3637,3638,3639,3640,4509,1251,1252,1253,1254,4510,1273] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [641,642,92,93,146,147,1086,1087,640,248,670,687,694,667,686,265,264,644,89,95,1058,1060,1061,1063,1070,107,698,701,98,1160,1163,108,1166,1062,1159,509,1158,650] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1427,1832,1835,1875,2199,1874,1433,1846,1841,3773,3774,2198,2189,2190,2191,1466,1440,1450,1389,1439,1441,1444] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3697,3699,3835,3871,4063,4090,3834,4089,4101,4131,3688,4130] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2894,3262,2895,3264,3269,3271,3279,1253,1255,1261,2917,4485,4487,2916,4518,4484,4450,4452,4456,4457,4458,1262,1263,3249] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2449,2462,3759,3752,2460,3736,3748,3751,2195,2198,1478,2189,2187,2188,2193,2212,1466,3763,3765,1474,1475,1472] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4501,3779,3780,1243,3638,3639,3640,4509,1251,1252,1253,4486,4510,4474] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1359,1360,1327,1343,1341,1342,1344,1345,718,1346,1348,1043,1045,1054,715,717] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [343,3438,320,3439,3441,297,577,578,3472,3437,567,298,584,585,3447,3443] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
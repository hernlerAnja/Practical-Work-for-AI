
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
        
        load "data/3P37.pdb", protein
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
 
        load "data/3P37.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3428,3452,3429,4508,4519,4513,4516,4525,3948,3401,3403,3426,3449,4091,4106,4107,4074,4072,4075,4204,4206,4208,4203,4073,3437,3459,4082,4083,4084,4089,1463,1315,1316,1335,1336,1337,1446,1462,974,3451,3450,962,963,969,970,973,989,1433,959,955,956,957,958,1319,4191,4205,4207,4209,5297,5298] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [292,298,300,284,289,290,291,1021,1227,1030,1033,1055,1059,1230,1240,1226,1228,1367,1381,278,266,1388,1390] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3760,3765,3767,4683,4693,4819,3754,3757,4834,4492,4841,4842,3742,4820,4680,3774,3776,3758,3759] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1318,1320,5291,5292,5295,5299,4168,4187,4184,5287,5288,4181,4182,4183,4171,5278,1155,5275,1147,5271,5274,1148,1269,347,1291,350,1293,1294,1289,1290,1292] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [937,5306,909,938,5278,5281,5283,5284,4197,4198,4153,4182,5263,940,942,5251,5275,4215,4251,4271] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2972,2027,3099,3113,2013,2016,2019,3098,3120,3122,2761,2001,2023,2024,2026,2959,2962] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4090,4091,4106,4107,3437,2888,3459,3460,3461,2883,2886,4202,4101,4222,2874,3429,3403,3426] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1446,1306,1307,1447,1305,1308,1319,4191,4209,4192,4544,4545,1298,4519,4523,4674,4675,4542] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3477,3473,968,3498,478,981,994,1778,1779,460,1011,1012,314] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3165,3170,3047,3194,3195,3197,2714,2715,2729,3068,3069,5374,2710,2703,3048] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [212,213,214,1595,1488,1489,1442,1422,1424] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1277,1278,1280,1282,1664,1665,1667,1168,1169,1663,1628,1626,1311,1636,1637,1299] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3017,3019,3050,3052,5375,5376,5355,3023,2085] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
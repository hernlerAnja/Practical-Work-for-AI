
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
        
        load "data/1PKD.pdb", protein
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
 
        load "data/1PKD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5636,5531,5639,4573,4574,4580,4581,4620,4571,4562,4568,4845,4877,5637,5638,4598,4736,4738,4604,4605,4600,4584,4591,5158,4619,4721,5135,5143,4566,5538,5159,5174,5559,5560,4563,4564,4878,4981,5113,5114,5115,5116,5117,5118,5119,5646,5628,4980,5631,5632,5633,5123,5140] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [89,92,95,98,101,146,147,91,93,508,641,643,650,662,664,248,642,644,100,107,1086,670,701,1087,678,686,687,667,1155,506,507,1158,1159,698,1058,1065,1070,1163,1164,1166,265,263,108,435,645,646] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [3815,2939,3801,3837,3838,3494,3486,3491,2877,2908,2904,2905,2570,2569,2911,3503,3859,3736,3738,3787,3786,2881,3746,3497] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3545,3517,3510,3511,3546,1223,1236,1252,1253,1222,1255,2854,1209,1213,2855,3150,3151,1214,3518,3519,2858,2856] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3664,3692,4364,3671,3663,3665,3577,3661,3691,3666,2840,2842,2846,2847,2849,1236,1251,1253,3540,3545,3507,3510,3511,3536,1238,3546,1237,3636,3639,4376,3638] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [8269,8274,7043,7381,7384,7412,7171,7377,7378,7042,8211,8332,7970,7976,8259,8310,8219,7964,7967,7969,8258,8268,8260,8209,8271,7032,7033,8288,8311,7029,7375,7350,7354,7351,8213,8215] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1830,1832,1841,1846,1847,1848,1875,2183,2197,2199,1427,1440,1441,1450,2198,1835,2189,2190,2191] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [8048,8050,8136,8137,8138,8165,8018,7319,7983,7984,7313,5725,5709,5724,5726,7322,5711] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [7331,7327,7328,7329,7984,5682,5748,7624,5726,5728,5746,7623,5725,7990,7991,7992,5687,5681,5686,5695,5696,5683] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [6671,6662,6663,6664,6305,6308,6314,6319,5913,5914,5900,6348,6321] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [111,115,116,125,108,1166,264,265,404,1179,368,369,370,371,373,374,372,1188] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [6913,6914,6915,8517,8067,8069,6901,6904,8023,8056,8058] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3593,3595,3596,3550,3594,3583,3582,2442,4044,2433,2431,2428] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1980,2160,2164,2127,2149,2150,2008,2161,2163,2162,2165,2156,2172,1823] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [6822,5591,5601,5618,5576,5132,4956,5128,5127,5573] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [659,1145,1103,654,483,484,1128,1115,1116,2349] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
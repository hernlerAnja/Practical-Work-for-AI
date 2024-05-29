
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
        
        load "data/1H1R.pdb", protein
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
 
        load "data/1H1R.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1058,1070,1160,1163,1164,1166,1087,145,146,1086,509,643,1158,671,640,650,1159,265,147,263,641,642,405,644,646,645,92,93,664,666,667,669,670,248,687,688,694,698,685,686,94,95,96,108,100,107,89,701] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5538,4982,5559,5631,5632,5633,5114,5115,5118,5117,5119,4618,4619,4721,4574,4581,4620,4570,4573,4580,5543,5636,5637,5639,4737,4738,5160,5171,5560,5159,5167,5137,4566,5199,4565,4562,4568,4569,5174,5531,5123,5135,5140,5143] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1253,1255,2840,2842,3151,2847,1236,1252,1275,3517,3518,2846,2850,3510,3511,2854,2855,2858,1222,3546,1213,1223,1214,3664,4350,2849,3691,3692,4362,1238,3665,3545,3577,3661,3150,3141,1209,1210,982,983,3476,3519,3477,3481,3520,3474,3475,4376,3640,3671] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [7350,7354,7375,8219,8310,7384,7377,7378,7381,7976,8332,7412,7959,7969,8288,8311,7036,7025,8258,8259,8260,8274,8209,8213,8215,7171] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2569,2698,2939,3801,2570,3798,2877,2904,2905,2908,3496,3486,2911,3494,3497,3503,3491,3836,3837,3838,2881,3859,3738,3746,3735,3736,3740,3742,3815,3786,2878] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [7323,7980,7984,5725,8018,8138,5709,8013,8019,7983,8048,8050,8164,8165,8139,8136,8137,7313,7315,7322,8835,8837,8144,8823,5726,8825] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1835,1832,1841,1846,1847,1848,1874,1875,1876,2183,2197,2198,2199,1427,1423,1444,1866,1870,1883,1389,1390,1440,1450,2190,1439,1441,2191,2189] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5914,5913,5900,6314,5862,6305,6347,6348,6321,6671,6672,6662,6663] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [8021,8067,8023,8057,8058,6902,6904,5704,6874,6901,8069,8517] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [7327,7330,7984,7624,5725,8018,5709,7990,8019,7622,7623,5687,5682,5686,5746,5748,5695,5696,5726] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3550,3582,3594,3596,3585,3583,3593,3595,4006,4040,2401,2438,2431,2428,2434,2433,4044] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [7637,4838,4845,5757,5758,5753,5754,7628,7660,5661,5774,4865,4867,5666,5654,5656,5657,5658] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1466,1472,1473,2395,2393,2432,2430,1220,1234,1225,1245,1240] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6635,6637,6291,6294,6296,6629,6645,6647,6293,6600,6636,6633,6634,6451,6453,6243] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [6931,5693,5705,5939,5713,5718,6903,6866,6905,5707,6868,6889,6892] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
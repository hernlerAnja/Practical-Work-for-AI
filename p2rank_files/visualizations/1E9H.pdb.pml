
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
        
        load "data/1E9H.pdb", protein
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
 
        load "data/1E9H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5628,5626,5627,5631,5113,5114,4732,5110,4613,4614,4716,5526,5169,5555,4559,4560,4557,4561,5554,5155,5135,5118,5130,5138,4976,5111,5108,5109,4569,5632,5634,5538,4576,4733,4568,4575,4615] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [681,1081,502,1080,1152,688,1052,692,695,1153,258,259,635,636,638,640,1160,101,102,141,92,94,95,87,140,242,83,86,89,661,664,679,680,644,634,637,1157,1064,1158,1059] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1230,3506,2837,2841,2844,4357,4359,3686,3687,3570,3572,3685,3502,3535,3540,3531,3505,1247,2835,4347,1245,3656,3659,4345,2845,2849] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [7319,7980,8014,5719,5721,5704,7979,8160,7315,8161,8140,8044,8130,8132,8133,8134,7309,7317] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [3498,3831,3854,3810,2556,2558,3832,3833,2934,3796,3731,3781,3782,2522,2873,2876,3486,3492,2872,3481,2900,2903,2897,2899,3741,2546,2550,2565,2906,2564,2551,3733] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [8205,7972,8207,8215,7371,7167,7408,7955,7965,7346,7380,7373,7374,7377,8255,8284,8328,8265,8270,7030,8306,8307,7025,7028,7038,7039,7350,8211] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [7323,7325,7324,7619,7620,7980,8014,5719,5720,5721,5723,5704,5741,5743,5677,7309,5450,5676,5678,5682,5681,5690,5691,5694,7976,7982,7984,8013,8015,7327,7986,7987,7988,7989,7985,5449] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5688,5689,5700,5702,5705,6901,6902,6861,6862,6859,5934,5941,5940,5942,5946,6863,6864,6865,6885,6888,5907,5908,5918,5919,5933,5713,5708,5714,5909] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1217,1206,1207,1208,1216,1203,3145,3146,1204,2853,2850,2851,3512,3513,3514,3515,1269,1249,3136,1230,3506,3540,3541,1247,2835,1245,1246] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2177,2184,2192,2193,2183,1826,1384,1869,1868,1434,1421,1435,1438,2391,1840,1841,1842,1835] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6309,6667,6303,6659,6300,6652,5908,5918,6657,6658,5909,5912,5894,5895,5896,6344,6314,6315,6316,5900,5905] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1160,102,105,110,118,257,258,259,371,274,276,1173,398,1175,368,364,365,366,120,1159] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [477,1097,1122,1139,478,648,653,2343,1109] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6624,6628,6629,6630,6631,6632,6597,6595,6633,6291,6242,6446,6447,6448,6238,6239,6640,6618] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [8512,8063,8065,6911,8513,6900,8024,5699,8054] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
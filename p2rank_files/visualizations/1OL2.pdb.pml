
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
        
        load "data/1OL2.pdb", protein
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
 
        load "data/1OL2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4999,5012,4996,4997,4998,4488,4498,4499,3413,3420,3388,3409,3411,2978,2979,2969,4987,4991,4649,4685,4988,4990] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [639,258,259,399,1152,1153,1052,102,1160,95,502,503,637,1080,1081,681,695,140,83,85,89,101,664,87,141,634,644,635,636,638,242] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [5620,5622,4558,4550,4546,4548,4552,4555,4547,4965,5615,5616,5107,5543,5122,5127,5143,5144,5544,5151,5158,5135,5515,5101,4719,4862,4721,4722,4705,4603,4602,4604,5100,5098,5099,5102] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [7846,7874,7875,7442,35,36,7851,7876,550,1,551,25,16,7839,7841,7810,17,524,533,534,536,222,628,7441,5019,5022,5018,7843] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5677,6874,6883,6885,6875,5920,5905,5915,5918,5919,5925,5931,6641,6854,6855,6856,6873,5671,5675,6910,5682,8007,6911,5672,5673,5690,5695,5696,5691,5694,8038,8039,7996,7999,5927] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1232,1228,1231,2414,2415,2418,2388,2392,2448,1210,1212,1214,1208,1209,2382,2383,2387,2393,1457,1462,1463,2380,1442,1452,1455,1431,3544,3545,2420,3575,3536,3576] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3565,3567,3649,3680,3681,3661,4352,4354,4343,4340,3535,3562,3651,3654,3655,2836,2830,2832,2838,2837,2839,1226,2840,3501,3500,1225,1233] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2615,5131,5602,5601,2632,2633,4941,4938,4940,4971,5108,5110,5111,5112,2613,2634,2985,5116,6802,5560,5585,5575,5557,4973,4686] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [7998,8030,7999,8028,5689,5688,5696,7299,7302,7963,8143,8144,8145,8817,7964,7293,8114,8117,8815,8124,8112,8113,8119] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1097,1112,1122,1109,2339,2338,475,477,478,1139,7080,7081,223,7448,7076,7096,649,1138,648,510,645,653] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2560,2559,3786,2929,3791,3726,2892,2688,3736,3730,3732,3828,3788,3805,3822,3849,3777,2898,2901,2867,3827] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [8239,8268,8312,7330,7355,7357,8199,8191,8285,8286,8290,8291,7956,7944,7950,7334,8254,7392,8249,8189,8193,8195,7009,7013,7023,7364,7358,7005] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1455,2189,1430,1418,1422,2188,1456,2179,2180,2181,1379,1380,1822,1416,1866,2173,1831,1836,1837,1838] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [6651,6652,6294,6285,6299,6329,6327,5881,5919,5842,5843,5845,6288,6643,5918,5893,5876,5879,5880] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        

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
        
        load "data/3F5X.pdb", protein
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
 
        load "data/3F5X.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5614,5526,5615,5616,5619,5621,5622,5486,5503,4963,4704,5097,5098,5099,5100,5101,5102,4602,4551,4556,4557,4603,5122,5126,5150,5154,5123,5542,5543,4545,4546,4547,4548,4549,5157,5106,5514,4717,4718,4719,4720,4721,4860,4736,4738,4827,4578,4581,4564,4567,4574,4586,4589,4573,4826,4828,5643,5644,5645,5765,5142] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [111,366,398,399,257,258,259,636,637,242,634,635,644,661,672,664,671,638,639,640,1159,1064,1158,1160,1152,1153,1157,1052,1059,1081,688,695,680,681,1176,1173,1174,1080,501,502,679,82,89,139,141,85,87,140,83,124,255,127,95,102,105,112,116] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [6880,6882,6883,8004,8005,5676,5670,5671,5672,5674,5904,5914,5690,5693,5694,5456,8035,8036,6907,6908,5917,5919,6871,6872] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [2830,1225,1233,3498,1226,3499,3533,3565,3560,3563,3652,3529,3534,4352,4354,4350,2834,2835,2837,3680,3679,3659,4340,4338,4341] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [8025,8027,7995,8114,5711,7290,7961,5687,8117,8121,8800,8814,8816,8111,8116,7960,7292,7296,8142,8141,5694,5695,7996] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [3774,3784,3789,3786,3803,3847,3728,3491,3734,2686,2890,2892,2865,2893,2927,2557,2558,2515,2539,2543,2544,2541,2548,3825,3826,3474,3479,2899,2896,2540,3724,3775,3730] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [8196,8309,7354,7355,7358,7327,8236,8265,7020,7953,7361,7936,8287,8288,7946,7941,7947,7944,7389,8251,7352,8235,8245,8237,8186,8188,8190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2420,2421,3573,1228,1231,1232,1234,1442,1208,1209,1210,1212,1214,994,1452,1455,1457,2410,3574,3534,1233] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [6328,6300,6326,5878,5892,5880,5913,6635,6651,6284,6287,6327,6642,6293,5917,5918,5841,5842,5844,6641] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4466,4468,5056,4516,4728,4730,5074,5075,4469,4711,4512,4491,4508] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [612,613,6,4,29,50,249,53,54,148,150,266] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [111,365,366,259,1176,1181,1182,1183,1173,1174,1024,1159,1158,1160] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1838,1864,1825,1865,1866,1822,1836,1837,1413,1416,1873,1418,2180,1430,1379,1380] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1316,711,712,1039,1049,1057,710,709,1048,1350,1336,1338,1562,1046,1047,1317,1349,1335,1337,1333] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6900,6866,5412,5410,5924,5387,6695,6697,6686,6690,6691,6685,6681,6684] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [1202,1203,1204,3129,3462,3463,3464,1216,1220,2846,3138,3506,3508,3469,3507] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [5666,5665,5438,5678,7969,5440,7924,7968,7970,7308,7600] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2768,2798,2800,2802,3219,3221] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
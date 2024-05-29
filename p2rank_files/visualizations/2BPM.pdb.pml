
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
        
        load "data/2BPM.pdb", protein
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
 
        load "data/2BPM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [664,1110,152,1094,272,674,691,169,170,171,125,115,119,113,114,751,687,694,117,711,718,722,1109,1111,725,1082,701,702,709,710,668,669,287,289,429,1188,1190,665,666,667,1183,1184,1187,532,533,1182] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [4604,4610,5242,4660,4662,4643,5156,5158,5159,5023,5024,4780,5160,5601,5179,4606,4608,4661,4763,5155,5157,5165,5600,5602,5193,5185,5573,5580,5585,5681,4642,5575,5673,5674,5678,5216] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [7497,7906,7930,7931,216,55,566,27,563,65,66,52,7496,7487,553,554,555,558,7491,252,253,7498,658,7938] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [3027,4743,5045,5046,4555,4557,5149,3028,4707,5054,5055,5057,4556,4520,3462,3461,4517,4543,4546,3018] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [3594,2440,2441,2442,1492,1472,1482,1485,1486,1244,2497,1493,1238,1249,1257,1258,1263,1262,1239,1242,1264,3624,3585] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [6966,5729,5733,5735,5748,5749,5752,5753,6939,8054,8062,8063,8093,5730,5515,5963,5973,5978,5755,5976,5977,6926,5984,5983,6743,6920,6932,6933,6936,6699] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [3584,3585,3614,3616,3703,2881,2885,2886,3550,3729,3730,3731,2888,4403,4392,3698,3699,3677,3700,3705,3710,4401,3706,4389,1255,1256,1263,1262,2879] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [8083,8085,8169,8172,8168,8872,8019,8018,8198,8199,7357,8200,8054,8053,5746,7348,5754] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [7419,7412,7413,7416,7410,7447,7994,7999,8002,8004,7385,7386,8254,8345,7388,8323,8293,8294,8295,8304,8306,8367,8011,8248,8250,8309,8244,8246,8346,7060,7064,7077,7078] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [3530,3536,3542,3876,2919,2600,3837,3877,3854,2608,2609,3835,3840,2978,3785,2941,3781,3775,3777,3779,3898,2950,3525,2591,2943,2944,2947,2916] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2219,1861,1866,1867,1868,1443,1446,1896,1894,1903,1460,1485,2210,1852,1895,1461,1448] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [678,1168,1169,1127,1124,707,1152,2369,1142,1143,1141,675,680,683,505,507,508,518] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [5029,5031,5166,5169,5170,4988,4996,4999,4998,5659,5660,6860,5615,5633,5171,5174,5618,5643,2662,2682,2681,3034] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [6343,6385,6346,6387,6394,6381,6357,6358,6359,5937,5938,5951,5952,5976,5977,5903,5900,5901,5939,5948,5955,6708,6709,6710,6701,6694,6352] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [149,151,1189,1190,395,1203,1204,1205,1211,1213,1054,1071,1330,1341,1212,1086,135,140] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [542,7087,7485,7486,7487,492,7132,7133,7134,7135,7136,493,7131,7503,7100,7102,7085,7481] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [35,298,624,36,15,598,622,83,84,279,34,60,59,37,641,642,643] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [367,368,370,3388,3389,3391,366,590,3425,3427,324,602,322,321,376] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [6667,6674,6675,6676,6661,6638,6673,6640,6331,6329,6333,6683,6281,6685,6490,6491,6489] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [4514,4534,4544,4546,4537,4545,3460,3425,3426,3427,3428,3429,3430,4520,4521,3462,593,594,599,600,603,604,3396] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
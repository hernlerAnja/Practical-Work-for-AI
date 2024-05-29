
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
        
        load "data/2IW6.pdb", protein
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
 
        load "data/2IW6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3389,540,3348,3379,3380,3381,3382,537,4988,2947,2948,4473,4474,4624,4974,3357,4460,4463,4433,4434,4435,4436,4987,4989,3314,3316,3345,3346,3349,3350,551,4455,3318,545,4962,4963,4971,4972,2938,4966,5066,4660] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [4697,5076,4540,4532,4533,5082,5072,5073,5074,5075,5516,4693,4578,4579,4680,4524,4525,5517,4521,4530,4526,4527,5099,5094,5096,5102,5118,5133,5078,5077,5488,5495,5126,5130,5588,5589,5590,5593,5594,5596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [7819,7820,2,4,7821,7822,533,1,7792,7757,7758,7759,7786,7787,7789,23,7791,5011,515,7388,7823,7389,7793,7798,40,41,42,516,518,610,7796,31,30,507,192,7379,228,509,4993,5007,506,4996,4998] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [663,674,675,677,265,108,147,98,101,662,89,92,145,146,93,621,622,263,618,620,485,619,617,1060,248,640,1061,646,381,484,1039,1132,1133,1137,1032,1044,1140,109,110] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [7945,7975,7977,8092,8091,8071,8762,8764,8750,5673,5668,7946,5666,8064,8039,7257,7240,7254,7551,5682,5683,5703,5705,7909,7910,7911,7249,5639,5643,5652,5653,7913,7917,7918,7256,7255] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [459,1118,1119,1077,1102,2323,2322,492,491,630,627,7023,7042,7043,1074,1089,1090,460,457,470,863,648,650,635,7018,7021,7025] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [2162,2163,1208,1214,1220,1199,1219,1194,1440,1447,1439,1446,2370,1452,2417,2389,2391,2392,2371,2367,2368,2378,2172,1211] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [5675,6832,5650,5902,5895,5896,6628,5676,6812,6819,6821,5662,5664,5667,5670,6831,6833,6830,6662,5651] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2808,4321,4323,4309,3536,3620,3625,3650,3651,3630,3534,3623,3597,4335,1227,2799,1226,1210,2805,2809,2801,3469,3470,3504,3505] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [3757,3760,3754,2898,3796,3797,3774,3818,3462,3695,3694,3697,3744,3745,2528,2529,2519,2836,2863,2864,2867,3445,2870,3456,3705,3698,3450] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [6136,6364,6362,6134,6177,6144,6146,6373,6395,6111,6112] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [5086,5575,5104,5533,5530,5091,5548,2601,2583,2585,2580,2582,4915,5574,5558,6779] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [1850,1822,1806,1815,1820,1821,2171,2172,2157,1848,1401,1364,1414,1424,2164,2165,2163,1415] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [7304,7305,7308,7311,7886,7891,8237,7277,7896,7302,8146,8201,8259,8185,8186,8136,8140,6960,8215,6970,8238,8198,7903,7339] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1227,1229,2814,3110,1226,1187,1196,1197,1210,3109,1182,1183,1184,3477,3470,3472,3476,3504,1188,3505,2817,3478] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [6629,6271,6278,5871,5870,5857,6305,6262,6613,6620] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [370,1161,1254,1258,1259,341,3114,3123,368,1167,336,340,348,1155,1157] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [274,576,59,60,11,12,594,595] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [5051,5031,5032,4443,4444,4492,4706] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        
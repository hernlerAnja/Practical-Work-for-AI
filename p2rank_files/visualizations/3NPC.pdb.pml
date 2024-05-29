
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
        
        load "data/3NPC.pdb", protein
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
 
        load "data/3NPC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4171,3691,3692,4169,4172,4188,4189,4190,4191,3096,3696,3710,3703,3708,4175,4176,4186,4187,3143,3232,3244,3509,3690,3522,3405,3436,3248,3246,3676,3674,3735,3738,4071,4095,4285,4286,3714,3712,3713,3721,3727,3728,3731,3760] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [814,813,1291,1293,1294,1312,1313,217,218,1297,1298,1304,1295,1308,1309,1310,1311,832,829,830,837,831,366,368,631,527,264,265,370,811,812,354,794,795,796,798,834,835,842,843,848,849,850,853,836,857,1217,1407,1408,882,1193] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [520,522,523,524,515,516,631,556,557,558,527,519,483,547,549,622,630,1282,1140,1095,1127,1132,1288,1298,1289,1295,1299,1300,1302,1146,1138,1142,1144] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4180,4167,4173,4176,4177,4178,3972,3973,4005,4010,4018,4166,3508,4160,3500,3425,3393,3394,3427,3398,3401,3402,3403,3405,3434,3435,3436,3509,4020,4022,4024,4016] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1301,1305,1307,1314,1315,1300,1302,1308,1310,1306,1338,1140,1326,1193,1181,1182,1194,1195,1202,1203,1422,1424,1164,1446,1447,1163,1165,1492] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4180,4179,4183,4184,4192,4193,4185,3123,4204,4081,4043,4059,4060,4073,4080,4325,4301,4303,4304] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [870,898,1673,872,907,1434,1714,1413,1419,873,874,1432] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4807,4817,890,916,4808,889,933,966,967,1253,1254,1229,1238,1249,1250,1225,1223] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4066,4312,3748,4591,3776,3785,4551,3750,4581,3751,3752,4291,4297,4310] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4427,4791,4813,4786,5267,4389,5274,5273,5266,5280,5281,5282,4432] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3882,3845,4131,4132,3810,3846,3847,3768,3794,4101,4103,4107,4128,4114,4116] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4460,4461,4455,5321,4459,5317,5324,5330,3978,3980,4454,4450,4449,3976,3977,5312,5315,4462] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [966,954,955,962,993,2549,2548,2550,2541,956,996,2591,994,1244,995,2592] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2439,2443,2452,1102,2445,1576,1577,1581,1572,2434,2437,1584] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1193,1181,1194,1195,1202,1412,1422,1424,1308,1310,1306,1307] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
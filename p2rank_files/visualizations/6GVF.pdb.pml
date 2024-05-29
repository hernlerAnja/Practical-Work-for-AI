
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
        
        load "data/6GVF.pdb", protein
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
 
        load "data/6GVF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4361,4362,4364,4365,4366,5808,5127,5108,5118,5119,5120,4360,4363,4329,4330,4328,523,522,5606,5602,5634,4048,4045,4046,1325,4044,4081,4083,5577,5605,4411,4412,4050,5796,5793,5597,5573,5799] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5260,5261,5292,6375,6376,5914,5957,5249,5313,5314,6466,6458,5933,5788,5790,6455,6457,5891,5872,5885,5883,5916,5888,5505,5541,5866,5867,5868,5484,5485,5503,5566,5567,5569,6459,6460,6464,6465,5599] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4135,4516,4513,4156,4190,4517,2738,2742,4508,2730,2735,233,218,216,217,4165,4183,4188,2504,2506,2494,2498,4474,2741,4483,2726,2456,2470,4179,2466,2467,2491,2585,2461,2546,4509,4504] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [500,1195,1523,1524,1526,499,1521,1533,1528,1532,1192,4322,498,486,488,489,5125,5091,5124,4662,4663,4664,1541,4622,5090,4632,4634,4321,4626] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5819,5825,5828,5848,4763,5823,4726,4737,4738,4704,4736,4457,4460,4762,4424,4401,4428,122,4429,128,130,4706,4453] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4055,5606,5632,5633,5602,5634,4051,4052,4047,4048,4045,4019,1324,1325,4022,4044,5605,4050,4366,1323,5799,5796,5793] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2719,2720,2721,2711,2714,2716,2717,2699,2700,2440,2607,2724,4486,2725,4485,2613,4135,7028,7030,4149,4136,4138,2635,2636,7081,2620,2622,2658,7076] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [1206,5142,1212,1187,5423,5424,523,1361,1326,1327,1330,1332,1334,1336,1362,1368,1430,1411,5120,5132,5432,5434,5420,5422,1401,1402,1403,5412,5141] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [5631,5697,1384,1383,539,1324,538,1381,5629,5663,5666,5667,5696,5662,5668,1320,1358,1361,1362,1323,5658,5659,5660,5661,5751,5760,5779,1390,1391,1392] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4461,4462,5834,7038,5549,5550,5827,5532,5836,7037,5841,4470,4443,7030] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6655,6733,6628,7350,7383,7351,6656,6775,6777,7370] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4116,4444,4435,4082,4409,7018,5543,5546,5547,5548,5576,5545] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [217,2494,2497,2738,2742,2743,2735,2577,2585,2461,2545,2546,2572,2571,2573,2574] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1162,1163,1446,5385,1460,1462,1491,1525] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [7097,7092,7093,7094,7095,3848,3849,3850,3562,7096,7098,3296,3301,3302,3311,3303,3307] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
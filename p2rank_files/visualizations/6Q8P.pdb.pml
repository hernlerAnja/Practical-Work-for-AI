
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
        
        load "data/6Q8P.pdb", protein
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
 
        load "data/6Q8P.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5712,6712,5625,6696,6698,6699,5623,5480,5481,5483,5485,5687,5720,5639,5640,5681,5715,6716,6719,6720,5692,5690,5476,5624,6035,6692,5894,6030,6031,6032,6033,6040,6467,6689,6691,6690,6427,6444,6812,6816,6806,5482,5484,5486,5455,5461,6443,6455,6456,6078,6054,6057,5450,5452,5454,5504,5505,5506,5609,6058,6059,6060,6065,6482,6483,6484,6106,5448,5449,6074,6067,6717,5733,6714,4815,4831,6795,4809,4813,4817,6718] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [1159,1411,1412,1413,1416,1417,1418,1419,437,1409,775,802,1147,1148,774,1175,770,589,1410,727,728,730,756,1176,750,761,763,753,736,1538,1117,1118,1119,1135,1136,1543,1432,1440,192,194,195,197,214,328,329,729,731,166,167,161,163,212,213,159,160,164,313,748,191,193,172,413,389,414,415,418,382,383,392,394,344] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3284,3869,4069,4070,4071,3870,3430,3841,3842,4079,4076,3829,3830,3853,4072,4073,3283,3422,2872,3009,3010,3011,3423,3425,3426,2843,2890,2891,2892,2995,3420,3421,3424,2870,2842,2846,2847,3457,3464,2835,3455,3444,3446,3447,3495,3496,2841,2836,2838,2839] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3810,4100,4093,3099,3101,4092,4094,3066,3067,3073,3062,3064,3076,3078,3102,3103,3106,3811,3812,3813,4079,4078,3829,3830,3853,2857,2861,2866,2868,2870,3011,3131,3025] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [3554,7343,7351,7369,7370,3551,3552,3553,3483,3485,3487,6894,7348,7349,7350,7161,7381,4451,4453,4456,4463,3550,4410,3514,3515,7340,3845,3846,4207,7341,7339,7342,4209,4208,4467,4468,4220,4414,3835,3836,4490,4491,4492,4218] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1810,1819,859,1806,1807,1808,1809,1812,820,821,1568,1570,1767,1770,1824,1142,793,1152,791,789,1151,861,862,1558,1557,1559] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3802,4254,4294,4296,3803,3805,4329,4293,4295,4297,4299,4223,4253,4327,4193,4175,4194,3804,4098,4111,4213,4364] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3484,3486,3493,3494,3495,3496,3522,3533,3524,7439,2835,7355,7353,7354,2841,7386,7400,7402,2844,2847,3841,3842,3843] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [6958,6959,6946,6953,6948,6949,6950,6951,6952,6361,6358,6334,6359,7838,7839,7840,7797,6947,6954,6980,7829,7835,7841,7849,7818] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1849,1850,1921,1822,1829,2253,2257,2310,2250,2251,1816,2308,2220] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [6093,6095,6097,7104,6849,6450,6451,6459,6850,7050,6460,6837,6838,6839] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [847,811,1327,1341,884,886,874,889,923,894,895,1323] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
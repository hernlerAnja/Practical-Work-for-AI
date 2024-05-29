
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
        
        load "data/4MQ1.pdb", protein
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
 
        load "data/4MQ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3405,4261,4263,3282,3713,3714,3280,3709,3711,3121,3122,3123,3117,3113,3114,3115,3134,3135,3136,3137,3138,3101,3151,3152,3153,3265,8628,8630,3107,3106,8629,3095,3730,3097,3098,3099,4284,3130,3132,4399,4110,4126,4127,4142,4138,4150,3439,4260,3566,4256,4253,4254,4255,3567,3710,3747,3758,3765,3793,4166,4165,3738,3732,3734,3735,3737,3742,3743,4167,3718] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [5138,5139,5399,5367,5140,5144,5366,2630,2631,2632,5398,5396,5395,2781,2757,2758,2759,5112,5136,2753,2754,2755,2756,2727,2728,2564,2596,2598,2599,2790,2791,2792,2798,2558,2629,2752,2776,2778,2783,2784,2777,2793,2794,2720,2718,5148,5152,5155,2797,5157,5154,5338,5334,4821,4808,4819,4813,4814,4815,5110,5105] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [738,879,880,1428,1429,1430,1431,1309,1321,1310,907,1338,929,1336,936,446,447,448,449,1435,1436,1438,1298,281,882,884,885,294,284,266,319,265,262,903,901,914,906,432,320,318,267,268,269,270,280,273,274,303,304] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [8502,8503,8555,8556,8557,8665,9148,9561,9135,9136,9144,9560,9562,9133,9119,9131,9166,9159,8505,8506,8507,8510,8511,8517,8551,9533,9545,9654,9659,9662,9652,9653,9655,8680,8682,8959,9109,9110,9112,9113,9114,9115,8518,8527,8538,8525,8531,9139,8960] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [5474,5375,5566,5568,5406,5407,5408,5496,5560,5563,5528,5490,5493,5494,5529,5530,5531,5557,5552,5555,2590,2591,2378,5574,2622,2364,5553,2376,2377,2379,5569,2360,2361,2362,2363,2620,1999,2334,2005,2006,2010,2623,2004] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [6484,6895,6499,6503,6506,5915,5917,6866,5862,6534,6867,6459,6471,6029,6449,6450,5863,6476,5916,5859,5865,6308,6478,6479,6894,6981,6982,6983,6451,6452,6453,6454,6455,6984,6045,6046,6991,6878,6855,5871,5878,5881,5901,6043,6044,6483,6488] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4416,4417,4418,4420,4679,4411,4431,4432,4398,4134,4125,4127,4142,4143,4419,4421,3849,3850,3852,3853,3854,8648,8649,8651,3780,3782,3783,3784,3851,8479,8480,8481,8573,4670,4680,4664,4634,4133,3848,4404,4400,8646,8632,8635,8640,8625] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5432,5434,5474,5475,5476,5394,5395,5406,5407,5408,2630,2631,2632,2658,2699,2656,2655,2619,2646,2652,2006,2625,2675,2678,2700,2657,5477,2034,2035,2036,2701,2659,2663,2666,5439,5447,5433,4859,5451,5454,4843,4844,5428,5431,5442,5435] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [4295,4296,4322,4330,4325,4383,4102,4282,4281,4288,3374,3373,4347,4349,4345,4280] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [8772,8773,8774,8796,9782,9720,9745,9747,9749,9783,9918,9681,9687,9694,9695,9721,9724,9682] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6521,6523,6525,6870,6871,7144,7358,7403,7142,7155,7156,6861,6862] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1471,1457,1458,1522,1524,1574,1470,541,1463,1273,1505,1710] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1312,1313,1314,1609,1611,1622,1612,1305,1825,951,953,1870,1623,1589] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
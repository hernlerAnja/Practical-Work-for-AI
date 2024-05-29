
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
        
        load "data/4EZJ.pdb", protein
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
 
        load "data/4EZJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5033,5043,4874,5027,4406,4870,4871,4872,4873,1112,1113,1114,1116,1117,4420,4421,4422,3355,3634,3635,3328,3352,3354,3365,469,472,473,976,1077,1086,1088,3666,3668,3670,957,3714,4814,4848,4869,3350,3351,3363,4849,4897,1138,4895,4902,4896,4936,4937,4938,1099,1100,1109,543,545,553,4934,1074,3364,1075,3331,1070,1101,1103,5010,4900,5011,5012,5026,5030,4899,4901,1139,4975] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4529,4531,4541,4563,4528,4537,4564,4585,5783,5770,4747,5768,5769,5771,4540,4746,5760,5762,5165,5655,5682,5683,5763,5150,5764,5765,5105,5109,4726,4727,5103,5104,5121,4806,4808,4779,4807,5784,4745,5020,5022,5123,5126] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3624,3626,964,965,967,4385,4386,434,449,452,985,1237,966,987,3620,3621,3627,3956,3622,1275,435,4425,4426,4384,4427,3656,3948,1266,3981,3982,4449] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [3156,3159,3172,6185,6210,6242,3170,3171,3182,3184,3173,3169,1603,6207,6211,6212,6216,6209,2580,2823,2595,2612,2613,6176,2581,3134,2815,2850,2851,2847,3131,6294,2591,6326,6296,6295,6297,2585] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [2026,2285,2286,2287,2030,2032,2288,2289,2290,2293,3495,3496,233,240,188,194,198,216,241,200,2294,3826,208,206,209] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3339,3340,3375,3376,3099,3084,502,3080,3086,3090,3091,3093,3097,6137,4944,6135,4943,4945,4883,4907,4913,6158,6159,6160,4906,4905,4938] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [4440,4420,4421,4422,4439,4705,4706,957,5114,5111,5113,4691,5010,5118,4701,4708,4711,4696,4692] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [3776,3777,2256,2257,2258,3794,3796,3784,4789,3765,3772,3775,6244,6245,6246,3447,6253,6256,6257,6262] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5775,5602,5609,5594,6226,6202,6234,6261,6204,6259,6260,6285,4830,5776,4832,6258,4796] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [471,473,973,976,1076,1077,1086,1088,3635,957,4430,4431,4421,974,465] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [5657,5175,5177,5178,5205,5212,5659,5642,5643,6694,5200,5270,6662,5249,5237,6660,5245] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [406,408,409,410,418,443,1003,881,888,898,1004,1005,814,1231,788,792,1006,1016] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4041,4344,4040,4376,4613,4348,4459,4074,4471] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [581,634,1131,588,1156,1125,620,627,616,592,625,624,1176,1178,630] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3835,2281,2288,2289,2293,3791,3495,3496,2283,2287,3828,3823,3462,3836,3471] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [4653,4646,4651,4652,685,670,668,665,666,4668,1202,682] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3169,1576,2880,2882,1582,2883,2885,3191,3195,1602,1603,1604,3175,3181,3185,2838,2847] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
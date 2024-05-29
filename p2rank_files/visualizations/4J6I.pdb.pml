
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
        
        load "data/4J6I.pdb", protein
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
 
        load "data/4J6I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4962,4963,1068,4912,4933,4934,4935,4936,3383,3385,4960,4965,4969,3384,4958,1080,1082,1093,1103,1106,1107,1095,1094,1111,1132,1108,1110,1130,472,473,1067,1069,1071,3371,3372,3348,3351,3352,3359,4968,4997,4998,4999,5000,5001,4959,5027,543,545,553,501,1097,5008,5090,5093,5096,5106,4937,5073,4451,4448,4450,4463,4464,4466,4875,4877,4911,970,3655,4465,4474,951,3732,3733,3734,3405,3684,3685,3686,3688,3689,3690,3687,3375,3402,5076,4964,1134,5057,5037,5038,5039] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4785,4575,4576,4643,5833,5859,4606,4803,4804,4805,4588,4603,4621,4574,5168,4784,5834,5823,5825,5826,5827,5828,5831,5832,5745,5189,5213,5746,5082,5167,5172,5186,5184,4871,5083,5085,5722,5729,5227,5249,5250,4587] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [452,453,4430,958,959,960,4428,4000,4002,4429,979,3674,3976,3642,3974,961,981,1231,1258,1260,3644,3646,3968,3969,434,435,1232,3676,4470,4471,4492,4001,3966,3967,3991,3965,4494] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6290,6291,6266,3179,3192,3193,3190,3191,1608,2615,2621,2627,2631,2632,2633,2671,2672,2601,2611,3151,3154,2600,2835,3189,3202,3204,1611,2870,2871,6289,3185,6321,6322,6323,1593,6377,6412,6413,6375,6379] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [6404,5838,5862,5863,6339,6366,6315,4895,6341,5657,5665,5672,6283,6307,6285,6402,6399] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4972,4976,5008,6219,501,502,503,4968,3100,6217,3327,3358,3360,3394,3119,3359,3113,3117,3396,6241,4970,4969,3381,3382] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2295,2297,208,2033,2293,2294,206,209,216,233,217,240,3516,241,188,2306,198,194,197,2301,2038,2037] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [451,969,452,453,4430,4428,4429,3640,3647,3648,3651,3641,3674,3976,3642,3644,3652,3676,970,3653,4470,4471,4474] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3467,3789,4852,3785,2251,2264,2263,2265,3814,6326,6327,6319,4835,6333,6337,6338,6334] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6741,6742,5310,5274,5275,5312,5317,5334,5335,5311,5316,5273,6709,6728,5241,5704,5705,5706,5719,5720,5721,5722,5276] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6344,6350,2229,6337,6338,2250,2251,2252,2265,3814,3816,3785,3792,3797] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4455,5177,5175,4464,4466,4484,4764,4759,951,5181,4754,5174,5176,4766,4769] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1879,1882,1885,1889,2453,2455,2454,2928,1856,1873,3224,3218,2953,2951,2952,2981,2983,2985,2922,2925,2926,3235] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1611,2902,2903,2867,2858,1609,2905,3215,3189,3195,3201,1583,1593,3205,3211] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4710,4711,4726,688,938,694,4709,4712,1196,685,687,4714,669,668,671] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
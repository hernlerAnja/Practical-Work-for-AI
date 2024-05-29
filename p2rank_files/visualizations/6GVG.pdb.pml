
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
        
        load "data/6GVG.pdb", protein
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
 
        load "data/6GVG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5593,5623,5624,5625,4036,4037,522,1316,4321,4043,4046,4039,4042,4038,5110,5109,5111,4319,4320,5588,5784,5867,5790,4353,4355,4357,5099,5100,4351,4352,4354,4356,4403,4317,4402,5799,4072,4074,5566,4041,5596,5597,5564,4035,5787] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5240,5475,5476,5252,5494,5283,5251,5222,6455,6456,6457,5495,5858,5859,5905,5907,6367,5948,5305,5924,6341,6449,6366,5947,5949,5779,5781,6446,6448,5882,5880,5863,5876,5874,5879] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [4170,233,2489,2485,4156,2732,2726,2729,2733,2568,2721,2457,2482,2452,2536,2564,2562,2458,2461,2576,218,215,216,217,234,4180,232,4179,4181,4499] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [5654,5657,5658,5659,5687,1374,1375,5688,5649,5651,5690,538,539,1311,1348,1349,1352,1353,5622,5623,5620,4044,4046,4022,4045,4013,4014,1314,1315,1316,5650,5652,5751,5742,1383,5769,5660,5653,4023] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [5081,5115,4313,4625,4654,4655,4312,488,1512,1532,489,4623,4653,4613,5082,1195,1517,1514,1515,1192,498,500,499] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [122,4440,4444,5810,5816,4415,4419,4392,4695,4717,4420,128,4728,5839,5814,5838,4754,4753,4729,5819,5822] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [2711,2691,2701,2702,2707,2708,2709,2431,2598,2716,4475,4476,4477,7021,2604,2626,2627,2611,2614,2613,2690,2703,2705,4461] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1187,5111,5132,5133,5415,1204,523,1202,1203,1317,1318,1321,1323,1325,1170,5414,1352,1353,5423,5425] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5865,5866,5868,5423,5425,5426,5450,5421,5867,5455,5872,5889,5108,5111,5130,5132,5133,5414,5102,5088,5100] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4153,4194,4162,4169,2240,3873,4157,4158,4171,3874,4160,2239,2514,4203,4204,4205,3872,4198,3870,3882,3883,3897,4151,4191,4185] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2702,4138,2710,2723,4135,4154,4158,4126,4136,3829,3832,1953,1955,2261,3858,1952,2259,2260,2700,2704,1956,2695,3840,3831,3833] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4107,4435,5537,5539,5538,4073,5568,5536,4398,4399,4400,4397,4426,5534,7009] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [5557,5558,5560,5858,5859,5532,6456,5496,5494,5779,5781,6446,6448] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4483,4474,4479,4507,4500,4504,4508,4495,4499,4181,4174,2717,2721,4156,4164] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3777,3778,3781,3493,3494,6930,6933,3802,6968,3520,3255,3774,3776] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [6647,6646,6768,6600,7345,7361,7374,6724,7341,7342] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [900,1146,1465,1466,1467,1231,435,436,438,440,1500,1501] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
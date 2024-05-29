
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
        
        load "data/4EZK.pdb", protein
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
 
        load "data/4EZK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4947,4948,4969,4970,4971,4972,4973,4999,4502,1128,1129,1130,1132,3410,3422,3423,472,3413,3692,3693,4503,473,3728,1086,3408,3409,3414,3415,3419,3421,5111,4998,5109,5132,5126,4488,4489,4498,5140,4501,3723,3724,3726,3772,3770,5129,5036,1089,1090,1091,553,1117,1119,1115,1116,1124,1125,524,5005,5034,5035,5037,3389,487,501,502,3397,499,5000,1154,545,1153,1152,5001,5002,4994,4996,4995,5063,5033,5073,5074] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5863,5765,5867,5870,5862,5263,5285,5286,4679,5284,5868,5869,5859,5861,5754,5781,5782,5249,4611,4612,4623,4657,4624,4641,4841,5134,4878,5120,5122,5203,4820,5204,5208,4821,5215,5219,5222,5220,4905,4863,4907,4839,5118,5123,5843,5228,5225] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [3682,982,983,1003,4039,4040,4468,434,3684,435,1253,4003,4006,1290,1282,3678,3679,3680,4013,4014,4012,4466,4467,4508,4512,4513,4531,4532,3714,4509,4510,4030,451,453,452,3686,3689,992,3690,3691] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2310,3849,2317,3553,3554,3893,3894,2316,233,3520,2055,2059,2061,3857,2322,2318,2319,3885,240,198,235,230,209,2315,207,208,216,217,188,3886] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3230,3231,1615,3228,3229,1633,6326,6327,6358,6359,6302,3217,3241,3227,3242,6413,2649,6415,2637,2643,2638,2644,2645,2653,2639,2671,2872,2905,2908,2909,2709,2873,3192] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [3505,6362,6363,3805,3833,3834,2286,2274,2287,4887,4888,3823,3852,3854,6368,6369,6370,6371,6374,6373,6379,6380,6383,4884,4871] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [5005,5006,5004,5044,5037,3434,6253,6255,6276,6277,3155,502,503,3396,3397,3398,501,3151,3157,500,5012,5003,5007,5008,3433] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5000,1154,545,1153,1152,1163,4993,5001,5002,5019,4994,4996,4997,4995,5063,5033,5025,5076,1156,5073,5074,1091,1116,1125,5034,5037,4969,4970,4999,1130,3423,5111,5112,4998,5093] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [6351,6399,6440,6319,6321,6437,4931,6343,6378,5899,5693,6376,6375,5708,5900,5701] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5277,5758,5309,5310,5311,5312,5742,6780,6781,6783,6785,5741,5747,5750,5276,6784,5345,5346,5369,5371,5348] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [4504,4502,973,972,5212,5213,4785,4501,4522,4800,4802,5217,5235,5236,4784,4786,4805,5210] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [3693,4503,473,973,992,1102,451,4512,4513] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [408,897,418,443,1018,1020,1021,928,817,914,791,1023,1032,794,795] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4768,1173,1181,1201,4756,4758,4760,4764,1174,1133,1176,970,972,958,953,962,1103,1104,1100,1198,1199] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [3784,3819,5157,5160,4141,4116,4140,4107,4113,121,127,129,3789] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [6502,6605,6494,6497,6498,5932,5680,6641,6467,6468,6469,6466,5934,5927,6462,5917,5918] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [4768,4756,4764,970,958,962,4523,4723,4755,4767,4781,4784,4786] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        

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
        
        load "data/1IIL.pdb", protein
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
 
        load "data/1IIL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2204,3055,2205,7365,7364,7367,7503,7504,7424,7426,7481,7366,7436,7463,7437,7467,7478,7482,7397,2214,2215,7393,7395,7389,7361,2213,2947] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [3246,3247,4093,9063,9065,9092,9104,9105,9128,9131,9029,9032,9033,9034,9035,9094,9057,9061,9149,9172,9146,9150,9171,9135,3255,3256,3257,3985] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [115,117,118,972,4284,4286,4356,4367,4371,4313,4326,4314,4315,4370,4361,4264,4282,4263,4391,4392,4387,714,4352,4349,4325,4393] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [1170,1171,2023,1168,5838,2024,2025,5836,1179,5815,5810,5813,5816,1917,1767,1180,5834,1181,5919,5865,5866,5867,5922,5939,5901,5904,5908,5913,5877,5878,5923,5943,5944,5945] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [4359,4716,4717,4373,4375,4634,4357,4358,10512,4734,10530,10426,10533,10534,10535,10515,10517,10086,10425,10551,10552,10553,4679,4681,10142] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3899,6177,6178,3903,3911,3913,6016,6118,6121,6214,6192,6193,6194,6195,6213,6189,6096,6035,6089,6025,6026,6028,6090,6092,6032,6022,6038] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [7193,7196,7106,7211,7214,7215,7216,7107,7759,7232,7760,7790,7792,7218,7219,7222,7484,7485,7486,7198,7825,7826,7827,7828,7470,7845,7743,7745] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [5911,6268,8853,6231,5925,5927,6269,8848,6186,6286,8760,8762,8887,6233,8761,8889,8870,8871,8423,8866,8869] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [5553,5662,5663,5664,5555,5666,5667,5670,5094,9409,9407,9454,9423,9424,5674,9405,9412,9414,9419,9152,9153,9154,9138,9489,9490,9491,9492,5641,5644,5646,5659,9509,5554] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [802,936,950,804,813,816,921,803,8696,8674,8671,8672,8666,8569,8570,8630,8631,8632,8676,8566,8557,8567,8568,8606,8605] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [8401,8422,8779,8780,8781,8403,8423,8536,8537,8516,8794,8795,8404,8851,8853,8855,8850,8852,8854] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [10180,10200,10201,10514,10515,10516,10517,10086,10087,10443,10445,10444,10458,10459,10068,10067,10065,10518,10519] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2103,2158,2159,3104,3105,3111,3112,2105,2104,2106,2102,3115,8324,8328,8330,3100,3101,8332,8334,8333,8078,3098,3099,8083,2142,2157] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [1063,1064,6536,6524,6774,6519,6520,1068,1069,1108,1070,1072,2081,2085,2086,2069,2070,2075,1124,1125,6765,6771,1074,1082,1083,2071,6537,6775,6773,6769] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4138,4139,4153,4136,4142,4143,4149,4150,4137,9994,3147,9996,9997,9998,3139,3140,3144,3145,3137,3141,3143,9747,9742,9743,3199,3200,3201] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [658,680,729,681,659,662,747,750,751,8695,8696,829,828,8252,947,948,638,8675] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [3899,3906,3903,3911,3913,3915,6016,3941,3643,3644,3904,6096,6089,6026,6090,6092] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [2243,3110,8064,2361,7415,7416,3107,3114,3132,7895,2167] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [5641,5023,5637,5636,5638,9132,5656,5658,9136,9137,9122,5024] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6576,6582,7188,7189,7208,7190,7193,7464,7454,7469,6594,7210] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [1024,80,156,1028,1031,1042,1050,1027,4954,4953,4938,4784,274,276,4305,4936] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
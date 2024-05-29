
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
        
        load "data/7QQL.pdb", protein
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
 
        load "data/7QQL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8480,8482,2154,8331,8446,2094,2121,2122,8296,2093,2082,2115,1761,1762,2080,2083,8506,8515,2152,2153,1786,1787,1790,1757,1758,1821,8503,8504,1810,1812,1789,1784,8513,8306,8514,8273,8274,8245,8471,8472,8473,2151,2144,2118,2113,1820] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4934,5637,5640,5284,5633,5609,5610,5612,5606,5615,4930,4935,4937,4927,7330,7056,7065,7363,7062,7333,7334,7332,7042,7040,7036,7045,5599,5266,5267,7050,4923,4942,4945,4938,4925,7352,5625] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [8331,8446,2094,8330,8359,2121,2122,2093,8327,8445,8423,8356,1944,1979,2163,1921,2128,1954,8364] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1659,1692,8213,8214,8229,8226,8508,8518,8195,8523,8538,8539,8542,8199,8238,8242,8245,8513,8514,8543,8544,8274,8506,8515,1755,1784,1812] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [7832,7835,7820,7829,7867,8187,8188,8871,8146,7840,7841,8203,8186,8530,7808,8150,8842,8528,8529,8863,8864,8898,8899,8862,7834] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3081,496,497,2964,2965,175,176,187,177,3134,3135,3110,3112,3082,174,3132,3133,3099] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [5752,5716,5717,5753,4674,5041,5042,5039,5040,5382,5384,5383,4696,4694,4695,5038,4662,5718,4683,4686,4688,4689,5725,5720] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [2156,2166,2190,1922,2191,2192,2161,2162,2163,2149,1843,1859,2170,2171,1874,8435,8436,1890,1893] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1230,1231,1270,1271,1272,1236,1241,1243,1244,1101,973,1232,1097,1081,1084,1085,1089,995,1005,1031,1087,1088,1086] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4574,4573,7624,7622,7623,7593,7596,7347,7449,7453,7583,7584] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4292,4294,4293,4307,4291,4295,4303,4237,677,680,4201,4179,4438,4436,4437] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [4551,4912,4535,4880,4881,4882,4550,4534,4564,4902,4911,4903,4904,7948,7949] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [5632,7351,4925,7353,7355,7352,4920,4945,4947,4586,4583,4584,4599,4602,4908,7357,4919] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
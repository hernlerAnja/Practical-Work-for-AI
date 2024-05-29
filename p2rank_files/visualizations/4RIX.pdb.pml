
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
        
        load "data/4RIX.pdb", protein
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
 
        load "data/4RIX.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5162,5163,5514,5155,5158,5543,5544,5617,4621,4803,5125,5127,4670,5134,5113,5131,5135,4623,4624,4625,4628,4629,4632,4633,4671,4669,4617,4619,4620,5528,5517,5518,5751,4636,5779,5781,5614,5618,5623,5624,5625,5108,5109,5091,4818,4820,4816,4999,5000,5001,4641,5492,5187] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [7880,7526,6901,6907,6904,6900,6902,6906,6951,6953,7102,7104,7105,7106,7241,6933,6952,7981,7984,7978,7980,7983,6930,6931,6932,6934,6935,7895,7272,7273,7975,7976,7977,7089,7448,7449,7501,7866,7896,7471,7494,7497,7470,7467] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2942,3367,3368,2966,2969,3338,3352,2939,2937,2424,2373,2374,2376,2379,2407,2405,2973,2561,2920,2921,2574,2404,2406,2425,2576,2577,2578,2402,2403,2560,2745,2903,2901,2902,2713,3450,3452,3447,3449,3454,3455,2744,3448,3446] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [141,143,193,683,1113,1114,326,678,341,339,661,662,147,148,180,194,192,571,679,697,695,701,704,705,728,725,1187,1193,1194,1195,1188,732,1084,1098,156,155,139,140,146] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5860,5893,5895,5913,5914,5915,5833,5834,5731,5704,5705,5706,5688,5689,5730,5673,5685,5680,5679,5684,5691,5694,5481,5482,5651,5793,4651,4653,5477,5732] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1087,1088,1098,152,156,159,164,166,151,155,1195,173,1062,343,170,180,194] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [6613,6318,6565,6625,6627,7256,6316,6614,6313,7255,7257,6343,6315,6529,6344,6527] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2085,2086,2202,2099,2191,2098,2097,2024,2025,1789,1790,3499,3501,2225,3510,3511,3498,2222,2729,1791] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [319,596,598,599,235,237,305,50,27,306] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [588,664,505,590,569,571,679,341,339,661,662,678,1189,1194,1188,1196,1217,1199] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [4197,3809,3775,4193,4195,4039,3916,3917,4050] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5028,5029,4782,4783,4796,4527,4712,4714] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [8329,8593,8471,8363,8747,8749,8750,8751] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [6391,6240,6202,6113,5975] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
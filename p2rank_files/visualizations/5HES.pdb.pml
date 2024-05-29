
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
        
        load "data/5HES.pdb", protein
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
 
        load "data/5HES.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [639,633,635,636,488,485,487,616,166,1158,1159,1164,1177,1179,1181,1182,499,500,417,1178,1180,172,168,169,170,4450,145,4449,143,637,4415,4416,164,167,314,189,305,310,599,600,602,300,302,303,301,617,416,505,190,316,318,603,386,140,144,127,130,209,210,4383,1088,642,643,1089,1060,1074,1157,1156,1176,1174,171,173,692,695,666,662,652,653,658,659,647,4414,4419] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2611,2614,2615,2602,2607,2939,2597,2599,2916,2921,2598,2463,2466,2465,2467,2488,2489,2442,2942,2933,2935,2937,2947,3455,3456,3388,2943,2789,3373,3461,3463,2966,2953,2958,2959,2960,2962,3387,3359,2469,2471,3457,2917,2713,2714,3473,3474,3475,2787,2799,2803,2785,2788,3479,3458,3476,3477,3478,2710,2731,2680,2899,2902,2805,2903,2685,2686,2444,2445,2995,2426,2429] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [685,686,1542,1543,4507,1289,1063,1064,1065,694,720,689,693,695,161,162,4478,4479,148,4446,4447,146,4449,1547,1563,1251,4505,4506,3804,3806,4503,3797,3799,4469,3800,3801,4445] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [810,811,813,814,812,846,849,806,809,835,1119,837,705,770,771,772,1111,1117,1118,703,1097,653,654,656,746] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3148,3395,3416,2956,3145,3418,3110,3112,3113,3003,3005,3071,3072] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4462,3952,4463,4440,4469,4470,3783,3784,4468,3772,3946,4497,3791] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1925,939,951,941,1382,1383,1923,1924,950,1940,1943] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
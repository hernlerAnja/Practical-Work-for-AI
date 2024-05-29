
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
        
        load "data/5W4W.pdb", protein
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
 
        load "data/5W4W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2503,2542,2649,3529,3532,2499,3404,3531,3434,3036,3435,3540,3533,3534,2650,2539,2540,2541,2633,2489,2491,3011,2487,2493,3016,3024,2994,2631,2632,2992,2975,2976,2646,2765,2978,2980,2648,2766,2799,2995] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4870,5819,5789,5820,5917,5918,5379,5403,5398,5401,5402,4864,4867,5409,5447,4911,4912,4913,5360,5361,5004,5377,5017,5019,5020,5021,4874,5925,5137,5919,5362,5363,5170,5365,5171,5380,4862] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [599,601,615,616,598,1150,1152,1154,271,1025,1153,1161,657,1056,267,269,270,163,124,120,1155,387,620,609,613,596,597,252,253,162,254,161,114,112,108,110,638,639,634,637,645,1055,632] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [7218,8115,7208,7254,7255,7256,7257,7363,7364,7204,7206,7716,7717,7742,8214,8084,8212,8220,7365,8114,7672,7674,7675,7698,7704,7697,7361,7693,7696,7348,8213,7480,7446,7660,7214,7211] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [6461,6489,6490,6499,6501,6096,6098,6102,6104,6103,6109,6113,6116,6117,6114,6530,6407,6415,6395] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2344,2362,1076,1061,2349,1100,1101,1102,651,652,1068,2347,691,717,2345] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3447,3455,3440,3070,3031,3030,4741,4726,4728,3479,3481] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [7064,5415,5416,5455,5840,5832,7077,7062,7060,5825,5866] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [9421,7711,8135,9408,9406,8120,8161,8127,7750,7710,9404] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        

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
        
        load "data/8STG.pdb", protein
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
 
        load "data/8STG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4712,4724,4726,4723,4703,4722,4665,6962,4721,5850,5868,4718,4720,4765,4767,4766,5094,5095,5096,5066,5837,6989,5355,5356,6988,6990,6991,5422,5423,5368,5599,5836,5632,5802,5361,6981,6984,5359,5357,5360,4662,4678,4679,4685,4666,4663,6769,6961,6963,6800,5887,6799,6975,5937,5940,5927,5933,5886,6742] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2715,1183,422,424,1356,1357,1358,1359,425,1628,1645,447,460,471,525,420,421,437,438,2716,2747,2750,480,481,483,485,2706,2709,1693,1697,1698,1699,2558,2559,1686,1692,2528,2501,524,526,852,853,855,1120,1596,1595,825] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3550,3551,2965,2967,7616,7689,3627,3628,8129,3568,3569,3566,7781,7613,7688,8112,8091,8092,8125,8064,8077,8081,8061,8084,8065] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1773,1774,2634,2635,2637,2122,2125,2633,2667,1996,1997,2067,2068,2070,2066,2121,2076,2065,1792,2081] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [8496,8489,7421,7481,7422,8481,7425,8476,8479,7470,6558,6560,6561,6581,6620,6655] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2964,2966,3550,3551,2965,2967,7689,7686,3626,3627,3628,8129,2983,2984,2901,2902,3549,6111,8125] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [6015,6014,6818,6906,6907,6872,6874,6875,6876,6877,6367,6878,6308,6356,6238,6415] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2320,4139,3113,3127,4136,4138,3112,3176,2248,3179,3181,2207,4200] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4692,6743,6745,6746,6747,7037,6742,7092,6695,6769,6770,4712,4711] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
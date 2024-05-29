
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
        
        load "data/6YR9.pdb", protein
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
 
        load "data/6YR9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6399,7485,6445,6446,6447,6951,7385,6965,6565,6968,6963,6995,6998,7356,7386,6990,6387,6388,6389,6393,6390,6391,6987,7459,7460,7453,7456,7365,7366,7368,7367,6944,7481,7482,7483,7486,7370] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2221,2225,2227,2280,2832,3220,3219,2399,2799,2803,2802,2222,2224,2230,3294,3290,3317,3319,3320,3287,2778,2779,2660,2661,3190,2829,2830,2821,3199,3200,3201] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1116,1117,1118,727,730,119,719,722,700,1188,1102,1214,1215,1099,558,559,1185,131,125,297,120,123,122,1217,179,1218,177,178,677,557,676,683,697,1088,1097,1098] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4476,5371,4357,5396,4862,5370,5394,5296,5364,5367,5297,4302,4356,4297,4298,4299,4300,4304,4301,4909,4855,4856,5276,5267,4879,4885,4898,4897,4876,4874] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1037,1409,1401,1403,1398,1404,1408,1946,7672,7676,7677,8214,7281,7283,7285,7256,7278,2504,2506,1402,1410,1414,2470,2471,2473,7666,7669,7670,7682,2468,7305,2469,2474,2475,2478,1383,2502,1015,1013,1014,1010,1011,1012] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [7712,7715,7550,7855,7856,8130,8132,8133,8134,7984,7945,7947] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [5453,5592,5825,5827,5735,5795,5430,5627,5874,5875] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
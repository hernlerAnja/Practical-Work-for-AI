
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
        
        load "data/3V6S.pdb", protein
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
 
        load "data/3V6S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3644,3668,3669,3632,1915,1916,1923,1924,1914,3643,3685,1952,1949,1476,1462,1469,1470,1465,1474,3721,3722,3720,1751,4002,4003,3982,3981,3988,3989,3992,4007,1729,3978,3598,3606,3597,1719,3991,4006,1714] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1306,432,439,440,442,443,445,465,467,433,434,468,469,2620,474,476,506,1328,1329,5171,5172,2623,5174,437,1364,5187,3710,1349,1353,1363,3712,3711,3713] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [4047,4043,4044,4046,3025,3115,3572,3567,3568,3319,2979,3584,3970,3611,3614,3589,2976,2977,2980,2974,2975,3003,3006,3002,2981,3026,3130,3289,3132,3586,3590] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [258,259,260,1274,1275,364,366,796,349,794,795,236,213,839,842,1174,1198,817,832,833,816,210,211,222,223,209,1271,617,1272] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1356,1359,1146,1428,1304,1183,1283,1163,1282,476,477,1297,1298,1299,1162,237,238,1371,1368,1353,1363,1369] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [5228,429,5208,5229,5178,3365,1368,1364,1365,1367,5187,5185,3747,3749,5176,455,444,445] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4175,4178,4187,4637,4427,4430,4636,4425,4426,4435,4464,4466,4440,4442,4665,4667,4465] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
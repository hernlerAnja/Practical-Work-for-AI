
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
        
        load "data/3PFV.pdb", protein
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
 
        load "data/3PFV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3927,3929,3931,3932,4113,3956,4280,4294,4291,4295,4296,4285,4306,4278,4101,4112,4506,4510,4577,4501,4301,3389,4309,4512,4304,3922,3923,3925,3926,1393] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1441,1445,1447,1474,1450,2032,1811,1817,1820,1821,2028,1806,2023,1832,1835,1826,1827,1828,1830,1831,1822,2027,2034,902,867,1804,2099,1619] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3284,2696,2697,3286,3248,3250,3287,3346,3291,4349,3245,3322,3290,3323,4319,4346,4337,4340,2695,2698,2701,2702,2753,2731,2736,2747,2742] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [799,800,754,756,757,758,759,835,829,804,232,188,191,174,221,237,859,243,187,186,181,1845,208,1863,1866,192,224,1846,1875,1872] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1288,1289,1291,1290,4875,1299,1378,1379,1383,1385,1407,1382,1368,1377,4379,1365,1321,1322,1323,1324,1325,1326,4262,4288,4289] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [657,3137,3138,631,656,600,3176,655,630,696,695,633,3116,3115,3082,3086,3087,3084] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3535,3534,4092,4546,4547,3568,4057,3540,4548,4063,4027,4029,3441] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3362,3968,3969,3967,3329,3116,3338,3340,3304,3096,3086,3087,3138] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2070,2066,1543,1545,1051,1052,922,944,950,951,954,1547,1610,2069,1575,1077,1056] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [470,471,473,474,6,13,17,378,447,443,1,3,11,521,523,465,530,469] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
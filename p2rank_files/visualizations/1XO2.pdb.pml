
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
        
        load "data/1XO2.pdb", protein
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
 
        load "data/1XO2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2028,2029,1982,1986,2130,1983,1984,3006,2566,2582,2586,2579,2585,2143,2985,2990,3077,3084,3007,3076,2978,2983,2610,2606,2145,2557,2558,2559,2560,2561,2414,3078] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2146,2001,2002,2004,2008,2009,2013,2017,2011,2012,2014,3083,3084,2948,2949,2950,2967,2147,2248,2165,2247,2254,2164,3107,3106,3097] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1417,1423,1425,1426,560,1475,1438,1449,1380,1381,1107,566,537,559,1119,1123,1453,1455,588,591,562,563] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1107,566,567,204,537,202,176,201,1453,1108,1455,174,1425,218,1475,1438,1449,588,591,586,587,592,628,209,214,216,563,565,597,599,205] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1359,502,508,451,454,455,448,527,528,421,447,450,426,427,1333,1338,1358,458,419,424,488,496,1337] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2226,2227,2176,2480,2481,2483,2485,2510,2511,2512,2475,2188,2193,969,970,2217,2470,2174,2181,2216,2218,1001,1003,966,977] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1078,1080,1081,1082,2314,600,598,203,2324,2325,2354,2323,196,1093,1100,2329,2331,202,165,192,193,194,198,199,204] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2858,2860,2383,2853,2856,2359,2360,2886,2851,2362,2364,135,161,2895,136] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2464,2479,2520,2521,2535,1913,1937,2156,2137,1935,1934] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2964,2965,2975,2627,2963,2973,2974,3263,3264,3465,3250,3521,3522,2654,3499,3498,3252,2652,2628] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
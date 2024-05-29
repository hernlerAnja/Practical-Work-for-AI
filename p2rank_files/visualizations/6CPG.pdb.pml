
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
        
        load "data/6CPG.pdb", protein
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
 
        load "data/6CPG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7260,5199,5200,7190,7263,6997,7049,6328,6329,6324,6330,5113,5110,5111,5114,5129,5127,7189,7015,5177,5201,7211,5433,6225,7210,7212,7208,5434,5435,7215,5943,6241,7048,6274,6277,6278,6318,6317,6261,6287,5402] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [9229,9230,9231,9233,9507,9510,9513,9228,9559,9855,9516,9573,9213,9810,9811,9207,9347,9245,9246,9252,9545,9827,9002,8952,9018,8902,8903,9825,9485,9489,8994,9349,9017,9019] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2085,2117,2118,2066,1407,227,2293,206,207,226,2244,2245,1027,1302,516,517,2286,2294,286,180,181,182,198,285,287,1355,1395,1354,484,1318,184,1351,1300] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [5742,2442,2513,7525,7526,2515,2516,1956,2487,2495,2496,6882,6883,2501,6892,6894,6890,7422,7424,7425,7524,7419,2438,6879,1973,1976,1978,811,1954,787,7421,7472,7470,7471] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [715,716,659,660,661,662,717,4706,4700,4701,4080,4084,592,593,594,1183,4077,4735,4736,4710,4733] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1264,553,2267,642,752,4759,1226,4758,751,824,641,699,696] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2266,2284,1264,553,2267,249,642,752,4758,751,824,641,745,698,697,699,748,696] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5631,5678,5681,5676,5691,5692,5763,5766,7202,7228,7229,7231,7241,7203,6934,6965,6966,7016,7296,6931,5632,7243] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [7344,7345,7002,7847,7848,7766,6421,7831,7839,6434,6437,6438,6357,6433,6360,6362,7270,7279,7285,7286,7330,7896,7898,7897] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [730,732,687,5164,5163,5632,7243,7244,7246,688,689,6966,7296,7236,7259,7241,7239] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [8010,8012,903,905,850,837,7462,8077,8078,7455,7458,7459,7460,7461,901,902,904,900] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [5578,5579,9122,9123,9128,9142,5573,5575,5576,5577,5649,2299,2297,2300,9697,5646,9668,9672,9662] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
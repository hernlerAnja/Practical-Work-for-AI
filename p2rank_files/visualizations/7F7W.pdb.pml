
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
        
        load "data/7F7W.pdb", protein
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
 
        load "data/7F7W.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2299,285,2300,262,700,702,381,382,259,260,263,2248,2923,2925,2926,310,2298,2906,305,309,701,1460,300,740,741,308,345,2685,2697,2703,2295,2296,1564,2354,1570,1575,1617,2321,2247,2320,2663,2664,2275,2276,1505,2353,1493,1508,1524,1495,3497,3498,2979,2980,2982,2984,2985,2986,2987] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [6710,6711,6712,5987,6707,5982,6766,5976,6687,6659,6660,6688,6732,6733,7075,7076,7085,7337,4734,4738,4739,5168,5169,4714,4729,4811,4688,4810,5128,5129,5130,4689,4692,4691,6765,5921,5905,5907,5920,5872,4774,7097,7118,7115,7108,7109,7395,7390,7391,7393,7396,7398,7397,7907,7908,7334,7336,7317,7416] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [2027,1150,1151,2024,2023,2025,2026,1174,2021,2022,2585,8575,2587,1978,2556,2412,2557,4297,4300,4299,1950,1951,2020,4373,4374,1970,1952,1954,1914,1915,1975,8500,8494,8498,8499,8526,8530,8531,8534,8576,8440,8229,8230,8233,8441,8442,2028,8225,2074,2076,4243,4317,4241,8444,8228,8245,2144,4246,4247,1173,2141,2142,2089,8391,8512,8509,8188,8189] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1023,1024,5,6,16,1329,1330,973,23,970,20,1299] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        
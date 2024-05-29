
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
        
        load "data/4RED.pdb", protein
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
 
        load "data/4RED.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5216,1154,5175,5176,5177,5178,5209,508,1123,1133,1167,1168,692,1120,545,546,673,5236,5238,675,5138,5140,1134,1135,1136,1137,1138,679,689,683,5128,5144,672,5129,5126,5139,680,233,227,230,234,910,509,2035,2033,5207,5217] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3137,4692,3138,3150,4693,4694,3783,2469,2485,3134,3135,2470,2471,3174,3175,2467,2481,3140,3301,3304,3749,3752,3797,3318,3764,3308,3766,3539,3762,3763,3765,3324,2551,2515,2546,2461,2525,2527,2526,2472,2582,2545] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2570,2572,2567,2568,2573,2540,2092,2121,2130,2126,2566,2582,2545,2438,2440,2464,2463,2429,2128,2430,2129,2132,2539,2541,2317,2318,2320,2321] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [731,733,1489,1269,1528,1529,1530,1523,1518,1514,1515,1517,1522,1266,729,730,1257,1258,761,763,765,770] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3847,3851,2741,3842,3846,3857,3863,2891,3839,2907,3841,2890,3019,2744,2755,2758,2760,3051,3840,3020,3018] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3890,3399,3359,3362,3364,3390,3910,3357,3358,3394,3395,3392,4148,3388,3389,4189,4162,4161,4163,4150] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [468,5026,491,492,488,489,5235,5264,5268,5280,5259,5225,5028] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [278,1211,1217,1234,115,119,129,131,1218,262,1212,421,1208,389,391,390] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2566,2581,2582,3118,2545,2570,2572,2438,2440,2464,2367,2369,2602,2614,2593,2598,3117,3116,3113] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [967,968,969,1058,1037,1036,1053,1056,1185,1175,1030,971,977] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2428,2175,2177,2144,2128,2132,2301,2141,2292] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
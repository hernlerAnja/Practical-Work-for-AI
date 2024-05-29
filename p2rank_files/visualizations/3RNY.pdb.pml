
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
        
        load "data/3RNY.pdb", protein
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
 
        load "data/3RNY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1134,1969,1970,1971,1373,1104,1105,1106,1114,1141,1132,1133,1158,1161,1163,1170,1127,1128,1645,1155,1156,1157,1159,1160,1398,1396,1590,1608,1395,1624,1625,1947,1949,1978,1966,1967,1968,710,711,712,714,720,728] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3165,3166,3167,3168,3190,3191,3192,3193,3195,3627,3637,3674,3619,3654,4011,4000,3999,2783,2784,2798,3204,2785,2786,3147,3148,3980,3982,4003,4001,4004,3407,3194,3197,3432,3434] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2027,2028,2029,2108,2035,2025,2449,2450,2831,2836,2827,2957,2852,2853,2955,2959,2309,2956,2963,2123,2965,2122,2426,2427] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [998,986,2276,2277,2285,2714,2278,1043,2283,2284,2293,1045,2680,2682,2683,2684,1014,973] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [640,3107,609,610,611,3105,3076,255,256,3048,3049,3060,262,263,254,3036,642] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [2420,2115,2113,2400,2401,2402,2403,2404,2405,2406,2354,2350,2352,2351,2353,2355,2334,2069,2099,2097,1999,1987,2061,2056,2057,2114,2060,2065,2066] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [764,755,780,888,897,128,129,130,887,891,895,287,889,383,364,381,382,781,286,360,51,47,48,49,50,126,359,114,376] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [2247,2258,3012,2751,1003,1005,1021,2747,234,236,3066,3068,679,675,225] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
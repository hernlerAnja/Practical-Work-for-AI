
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
        
        load "data/8H7F.pdb", protein
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
 
        load "data/8H7F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1089,160,161,162,163,164,165,166,131,133,134,157,689,692,664,699,135,136,155,679,159,187,304,308,186,1088,1181,296,639,644,661,514,1182,311,1176,1177,1179,1180,658,660,294,295,150,1073,1074,1038,723,1018,1163,1183] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3135,2704,2707,2708,2254,2409,2694,2699,2701,3107,2285,3136,2278,2280,2281,2282,2283,2284,2307,2308,3121,3229,2408,2682,2687,2417,2664,3210,3228,3223,3224,3226,2424,2421,2286,2257,2276,2256,2742,2766,2287,2731,2732,2735,2722,2255,2703] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4165,4167,2883,404,406,2876,2875,374,375,376,378,1268,3163,1267,3164,1190,1200,415,1028,1175,1184,1186,403,405,1201,1199,1204,4189,2907,1261,1263,2864,1218,407,373,412,402,371] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [396,602,604,605,4115,4140,561,586,359,369,4106,4141,358,4104,360,2576,2958,2960,2987,2984,2989,3020,2980,2981,2982,4079,2590,2574,2582,2583] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1551,1868,851,1869,1547,1583,1584,1587,1844,1831,1843,839,1581,841,843,840,877,819,821,822] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1292,2725,1295,2727,2728,2729,2856,2777,2847,2849,2773,2775,1286,2720,2722,2811,2770,2801,2808,2802,2805,1296,2848,2813,3172,3165,3157] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [393,394,421,422,425,449,4176,4175,447,551,563,564,5,397,420,4116,4140,561,4147] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2897,2899,2868,2886,2887,2888,2892,3624,3914,3915,4130,3594,3890,3626,3590,3630,3889,2866,2869,3627,2890] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1023,1035,1036,1038,1027,1028,1268,1267,1269,1289,1291,1323,1449,1450,1321,1332,1309] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3387,3684,3685,3546,3547,3549,3983,3984,3825] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1936,1938,1939,1642,1734,1506,1779] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
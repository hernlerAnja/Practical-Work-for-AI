
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
        
        load "data/6VN8.pdb", protein
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
 
        load "data/6VN8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2609,2611,2613,2620,2860,2616,2618,3908,3909,3898,3901,3906,2621,2802,2619,2862,3770,3886,3888,3870,2886,2889,3893,2590,2591,2597,2598,2601,2623,3744,3745,3746,3748,3752,3754,2785,2928,3728,3729,3731,3626,3588,3920,2784,3730,2636,3769,3578,3615,3616] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [1364,2575,1361,1373,1375,2546,2548,2549,1569,1381,1571,1593,1594,1596,1597,1360,1587,1588,1600,1370,1049,1050,1322,1595,1052,2216,2217,1526,2218,2219,2220,1522,1523,2793,2222,2224,2225,2794,2595,2594,2808,2811,2596,2600,2252,2256,2257,2260,2810,2241,2604,2280,2281,2807,1051,1025,1026,2262,1621,2571,2567,2553,2559,2562] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1282,1283,1284,1269,466,398,394,424,428,400,1308,427,1292,1442,156,154,1427,1424,1126,1290,1291,1460,1165,1150,1266,1267,1268,1153,1154,1155,1164,149,150,151,158,159,160,161,136,142,135,174,322,323,340,123,124,125,126,163,128,129] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [116,117,118,120,123,173,307,121,767,768,771,775,744,734,740,743,722,776,803,1150,1266,1268,174,1261,717,715,1161,1179,1180,1181,1159,1160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3642,3229,2769,2582,2583,3643,3230,3233,3237,3612,3265,3196,2578,2579,2585,2634,2635,2580,3730,3723,2636,3180,3184,3179,3728,3621,3626,3202,3205] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4285,4125,4644,4646,4492,4095,4647,4645,4643] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        
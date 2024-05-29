
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
        
        load "data/6VNC.pdb", protein
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
 
        load "data/6VNC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1322,1587,1593,1594,1595,1049,1050,1026,2280,2281,2257,2260,2807,2241,2252,1596,1588,1600,2217,1025,2269,1048,1621,2593,2594,2600,2808,2595,2596,1365,1361,2575,2224,2793,2794,2222,2223,2219,2572,2573,2549] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2585,2586,2590,2591,2597,2598,2587,2634,2636,2635,3616,2579,2618,2619,3729,3730,3731,3752,3754,3588,3753,2785,2784,2601,2616,2580,2582,2583,3237,3612,3264,3643,3231,3233,3642,3202,3205,3230,2769,3728,3722,3723,3035,3180,3184,3626] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1266,322,323,1267,1268,1269,172,173,174,718,160,163,126,129,135,136,161,128,158,139,145,117,118,120,121,123,124,307,1180,1261,1181,1150,1159,1164,743,744,722,768,769,771,775,803,155,153,1126,1290] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1370,1373,1569,1570,1571,1375,2222,2219,2214,1556,1361,1357,2596,2546,2548,2549,2553,2571,2572,1596,1588,1600,2217,2218,2220,1523,1522,1567,2201,1587,1593] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2616,3898,3899,3901,2854,2860,2856,3870,3884,3885,2886,2888,2617,2618,3746,3754,3904,2929,2896,2894,3769,3770,3578,2890,2891,2862,2852,3893] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1292,1425,1426,1427,399,155,153,394,397,1284,151,154,1308,1423,427,1434,386,424] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2187,2185,1822,2040,2041,1464,1470,1823,2035,1961,1993,2183,2186,2030,1633,1630,2184] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2319,2320,2321,3129,3127,2309,2318,2314,2317,2825,2344,2343] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4285,4645,4492,4643,3934,4284,4647,4503,4497,4092,4095] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
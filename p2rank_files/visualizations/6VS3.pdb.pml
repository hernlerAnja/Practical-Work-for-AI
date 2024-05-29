
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
        
        load "data/6VS3.pdb", protein
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
 
        load "data/6VS3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2596,2808,2811,2629,2567,2571,2574,2793,2224,2794,2216,2221,2222,2225,2214,2645,2546,2549,2594,2595,1364,1362,2218,2548,2559,1360,1361,1370,1373,1375,1555,1570,1571,1596,2219,2220,1597,1600,1587,1588,1523,1526,1322,1049,1050,1593,1594,1595,1072,1522,2251,2252,2256,2257,2260,2217,2241,2262,1025,1026,1051,1052,2807,2280,2281,2562,2553] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [116,117,122,123,124,125,126,129,1266,1267,1269,1282,1165,1290,1164,718,118,120,121,173,174,307,323,322,1261,1268,717,715,1126,1154,160,161,155,156,157,135,136,139,128,142,1292,146,743,767,768,1179,1180,1181,771,1160,736,722,740,734,1150,775,776,803] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3612,3642,3643,3626,3621,2585,3237,3230,3233,3265,2634,2636,2635,2769,2578,2579,2580,2582,2583,3728,3729,3730,3723,3180,2586,2588,2590,2597,2784,3229,3202,3205,3184] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2601,2615,2617,2618,2619,2620,2608,3905,3753,2784,2802,3754,3752,2590,2591,2597,2598,2623,3626,3615,3616,2636,2785,3729,3730,3731,3744,3588] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3754,3886,3889,3901,3770,3885,3769,2886,2889,3746,2851,3893,3898,2860,2862,2617,2618,2619,3748] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1783,1780,1784,1745,1739,1744,1760,1491,1791,1798,1698,791,1155,1492,1153,1797,1763,1724] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [424,427,155,157,1292,1308,1307,1427,1423,1425,1284,1286,1288] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2466,2448,2681,2477,2478,2479,2480,2481,2482,2463,2452,2457,2458,2446,2447,2678,2680,2750] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4285,4095,4492,4647,4643,4644,4645] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1823,2035,2183,2186,2185] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
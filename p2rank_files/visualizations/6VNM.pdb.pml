
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
        
        load "data/6VNM.pdb", protein
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
 
        load "data/6VNM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2594,2596,2595,1361,1362,1364,2571,2573,2574,2575,1360,2222,2548,2549,2567,2553,2562,1370,1570,1373,1375,1571,2218,2546,2224,2793,2794,2807,2808,2809,2810,2811,2645,2271,1588,1596,1597,1600,2217,2219,1587,2220,1522,1523,1593,1594,1595,1050,1048,1049,1051,2280,2281,2257,2260,2241,2262,2266,2269,1621,1025,1026] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2635,2582,2580,2769,3237,3612,3643,3641,3642,3202,3205,3184,3622,3179,3180,3723,3728,3731,3729,3623,2579,3229,3230,2578,2583,3233,2585,2634,2636,2785,2584] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1261,123,172,173,174,307,717,718,135,117,118,120,121,743,768,744,740,771,776,803,1181,1150,775,1180,722,1266,1267,1268,1260,1164] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [2586,2588,2590,2597,2598,2623,2585,2622,2636,2617,2784,2785,3754,3904,3920,3921,3922,2608,3905,2620,2621,3723,3728,3731,3626,3729,3730,3586,3587,3588,3612,3615,3616,3617] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2860,2887,2889,3885,3893,3898,3901,3889,2613,2614,2616,2615,2603,2604,2605,3906,2617,2618,2619,2928,3753,3746,3748,3904,3769,3770,3578,3870,2884,2885,2886,2890,2891,2861,2862] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3138,2318,2319,2826,2827,2290,2825,2869,2250,3139,2289,2291,2288,2253,2287,2798,3156,3133,3137,3136,3132] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1530,1534,1536,1540,1932,1418,1931,1909,1422,1562,1503,1467,1453,1452,1438] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2228,2230,2234,2237,2500,2224,2794,3156,2644,2659,2525,2526,3154,3155,2497] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [398,425,427,1284,155,153,400,1307,1308,1427] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3934,4092,4095,4643,4644,4645,4646,4647,4492,4125,4284,4285,4497] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2183,2185,1823,1822,1633,1497,1993,2030] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
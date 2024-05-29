
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
        
        load "data/7DU9.pdb", protein
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
 
        load "data/7DU9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1168,1194,1305,2545,1303,349,350,1204,1302,1301,452,1317,1321,449,1318,447,483,453,454,459,201,347,177,179,2533,2534,423,424,425,420,159,151,158,184,185,187,182,183,186,354,366,152,1193,1466,1326,1327,1467,1468,1469,3645,2544,2788,2789,2543,1487,1488] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2713,2714,3564,3567,3570,2544,2542,2786,2788,2789,2535,2537,2538,2546,3645,3647,3591,3592,3642,3433,1467,1468,1469,2816,2813,2846,3582,2811,2812,3583,3586,2730,2784,2547,177,179,2534,424,181,3459,169,2522,170,2523] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [199,201,348,141,145,200,709,1219,1220,1221,1297,713,143,144,334,727,734,725,731,1305,1304,1190,761,765,766,757,758,739,146,139,140] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2563,2565,2564,3486,3485,3073,2712,2711,2507,2508,3091,2698,2505,3098,3095,2713,2714,3569,3570,3562,3129,3455,3122,3125,3121,2510,2503,2504,2509] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2713,2714,3469,3564,3567,3569,3570,2786,3592,3433,2816,2813,2846,3582,2811,2812,3583,2818,2823,3586,2730,2547,2548,2550,2718,2565,169,3458,3459] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [415,441,3626,3631,1431,1343,1328,1471,1463,1469,1470,3646,1158,3644,3645,3629,1428,1430,1608,1453,1460,2780,1449,451] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3458,389,3460,392,379,380,385,3678,3145,3692,3693,3911,3146,3147,3956,3957,3950,3952,3955,3965] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2359,2361,2373,2379,2393,2857,2858,2356,2410,2391,2403,2351,2353,2354,2890] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [954,2267,984,2265,2266,2264,2001,2018,2000] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        

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
        
        load "data/1YRP.pdb", protein
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
 
        load "data/1YRP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1324,1333,1323,1132,1148,1172,1311,327,1305,1309,1310,806,1160,1161,1303,1189,4025,1325,1326,1327,1328,1331,479,478,480,4023,506,516,1304,1300,628,780,1149,2664,2675,2676,2677,187,4026,4027,173,177,4028,162,165,166,169,159,148,149,150,155,156,193,208,325,326,207,151,153,154,178,185,189,344,445,486,758,763,777,313,438,440,444,482,1449,1450,1332,1334,1131,1451,1452,1458,1453,1459,1165,1442,1429,1444,1348,1349] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [3395,2408,2411,2412,2415,3394,3406,3050,3052,2395,2396,2402,2405,2401,2419,2424,2435,2439,3407,3408,3411,2571,2572,2573,2590,2453,2454,2397,2399,2400,3418,3557,3546,3549,3550,3551,3554,3555,3556,3026,3435,3685,3688,2423,1781,2433,2431,2684,3695,3696,3697,3698,3699,3700,3704,3377,3378,3577,3580,3574,3570,3571,3572,2762,2686,2690,2691,3679,3690,2752,3594,3675,1779,2725,2724,2726,3004,2874,3548,3023,2559,3009,3021,418,431,2421,176] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2667,821,823,1486,857,853,854,1474,1689,1725,1685,1688,1714,1715,1713,879,1155,851,849,852,2650,2639,2651,2652] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [404,406,3720,3961,3959,3069,393,3103,3126,3100,421,3401,3934,3931,3067,3095,3099,3125,3097] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3690,2751,2752,3594,3595,3675,2725,2724,2726,1770,1772,1779,1789,3577,3574,3572,3688] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        
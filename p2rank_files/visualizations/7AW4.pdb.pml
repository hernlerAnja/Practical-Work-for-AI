
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
        
        load "data/7AW4.pdb", protein
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
 
        load "data/7AW4.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [342,343,476,451,453,473,475,477,447,444,445,347,360,416,412,328,669,670,340,341,500,501,1087,1089,499,685,1249,574,1257,686,1253,1256,593,612,478,479,482,1287,1104,1105,1106,1107,1260,1093,1101,1103,1258,1243,1244,1247,1044,1248,566,571,1045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2747,2774,2781,2729,2777,3208,3301,2741,2743,2264,2259,2260,2261,2265,2266,2306,2263,2307,2308,3313,2426,3295,3296,3297,3299,3298,3300,3302,2783,1621,1606,2782,3179,3180,1604,2808,2809] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2708,2725,2547,2546,2522,2709,2456,2491,2493,2496,2498,2521,2523,2519,2520,3138,3288,3289,3291,2442,3281,3284,3287,3134,3136,3132,3076,3118,3120,2440,2724,3278,2620,3275,3280,2617,3075,2612,2637,2639,2640,2524,2525,2528] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3647,3629,1148,1265,1149,140,145,146,1264,1266,1268,312,1267,1269,1271,192,194,193,143,144,700,702,141,746,1177,711,743,750,751,752,777,778] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1570,1574,1575,1563,1561,805,806,3599,3600,1576,3595,833,770,2836,1567,2837,2801,3586,3588,1573,2799] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1555,1790,830,831,882,884,1553,3813,3814,3815,826,828,829,3803,1542,1543,822,2913,2915,3580,2861,2862,2863,3578,3563,3566,3567,3568,2860] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2630,3225,2730,2731,2626,2751,3224,2749,3222,3223,3234,3228,3221] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
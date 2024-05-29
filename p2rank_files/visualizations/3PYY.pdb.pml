
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
        
        load "data/3PYY.pdb", protein
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
 
        load "data/3PYY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1185,1093,177,178,179,147,174,176,149,167,168,148,639,644,1092,1167,516,515,325,1179,1168,1171,1177,1180,1183,416,1172,441,439,440,172,173,656,658,660,664,688,689,651,672,699,679,199,200,129,221,146,309,321,323,621,640,624] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2309,2277,2279,2331,2440,2441,2449,2775,2777,2779,2740,2743,3299,2304,2311,2332,2456,2534,2453,2455,3293,3295,2280,2281,2276,2278,3280,3283,3301,3208,3209,2633,2634,2558,2559,2759,2783,2780,2784,2758,2763,3288,3287,3281,3284,2818,2300,2811,2808,2807,2791] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2973,2975,3886,4101,2974,2964,2944,2945,3860,3861,2966,3848,2942,3593,3885,3000,3557,3590,3592,3585,3587,3553] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [847,1568,845,1571,1574,844,843,1864,854,856,1865,2080,2082,1534,1538,1573,1591,1820,1821,1823,1833,1834,1826,1812,823,826] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2551,2527,2531,2550,3115,3116,3118,3125,2585,3282,3077,3131,3137,3133,3139,3288,3291,3287,3281,3284,2556,2557,2558,2559,2631,3280,2627,2633,3275,2532,2534,2530] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [416,1172,1175,441,413,414,439,409,412,435,437,467,438,432,431,1168,1171,1173,513,515,466,1019,1021,958,1009,1015,959,999,1000,1002,1023,1017,509,506,1165,1166] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [4089,4092,4086,4055,4053,4056,4057,4058,4059,129,130,220,221,120,296,4083,675,3907,3878,3879,673,674,4091,4117,659,660,670,672,3915] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [492,493,4205,485,486,484,940,944,941,946,977,4201,890,916,917,4238,2056,2057,4229,939,2091,2054,4203,4225,4226,4227,4228,915,936,937,938] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3004,3035,4077,4078,4112,2618,3009,3036,2602,2604,2610,3065,3007,3013,2984,3034,3056,3058,3059,3060,3063,267,268,250,259,4110,4111,281,282,3057] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [686,3862,3869,806,3867,3868,3870,1104,1112,1122,734,732,1128,1130,1131,813,804,805,758,765,757,764,3859] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1351,1352,1560,1611,1242,1246,715,752,1618,1607,1610,1337,1067,1247,1065,1066] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
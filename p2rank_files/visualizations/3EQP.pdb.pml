
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
        
        load "data/3EQP.pdb", protein
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
 
        load "data/3EQP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2326,2329,2305,2328,2330,2348,2347,2293,2294,2295,2299,2324,2325,2327,2482,3244,2834,2831,2297,2468,2812,2829,3328,2591,3318,3319,3321,3322,3325,3336,3338,2695,2618,2619,2480,2799,2476,2795,2813,3215,1307,1308,1309,2859,2860,2883,2884,3217,2852,3245,3223,3227,3229,3214,3225,1296,1299,1293] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1075,526,660,662,665,129,130,133,124,125,128,1158,1149,1150,1152,1153,1156,159,160,161,155,156,157,158,715,1045,1055,1056,690,691,1076,1074,683,686,177,307,127,178,299,643,179,422,313,311,644,630,449,450] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1710,1737,3751,3997,3998,1712,1735,3812,1738,1739,1742,1745,1780,1781,3817,3830,3991,1711,3840,3842,3863,3972,3748,3995,3996,4002,4010,4011,4017,3749,3924,3925] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3550,3762,3818,3819,3820,3821,3822,2912,3551,3538,3217,3219,3520,1305,1306,2876,1304] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1431,3813,1433,1772,1779,1780,1781,4011,4017,4021,4022,4023,4024,4025] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1672,1815,1820,1821,1763,1965,1967,1969,1523,1968,1669] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1406,2941,1260,1261,1262,1263,1264,1458,2907,2918,1457,1407,2003] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3990,3724,4138,4137,3984,3838,3692] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2317,3350,3341,3343,3344,2590,2316,2321,2484,3328,3327,2318,2319,3192,3351,2549,2550] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
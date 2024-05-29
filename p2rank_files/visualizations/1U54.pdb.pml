
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
        
        load "data/1U54.pdb", protein
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
 
        load "data/1U54.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3237,3233,3234,3230,3156,3157,2605,2607,2606,2248,2743,2746,2729,2241,2245,2246,2242,2764,2751,3155,2771,2767,3126,2275,2408,2410,2396,2724,2725,2530,2276,2411,2502] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [494,1044,653,655,1043,1045,631,496,634,652,1029,1125,1127,1120,151,138,139,140,145,173,305,307,308,309,612,301,611,613,172,143,142,293,617,495,171,1014,684,659] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3815,3816,3860,3861,3862,1791,1792,1797,3824,3825,1719,1720,1767,3790,3791,3794,3795,3823,3827,1612,1625,1786,1793,3793,3792,1637,1606,1607,3818,1583,1546] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3420,3413,3421,3529,3530,3419,3371,1616,3527,3424,3443,1646,3505,3470,3499,3495,3549,3550,3425,3445,3385] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3750,3809,3844,3449,3601,3604,3636,4049,3901,3902,4050,4048,3891,3468,3438,3448] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2411,2259,2461,2503,3253,2412,3254,3255,2464,2462,3238,3239,3240,3252,3101,3102,3103,3256,3261,3262,3263,3104,3415] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1633,1636,1727,1485,1487,1769,1728,1784,1785,1779,1332,1351,1484] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1127,1128,992,1141,1142,1144,391,308,309,1149,1150,1151,1143] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2509,2517,2539,2541,2481,2482,2483,2536,2537,2134,2664,2665,2147,2649,2130,2135,2136,2137,2538,2540,2129,2131,2133] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [537,553,538,44,428,429,536,34,532,26,27,28,30,31,425,426,427,397,405] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
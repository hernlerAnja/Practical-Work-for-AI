
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
        
        load "data/1KWP.pdb", protein
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
 
        load "data/1KWP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [457,458,708,1227,692,707,456,354,427,428,429,338,1229,1230,1233,1236,1237,321,211,335,334,691,434,723,210,724,730,728,727,1228,1135,1136] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [740,1142,1143,1146,1187,1188,1147,920,943,908,918,1145,783,816,840,817,888,911,892,782,784,789,854,1165,1184] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3130,3131,3645,3646,3647,3648,2648,2766,2647,2752,3135,2966,2967,3146,3147,3554,3150,3151,3153,3539,3652,3653,3655,3526,2769] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1398,1595,1617,1395,1828,1810,1811,1812,1817,1818,1823,1593,1596,1613,1614,1615,1616,1645,1510,1656,1653,1791,1522,1815,1816,1648,1651,1652] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [93,101,685,631,627,629,165,147,150,140,329,346] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2691,316,2709,2710,2553,2692,114,254,255,115,64,63,2747,273,3001,2566,2565,282,272,2500,2554] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2602,3050,3051,3052,3107,3108,3036,3034,3041,3091,2760,2576,2530,2538,2580,2583,2584,2537] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3566,3306,3307,3337,3339,3331,3206,3207,3564,3212,3589,3240,3584,3592,3598,3310,3309,3561,3565,3563,3606,3271,3593] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3130,3131,3646,3647,3648,2765,2766,2885,2887,3113,3115,2858,2861,3114,2785,2884,2883,2769,2855,2856,3649,3656,3654,3667,2854] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1494,1496,1531,1533,1498,1679,1673,1674,1677,1678,1495,1492,1493,1497,1708,1704,1706,1709,1680,1707] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [4577,4584,4585,4588,4589,3838,3837,3917,3923,3931,4555,4556,3808,3809,3811,4609,4578] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3838,3829,3830,3831,3832,4208,4177,4178,3985,3922,3923,3924,3925,3862,4179,3808,3809,3811,4207] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1354,1356,1357,1011,1013,1386,1010,1864,1867,1870,1876,1884,1869,1858] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
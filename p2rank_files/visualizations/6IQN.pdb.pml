
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
        
        load "data/6IQN.pdb", protein
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
 
        load "data/6IQN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2843,2844,2847,2817,2835,2836,3298,3299,3300,2818,2662,2661,2786,2787,2788,2789,2791,2917,1685,1698,1727,1686,2973,2834,2888,2839,2980,2967,1700,1705,1709,1699,1703,1712,2313,2314,2316,2319,2326,2498,2318,2325,2364,2495,2496,2497,1352,2363,2308,2310,2311,2808,2810,2812,2482,1728,2981,2825,2306,2312,2307,2850,2851,2854,3271,3365,3366,3367,3372,3272,2873,2874,2875,2877,2882,2883,1263,1265,1267,2878,2879,3373,3374,3375,2916] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [726,722,729,1173,1174,1175,719,142,692,700,710,718,689,693,685,1146,1156,1157,325,1242,324,537,662,664,309,671,1241,1249,1250,1240,3755,752,158,150,157,146,3773,148,138,139,140,145,194,170,196,322,195,3769,3770,3797,3798] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3715,3716,3717,3718,2870,3700,3702,3704,3710,3711,3714,3657,3276,3436,3437,3688,2902,2905,2868,2869,2906,2908,2909,3272,3273,1267,1275,1646,1648,3274,1276,779,820,3681,3706,3707,3708,3745,804,1611,811,812,813,821,2938,2936,1630,744,745,780,781,782,783,784,777,1618,1619,3746,1674,1675,2904,1632,1635,1636,1638,1639,2945,2946,1634,1640,1641,1644] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2502,2524,2773,2774,2521,2498,2494,2496,2337,2338,2507,2585,2792,2339,2341,2343,3374,3387,2553,2556,3376] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1809,1810,1804,1952,1955,1664,1763,1347,1949,1517,1550,1761,1787,1520] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1412,1409,1441,1741,1407,1411,1342,1327,1296,1298,1299] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3417,3587,3590,3857,3880,3734,3879,4020,3870,4019,4018] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
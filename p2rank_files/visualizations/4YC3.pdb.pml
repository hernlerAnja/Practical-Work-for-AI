
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
        
        load "data/4YC3.pdb", protein
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
 
        load "data/4YC3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [127,128,147,146,89,91,93,248,664,681,1208,407,1108,1199,1200,1201,1204,1205,1206,1207,524,658,660,525,655,657,659,707,1090,708,709,695,1125,696,697,703,684,1103,1124,123,124,126,262,263,264,125,265] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2905,3537,3538,3539,3529,3862,3864,3863,2595,3826,2903,2907,3885,3887,3818,3843,3776,2930,2931,3767,3769,3772,3774,2962,3817,3824,3828,3525,3532,2582,2937,2938,2578,2579,2902,2933,2934] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [2810,2873,3755,4345,4347,4348,4359,2812,2815,2816,4394,2818,4384,4385,4386,4387,4396,4397,2866,3716,3718,4382,2870,2871,3546,3547,3714,3713,2841,2853,2859,2814,2840] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4294,4237,4270,4281,4215,4235,3792,3794,4207,3793,3814,4208,3763,4244,3782,3783,2698,2699,2724,4298,4300,3795,3799,2691,2692,2697,3785,3786,4295,3759,3788] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1721,1763,1764,1765,1766,1767,4619,1722,1669,1699,1700,1720,1729,1730,1734,1737,4610,4612,4616,4615,4633,4634,4635,4636,1732] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1243,1244,1263,1264,1460,1007,1008,1010,1012,1013,1011,2470,1474,1481,2416,2417,1028,1454] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3594,2518,3551,3552,3581,2444,1012,1013,1011,2469,2470,3554,3556] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2570,3494,2580,2569,3504,2583,3493,3503,2547,2573,455,419,442,446,3492,3467,451,452,480] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1059,1076,1221,1228,1229,1220,1206,1207,1058,1075,125,122,1297,1298,1327] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [869,2353,839,2079,2081,2078,2295,2325,2328,2336,2351,2352,2095,2098,2300,2302] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3585,3687,3688,3689,3718,3582,3583,3584] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
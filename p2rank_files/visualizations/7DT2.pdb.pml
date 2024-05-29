
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
        
        load "data/7DT2.pdb", protein
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
 
        load "data/7DT2.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [155,157,669,670,673,1068,1070,126,127,642,645,646,152,153,180,154,179,637,639,641,659,660,653,129,130,131,132,128,602,301,1160,284,285,620,1162,1163,297,625,1069,1054,1055,147,156,158,159,1144,1041,701,680,704,1164,1157] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2264,2265,2267,2231,2234,2236,2238,2239,2395,2237,2759,2266,2268,3178,3179,3180,2800,2257,2262,2263,2289,2290,2793,3194,2779,2780,2765,2767,2789,2790,3193,2762,2761,2824,2240,2241,3273,3275,3277,3280,3284,2410,2411,2511,3281,3282,3283,3140,2407,2741,2722,3123,3263,3264,2745,2740,3276,3285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1005,1008,1009,1167,1242,1255,1004,1283,1296,1298,1263,3217,3218,1265,1279,1180,1181,1182,1185,1238,1240,4229,2933,2941,3225,3227,2934,1171,358,1165,387,386,359,2965,2967,2968,356,357,4206] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [350,377,4147,4181,4144,4146,4180,542,549,4156,339,340,341,567,586,2596,3018,2580,2582,3016,3045,3042,3047,3038,3039,3040,3078,2588,2589] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [858,832,802,820,821,822,826,827,1561,824,833,800,803,1521,1555,1557,1558,1816,1817,1837,1838,1804] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3929,3930,3954,2924,2948,3917,3919,3670,3672,3673,2927,2950,2944,2945,2946,2926,3633,3667,2957,3955] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4187,4215,375,378,374,406,430,4216,543,544,545,551,6,8,377,4180,4155,542,4156] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2828,2858,2859,2860,2866,2871,2864,2906,1270,2875,2833,2778,2784,2780,2831,2786,2787,2907,2835] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3728,3430,3726,3820,4027,3870,4022,4024,4025,4021,4023,3589,3592,3865,3819] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        
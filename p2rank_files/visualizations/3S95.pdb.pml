
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
        
        load "data/3S95.pdb", protein
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
 
        load "data/3S95.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2519,2520,2521,2527,2528,2544,2554,2558,2540,2541,2677,2678,2674,2675,2676,2751,2779,2781,2788,2512,2513,2514,2518,2517,2516,2818,3602,3603,3604,3605,3618,3096,3115,3124,3517,3518,3519,3087,3089,3093,2660,2661,3075,3070,3054,3056,3597,2937,3492,3491,3481,3505,3504,3464,3465,3696,3697,3700,3626,3627] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [149,150,151,142,143,148,1214,1134,1135,1213,743,744,725,726,1215,1218,1220,315,314,298,299,562,699,704,146,188,144,718,722,147,727,443,316,1120,753,1107,747] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4225,4231,4236,4203,4226,4227,4210,4199,4208,4259,4263,4276,4674,4676,4677,4679,4162,4641,4198] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1242,382,406,1220,1221,1234,170,155,174,380,442,443,316,413,171,172,333,173,176,177,184,188,315,314,1243,1081,405,1244] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2282,2283,2284,2285,1763,2278,2279,2280,2281,1843,2246,1831,1832,1837,1877,2245,1864,1800,1826,1804,1809,1811] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2162,2090,2091,2161,2163,4055,4023,2198,4014,4013,4046,4052,2167,2174,2180,2168,2190,2194,2188,2189,2051,4020,4028,4049,4018,2047,2048] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3712,3717,3719,3707,3708,3709,2191,2195,2187,2188,3714,4059,4060,4056,3791,3790,4097,2229,2226,2227,3746,3789,4000,4015,4014,4016,4057] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1350,1351,1334,1336,769,1112,1113,1601,1602,1603] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1994,1995,1996,2016,1009,1011,2012,978,1015,1016,1019,976,1452,1455,1486] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3385,3383,3389,3846,3847,3849,4406,3352,4390,4393,4395,4412] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        

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
        
        load "data/5HVJ.pdb", protein
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
 
        load "data/5HVJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1108,756,1136,139,140,1219,1220,1222,314,315,316,1221,146,143,141,144,196,185,192,707,1135,298,299,1214,1215,1216,687,460,565,688,702,312,1121,728,747] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4282,4296,4300,4301,4302,4308,4309,2180,2201,2053,2199,2203,2195,2050,2052,2080,2081,2090,2091,4331,4332,4333,4334,4373,4479,4343,4345,4477,4480,2045,4478] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2774,3001,2480,2747,2749,2736,2737,2745,2711,2495,2496,2497,2498,2501,2648,2494,3546,3547,2630,2631,2629,3531,3532,3533,3534,2467,2627,2500,2511] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2630,2631,3420,3533,3534,2880,3017,3428,2613,2614,2514,2510,2511,2455,2456,2459,3022,3043,3447,3034,3036,3062,3071,3448,3040,2458] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4115,4113,4119,4124,4087,4091,4085,4098,4096,4095,4561,4522,4558,4164,4151] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1830,2245,2281,2284,1813,1814,1815,1759,1868,1881,1836,1831,1832,1864,1804,1808,1802] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4365,4366,4367,3252,3253,3260,3228,2145,2149,3500,2162,3280,4326,2850,2169,2170,2848,2864,2865,2855,2856,2857,4389,4390,4391] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1220,1222,315,316,1221,171,423,395,181,333,459,430,1244,1243] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [967,2042,2043,4470,990,535,533,534,549,4451,4452,4463,4472,541,4464,4462,4466,4467,938] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2050,2052,2080,2081,2090,4331,4373,4479,4487,4488,4343,4345,4477,4480,4473,4478,2045,4309,4463,4471,4472,4457,4464,2082,2084,4372,4374] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [913,936,938,2083,2084,2106,945,1186,1187,1188,550,4452,4453,549,2107,2108,4444,4445] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4555,4557,4559,4561,4560,4562,4610,4626,4583,4523,4556,4558,4087,4091,4046,4057,4085,4098,4096,4099,4095,4050,4025,4045] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3085,3087,3424,3425,3426,3887,3888,3889,3118,3119] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [116,611,306,115,631,633,677,324,657,658,659,325] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
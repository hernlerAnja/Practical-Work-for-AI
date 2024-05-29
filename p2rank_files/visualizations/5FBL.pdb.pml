
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
        
        load "data/5FBL.pdb", protein
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
 
        load "data/5FBL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3952,3954,3958,3961,3880,3877,3966,3970,226,231,233,255,3964,221,3984,3985,3989,3867,3871,3872,4001,4002,3992,3997,230,227,228,35,261,4588,4797,4793,4792,3848,3850,3858,3836,3842,3847,3862,3866,3832,4174,4178,4182,4574,3854,3859,4569,3860,4595,254,4314,4335,4571,4587] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2867,2866,2380,2843,2945,2850,2951,2953,2345,2367,2236,2237,2240,2242,2944,2017,2941,2942,2952,2342,2346,2348,1412,1414,1466,1423,1939,1415,1486,1411,2324,2336,2339,2325,1953,1989,1954,1955] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1415,2354,1486,1399,1487,1506,1505,1414,1400,1754,1724,1752,1753,2339,2345,2350,2356,2367,1690,2374,1701,1698,1383] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [388,379,380,386,412,421,422,391,2083,381,382,383,384,2245,2253,2256,2248,2249,2250,2026,2025,2251,2049,2050,415,700,701,702,703,704,730,731,2262,2267,2269,670] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [654,671,668,669,670,1303,1589,1569,415,700,701,702,704,672,619,620,653,678,360,381,382,383,384,380,1284] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2802,3014,3018,3017,3720,3723,3693,3695,3716,3717,3718,3719,2728,2758,2726,2754,2756,3696,3697,3699,2750,2747,2751,2786] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1466,1467,1423,1438,1954,1955,1970,1971,1972,1973,2850,2951,2953,2952,2017] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3888,3887,4294,4859,4861,4278,4830,4852,4832] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2374,2375,2442,2506,2504,2505,2415,2542,2543,2544,2541,2871,2879,2875,2359,2888,2885] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2728,3021,3023,3190,3191,3706,3724] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
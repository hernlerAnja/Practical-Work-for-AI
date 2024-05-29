
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
        
        load "data/6NZM.pdb", protein
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
 
        load "data/6NZM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2422,2261,2268,2269,2270,2264,2266,2267,2452,3318,2248,2249,2257,2271,2252,3154,3362,3360,3361,2283,2285,2238,2239,2241,2243,2244,3153,2233,2232,2781,2284,2236,2404,2405,3258,3281,3256,3257,3259,3279,2454,3278,3164,3165,3283,3284,3287,2729,3178,2752,2756,3177,3179,3150,3251,2774,2777,2755,2389,2235] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [127,130,139,142,144,1185,1227,1229,1228,1031,1123,1124,1125,1126,1032,993,1146,1145,1150,1151,1154,163,281,282,283,300,1148,331,330,332,137,146,147,148,329,149,995,1021] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1017,641,1044,1046,644,648,1118,1031,1126,122,161,162,163,267,1045,281,282,283,622,111,113,114,117,119,121,126,149,147,148,116,109,110,619,623] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [205,207,208,210,261,514,515,516,518,243,209,20,22,512,513,206,251,240,241,242,517,519] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2730,2405,2406,3281,3252,3253,2540,2729,3251,2610,3268,3270,2623,2627] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3902,3906,3910,3908,3656,3749,3752,3717,3889,3733,3734,3739,3883,3890,3896] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1604,1749,1598,1599,1524,1756,1777,1786,1582,1610,1614,1617,1764,1766,1768,1770,1561,1580] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2327,2329,2330,2332,2634,2331,2363,2364,2365,2362,2636,2637,2638,2640,2639,2641,2632,2635,2383,2144] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1073,1080,1082,794,739,683,684,762,790,736,825,789] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [597,505,418,488,284,1148,1119,1120,1135,1137] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2872,2874,2895,2927,2870,2869,2817,2958,2960,2920,2923,2924,3215,2948,2949,3206,3213,2922,3205,3212] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [372,374,298,331,344,580,563,567] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        
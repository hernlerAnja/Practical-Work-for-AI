
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
        
        load "data/7UIQ.pdb", protein
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
 
        load "data/7UIQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [165,163,164,268,662,664,665,280,282,423,526,663,110,109,111,116,122,149,1084,688,527,528,1085,685,701,113,1056,1168,1171,1172,1173,1176,1179,711,709,704] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2379,3154,3155,3228,2761,2780,2776,2777,2736,2737,2738,2739,2740,2741,2509,2226,2227,2228,2230,2232,2233,2275,2261,2262,2391,2392,2393,2276,2389,2239,2260,3133,3126,2785,2787,3138,3236,3225,3229,2608,2609,2610,3243] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1482,937,2016,2020,2021,2025,2004,2010,2013,2014,2015,959,1448,1450,1452,1249,1453,1454,1458,961] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3734,3736,3737,3769,3770,3774,1795,1799,1800,1780,3802,3803,3764,3766,3761,3371,3453,4206,4205,4204,3373] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [365,403,405,366,397,312,369,367,368,370,371,585,586,590,313] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [146,150,151,281,282,422,296,396,139,330,357,394,331,390,391,135,136,137,141,1178,1192,1194,385,134] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1179,1177,1178,1056,1068,1028,1044,1045,4309,4313,1202,1057] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2881,2907,2853,2908,2910,2932,3163,2933,2880,2906,2929,3172,3185,3190,3193,3162,2824,3178] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [748,1092,1093,1136,1149,1125,1124,859,1130,1131,1132,1133,1108,1117,777,810,811,862,836] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3138,3234,3235,3236,3127,3259,4417,4420,4421,3115,4425,3114,3098,4410] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2663,2697,2699,2461,2667,2458,2459,2460,2701,2424,2423,2462,2464,2463] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
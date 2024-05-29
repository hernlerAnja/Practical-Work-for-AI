
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
        
        load "data/4IVC.pdb", protein
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
 
        load "data/4IVC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [446,445,244,246,297,299,1291,298,765,245,243,238,241,430,1205,769,786,240,783,259,269,280,281,248,249,255,256,1476,263,276,278,1305,1307,1315,1190,1289,1290,1292,1153,1154,1191,1313,1314,1284,656,1283,1473,1449,1472,1181,1177,1178,1179,1176,1185,842,811,816,840,841,1206,237,808,797,541,504,508,509,514,460,512,485,507,273,1446,1445,1144,1431,1330] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3141,3138,2521,2527,2528,2529,2533,3140,3114,3475,3489,3484,3110,3505,3088,3107,3082,3084,3096,2589,2590,2591,3064,3583,3588,3589,3590,3582,2530,2532,2534,3085,3504,3068,2722,2538,2539,2540,2535,2536,3476] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3591,3613,3606,3612,3614,2551,2561,2565,2572,2573,2738,2541,2540,2547,2548,3480,3786,3452,3788,3453,2781,2804,2841,2808,2809,2807,2752,3478,3629,3630,3787,3589,3590,3489,3772,3744,3745,3746,3748,3771,3775,2555,2568,2570,3747,3715,2783,2785] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1487,1181,831,1177,1178,1179,1180,1167,1519,1520,829,1484,1504,832,833,1784,1808,1778,1733,1807,830,1771,1772,1773,1823,1820,1822,1518] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [2008,4307,3873,4274,1983,2007,4282,4248,1950,4249,1573,1574,1976,1974,1975] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [3130,3131,3132,3476,3477,3478,4106,4107,3818,4032,3479,3819,3472,4122,4119,4121] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1847,1669,1699,2192,2194,2196] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        
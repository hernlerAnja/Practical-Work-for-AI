
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
        
        load "data/4IVD.pdb", protein
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
 
        load "data/4IVD.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2573,2574,2738,2739,2842,2575,2576,2753,2805,2815,2781,2803,2809,2810,2531,2532,3479,2538,2539,3592,2530,2527,2529,3605,3453,3614,3454,3606,3607,3613,3615,2804,3619,3631,3481,3787,3444,2570,2568,3748,3745,3746,3747,3749,2562,2566,2782,2783,2784,2808,3773,3789,3772,3776,2542,2550,3490,3590,3591,2592] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2592,2520,2521,2590,2591,2523,2524,3490,3065,3583,3584,3589,3590,3591,3582,3139,3141,3115,3476,3111,3089,3107,3108,3083,3097,3504,3505,3506,3069,2723,3086,2531,2532,2530,2526,2527,2529,2738] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [298,430,756,238,240,241,777,780,774,760,246,237,243,244,299,445,297,832,799,802,830,788,1181,1280,1281,1282,1274,1275,1195,1196,806,1197,1167] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [275,277,1464,446,1283,1181,1281,1282,1170,280,281,282,283,445,284,248,249,255,256,273,259,269,460,514,541,502,508,503,509,481,482,483,507,504,505,480,1298,1322,1296,1297,1306,1304,1305,506,1478,1145,1172,1144,1463,1474,1480] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3131,3132,3133,3477,3479,3480,3820,3819,4033,4108,4107,4123,4122,4120] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1814,822,1168,1169,1170,1171,823,824,1510,1511,1158,1724,1811,1798,1799] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [4276,1966,1974,1999,4308,1565,1936,1940,1941,4249,1564,4274,4275,4283,4245,4250,3873,3874] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1660,1837,1990,1690,2185,1838,2028,2183] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3754,3782,3909,3911,3731,1920,3831,3858] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1445,1473,1523,1549,4229,1522,1600,1602,1422] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
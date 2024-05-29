
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
        
        load "data/4OBO.pdb", protein
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
 
        load "data/4OBO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [153,155,682,683,714,1085,1084,1161,1163,1162,1178,670,664,666,667,650,646,492,1180,150,151,152,176,1170,293,1167,1168,1164,1171,120,123,125,175,121,276,285,289,291,628,631,645,404,405,1174,133,107,144,691,712,713,737,738,746] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3549,3550,3546,3547,3545,3611,3620,3622,3628,3678,3521,3522,3524,3782,3335,3559,3784,3786,1602,1604,1603,1616,1619,3703,3769,3770,1611,3596,1610,3330,3331,3788,3862,3660,3672,3676,3333,3343,3344,3345,3634,3661,1220,3362,3637] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [3590,141,1020,1231,1232,1224,1235,3999,4000,1390,1392,1388,3614,3616,3618,1030,1031,1032,1265,1017,1018,1466,1391,1049,1215,1204,1216,1282,1238,1280,1275,1307,1276,1263,1264,1228,1229,4012,4013,146,147,157,148,152,1170,293,1168,1169,1069] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3361,3362,3371,3372,3370,3382,2414,2415,2416,2417,2517,2977,3493,2959,3397,3475,2401,2411,2534,1220,1222,3590,3588,2996,3398,2980,2983,3541,3474,3484,3345,3342,3383,3325,3381,3504,3537,3548,3550,3547,3524] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1545,1547,1550,1273,1556,1557,1577,3606,3607,1256,1062,1060,1061,1058,1047,1049,1241,705,706,1272,1519,734,736,738,735,3574,3572,3575,3617] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3375,3371,3373,3374,3668,3669,1211,1210,3654,3946,3947,3971,3935,3937,3940,3018,3019,3909,3360] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1322,3713,4035,3718,4082,4039,1643,4014,4011,4034,4037,4040,1323,4041,1319,1644,1317,1638,1639,1645] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [257,258,519,521,523,518,520,522,217,218,219,220,73,74,516,221,222,515,517] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        
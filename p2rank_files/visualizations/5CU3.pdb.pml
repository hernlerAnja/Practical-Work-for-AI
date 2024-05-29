
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
        
        load "data/5CU3.pdb", protein
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
 
        load "data/5CU3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1324,1341,945,1322,1334,1338,966,1860,1868,1869,967,968,969,970,971,972,996,998,950,1033,1867,1148,1104,1118,1323,1836,1295,1297,1298] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4089,3725,3726,3727,3728,3729,3730,3731,4108,3872,3916,3870,3880,3885,3886,3844,3766,3763,3764,3801,3843,4064,4065,4597,3773,4622,4623,4624,4101,3704,4104] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3290,3526,4197,4199,4200,3186,3187,3120,3122,3185,3689,3703,3704,3705,4098,3124,4075,4076,4077,4071,3127,3128,3130,3121,3660,3662,3525,3527,3305,3663,4201,4205,3171,4084,4208,3132,3141,3142] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [531,1430,1432,1433,427,1434,1435,1438,426,428,1304,1307,1309,1308,1310,530,768,766,898,903,904,361,368,369,767,412,548,1441,363,365,946,362,930,945,929] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4045,4208,4061,3145,3154,3133,3142,3306,3307,3323,3418,4224,4207,3171,3156,3157,3153,3161,3158,4225,3381,3382,4227,4234,3163,4232,4233,4359,3149,3151,3388,4075,4077] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3013,3026,3029,743,744,1193,1220,3033,3034,1187,1188,1191,1160,1185,1186,3012,3025,3032,3569,3053,1219,3036,2687,3005,3554,3553,3071,3555,3061,3243,2661,2663,2660,74,76,3050,3060] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [412,622,399,402,564,411,624,629,1441,1277,1465,1466,1467,1604,617,618,1440,623,659,1457,383,386,395,397,398,1293,1308,1310,373,374,382] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3023,3611,3337,3338,3390,3631,3632,3363,3361,3362,3364,3612,3614,3389,3396,3398,3359,3387,3357,3360,723,731,3022,3579,724,725,726,727,775,774,697,2998,2999,3001] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1211,1747,1753,1761,1762,1765,2596,1185,2638,2650,2627,2644,2647,2649,55,2606,48,65] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2932,2944,2949,2939,2941,4279,4281,2960,2961,2970,4247,4300,4301] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [173,1512,1514,199,201,202,180,182,211,190,1480,1481,1533] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
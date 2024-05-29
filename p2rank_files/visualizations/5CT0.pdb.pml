
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
        
        load "data/5CT0.pdb", protein
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
 
        load "data/5CT0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1034,1868,1869,1870,968,970,1033,995,999,1000,1348,1104,1107,1345,997,1005,1117,1073,1076,963,965,966,946,950,1330,1297,1329,1298,1299,1148,1837,1118] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [4118,3743,3745,3747,3740,3775,3742,3777,3772,3811,3770,3771,4072,4074,4075,4076,4607,3727,3739,3925,4603,3879,3881,4632,4633,3889,3854,3779,3782,4626,4099,3723] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [3040,3596,3597,3648,3630,3634,724,725,726,727,787,731,730,3037,3038,3016,3018,775,3379,3380,3381,3382,3041,774,3017,3019,3414,3445,3416,3417,3408,3355,3356,3649,3650,3629,3407] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1338,1339,1340,768,532,531,1439,363,365,362,1440,1445,1305,1324,1448,766,767,904,898,899,901,903,1437,1441,1442,546,547,548,427,412,426,428,368,369,371,373,374,382,383,544,943,945,930,923,927,928,924,366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [4207,4210,3704,4209,3716,4109,4110,3720,3325,4211,4215,4216,4218,3189,3203,3204,3205,3324,3140,3144,3142,3143,4081,3676,3678,3680,3679,3681,3323,3707,3705,3544,3543,3545,3308,3309] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [386,390,391,392,399,402,404,393,625,629,659,564,617,619,624,1472,1473,1474,618,1464,1465,1466,395,398,1447,1277,1448,1293,412,383] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [240,242,639,602,603,637,630,260,261,263,819,820,605,578,872,873,604] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [539,329,330,331,538,878,554,556,281,811,282,828,864,863,866,814,821,827,825,826,307,306] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1748,1763,1766,2597,65,48,54,2607,1754,1762,1185,1211,1789,2639,2651,2645,2648,2650,2628] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [311,469,524,906,787,788,313,892,793,796,505,513,492,508] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2824,2825,2829,4518,2842,5414,5409,5412,4524,3988,5403,4536,4532,4533] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
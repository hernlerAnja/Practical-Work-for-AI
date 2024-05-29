
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
        
        load "data/5OTO.pdb", protein
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
 
        load "data/5OTO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3814,4658,3747,3748,3749,3750,4656,3854,3857,4122,3885,3888,4625,4078,4079,4080,4105,4186,4103,4104,3929,4620,4621,3898,3899,4655,4705,3786] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [970,973,1004,972,1302,1304,1305,976,1306,1918,957,1345,1348,1329,1012,1843,1155,1331,1839,1867,1870,1109,1125,1111,1114,1041,1078,1082,1868,1869,1040,1083,1124] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [908,910,538,539,435,372,433,434,1317,1316,934,951,952,953,551,553,554,906,909,911,774,905,773,555,1441,1455,1437,775,1339,1340,1445,1311,1440,1446,1448,368,369,370,374,376,375] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3143,3144,3147,3149,3207,3209,3163,3164,3193,3727,4112,4113,4085,4214,4211,4215,4216,4219,4220,4222,4088,4090,4091,3725,3726,3146,3708,3679,3208,3312,3549,3547,4213,4114,3548,3680,3682,3684,3685,3327,3328,3329] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [629,1474,1284,1467,1472,1473,1447,1448,1324,1325,1598,1611,1299,1300,1315,1599,666,1464,1465,630,555,393,396,397,399,401,390,405,418,554,571,419,406,636,1317] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [277,281,282,3969,3972,4001,3968,3962,3963,3966,3967,280,284,4000,307,308,309,2844,2846,5457,5458,491,298,3524,3523,807,801,320,273,274,802,803,253] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [270,607,637,879,608,609,610,611,246,247,265,267,3512,3556,638,635,605,644,646,243,3503,827,3505,3506,3507,3508,3560,859,860,585,586,880,612] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3404,3402,3170,3171,3179,3180,4246,4247,4248,3173,3192,3164,3167,3193,4058,4220,4221,4222,4385,4074,4089,4091,3440,3345,3398,3399,3405,3406,3410] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [4542,4550,4551,4554,2818,2834,2825,5403,5447,5441,5446,5424,2845,3966] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2954,4267,4261,4314,2961,2963,4293,4295,2966,2971,4262,2982,2992] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1218,1220,1754,1758,1759,1760,1768,1769,1772,1795,61,44,48,51,2650,2645,2639,43] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        

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
        
        load "data/7U33.pdb", protein
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
 
        load "data/7U33.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1812,4017,4018,1831,4001,4041,4139,4145,4147,4140,4144,4138,3002,3003,3005,4057,3033,3034,3051,3052,3148,4030,4029,3629,4058,2998,3000,3001,3610,3603,3594,3596,3600,1806,4031,4034,4146,4160,3031,3024,3025,3028,3165,4141,3162,3164,3163,3307,3576,3578,1821,1822,1830,4168,4161,4162,3015,3022,3023,3018,3384,3385,3583] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4614,4624,4632,4657,4867,4885,4863,4864,4865,4860,4861,4862,4868,407,221,223,225,4633,222,226,228,4884,4883,386,383,387,4608,1366,1344,1358,1359,1360,1361,1197,1199,1472,1216,1345,1239,460,467,471,474,232,229,381,234,235,455,1228,1232,1465,4652,4656,4679,4879,4647,4682,4874,4870] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [234,235,204,253,1227,1337,1256,1336,1255,801,781,582,364,365,366,583,774,776,508,203,252,201,202,793,795,796,349,1345,1239,1342,1343,1344,1338,1339,475,1228,808,827,206] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4267,4269,1823,4277,1822,1830,4252,3991,4166,4161,4164,4162,4165,4172,3024,3025,3027,3179,3180,3182,3206,3254,3185,2053,2055,2050,2060,3263,2082,2083,1850,1854,1855,3020,3021,1818,1845,2073,2075,1843,1849,1880,1820,3186,2067,2081,2070] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1809,1813,1839,1840,1531,1454,1458,1461,1532,1530,4615,4616,1493,1567,1570,1559,1814,4332,4333,4334,4367,4369,4371,1802,1808,4641,4642,4291,4292,4263,4260] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1586,1588,1592,1575,2001,2002,1597,1598,4828,4830,2036,1604,1605,2014,2015,2016,2017,4377,4804,4816,4817,4819,4258,4387,4388,4390,4400,4394,4399] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [900,901,956,963,985,989,990,899,864,816,817,1274,1277,1276,1026,986,988,859,1261,863] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [22,177,154,155,357,176,178,263,259,260,262,264,356,375,753,664,665,646,647] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3058,3059,3061,3062,3063,3173,3174,2821,2822,3555,2953,2954,3447,3449,3155,3467,3466,2977] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3826,3828,3790,4063,4098,3703,3791,3792,4070,4076,4078,4079,3765,3665,3666,3701,3619] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        
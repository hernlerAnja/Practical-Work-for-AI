
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
        
        load "data/4WB7.pdb", protein
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
 
        load "data/4WB7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [906,909,1073,1055,1056,1057,932,934,879,933,1931,3187,2044,2045,2046,1874,2020,2018,2019,1890,1914,2017,1902,1510,885,887,888,892,893,916,6862,882,883,911,896,902,913,6884,6888,6868,1891,1903,1513,1156,2011,2012,2013,2014,1930,1465,1483,2033,2034,2035,1216,1040,6882] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [5402,4314,4435,4436,4437,4841,5380,5382,5383,5386,5387,5388,5389,4312,4313,5283,5381,5299,5300,4863,4420,4840,4845,4276,4268,4272,4273,4296,5259,5260,7026,7042,7046,4291,4293,4289,4262,7020,4256,4890,4893,6556,4255,4257,5272,5271] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [592,593,2989,2994,2996,563,627,624,617,619,621,622,618,620,3015,3017,3018,3019,3020,1,2,649,1279,1281,629,1802,1803,1764,1768,1765,1766,1767,1769,1740,1292,3016,2895,3014,2977,2978,2979,2981,1288,1283,1290,1299,1280,1277,1774,1776] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4670,4672,5105,5138,5141,6385,5143,6387,5145,4657,4668,6389,4661,5109,5133,5134,5135,5136,6264,5131,3996,3997,3999,4001,4002,3973,3970,4004,4007,4026,4029,4025,3972,3943,6383,6384,6386,6347,6388,6346,6348,6363,6365,5172,5171,4009] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [6913,2494,2497,2502,2531,2532,2495,2496,2165,6840,6879,5900,5901,5534,5863,5864,5865,6912,6914,6908,6915,7072,7071,5872,5873,6998,6895,6894,6887,6890,6896,2488,5511,7080,7079,7078,2504,7057,7059,7061,7045,7049,7063,7037] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4453,4596,5402,4437,5388,5389,5403,5404,4536,4559,4570,4287,4291,4286,4289] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3450,3739,3741,3445,3401,3439,6220,6245,6246,6247,3770,3771,3769,3402,6243,6181,6183,3742] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4990,4992,5027,4966,6453,6454,5065,5066] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1623,3085,1696,1697] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1792,2288,2853,1790,1798,1799,2320,1762,1764,2860,2861,2856] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3940,3942,3973,3946,3913,3407,3971,3972,3948,3410,3484,3393,6238,6239,3443] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
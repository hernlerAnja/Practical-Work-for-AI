
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
        
        load "data/3VS7.pdb", protein
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
 
        load "data/3VS7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5057,5170,5172,5188,5174,5258,5003,5004,5055,5056,5001,5006,5551,5583,5156,5157,5506,5507,5425,5490,5491,5492,5166,5471,5253,5254,5255,5262,5263,5424,5256,5233,5511,5528,5523,5525,5158,5531,5385,6012,5944,6013,6014,6017,6020,5281,5283,5282,6042,6043,5554,5532,5945,5920,5928,5558,5311,5403,6029,6031,5288,5386] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [6798,6799,6803,6808,3419,6807,6775,6776,6777,3413,3418,6859,6828,6580,6619,6610,6646,6643,6644,6645,6897,6898,6832,4093,6829,4092,6800,3189,3191,3320,3322,3158,4280,6912,6908,4271,4272,3343,3344,3345,3377,3442,3443,3346,3310,3404,3373,3374,599,774,781,784,786,6676,6677,3348,3164,3165,3166,3351,3352,3353,3125,3321,3319,3329,3188,6873,6874,3123,3126,3155] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2089,2090,2092,2482,2483,1539,1541,2548,2550,2551,2558,1710,1712,2552,2555,1594,1595,1708,1923,2045,2066,2069,2070,1694,1695,1696,2044,1704,2026,2061,2063,2065,2096,2097,2121,2458,1544,1538,1537] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2549,1848,1849,1923,1921,1941,2045,1845,1938,1817,1791,1792,1822,1800,1801,1823,1826,2044,2027,2028,2029,2030,1962,1963,1796,1771,1793,1804,2009,1807,2581,2580,1727,1798,2548,2551,1710,2552,2555] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [5378,5804,5334,5302,5309,5279,5805,5849,5850,5806,5851,5852,5853,5854,6025,6033,5859,6035,5310,6024,5848,5800] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [4124,4125,4126,4161,4434,4419,4431,4430,4428,5716,6820,4104,5708,5681,5710,6851,5682,5683,6812,5711,6862,6861,6887,6893,4454,4444,4091,6844,6837,6847,6848,6849,6850,6852,4410,4128,5715,5717,4132,5714] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3365,610,631,632,638,2253,2254,630,667,931,937,925,2218,2219,2220,2221,2223,3398,2246,2248,2249,2252,665,2224,2231,2255,634,636,3406,917,936,3389,3393,3394,3395,3396,3397] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2521,617,2522,639,614,637,1898,1899,1900,1908,1909,1892,1893,1897,2286,576,582,584,615,616,618,2308] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3557,3558,3559,4020,4787,4788,3918,3919,3917,3547,3939,3548,3991,4014,4058,4061,4062,3992,3995,4048,4007,4039,4016,4076,4145,4054,4056] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [589,590,616,618,779,3367,3369,641,3368,606,607,2307,2305,2306,2308,3340,617] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3636,3890,3892,3627,3607,3608,3609,3612,4855,4857,3776,4859,4863,3780,3783,3778,3781,3887,3888,4865] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [4100,6824,4084,5768,5769,6795,4083,4111,4112,5770] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6936,4546,3068,3072,3073,6929,6933,3113,3117,3120,3079,3086,3088,4494,4493,6939,4524,4525] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [6664,6368,6367,6662,6495,6500,6505,6485] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [113,114,115,1393,282,284,287,289,1403,393,394,396,398,1397,1401] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3209,2913,2912,3045,3002,3040,3050,3207] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
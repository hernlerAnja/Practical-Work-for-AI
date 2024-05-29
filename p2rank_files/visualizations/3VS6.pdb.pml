
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
        
        load "data/3VS6.pdb", protein
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
 
        load "data/3VS6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2044,1694,1696,1594,1697,1595,1923,2482,2550,2461,2030,1710,1712,1699,1704,1708,2028,2559,2562,2551,2552,2557,2556,2558,2581,2567,2569,2045,2029,1938,1940,1941,2026,2580,1848,1846,1799,2483,2069,2089,2092,2063,1541,1539,2066,2070,2458,2466,1538,1544,2096,2097,2121] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [6076,5229,5231,6100,5607,5608,5611,5615,5640,6002,5585,5588,5563,5564,5548,6001,5318,5316,5547,5549,5596,5459,5345,5460,6071,6077,6099,5977,6086,6087,6088,5442,6069,6070,6078,5367,6081,5368,5584,5215,5060,5113,5216,5218,5112,5114,5056,5057,5058,5063,5213,5214,5227] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [3369,3371,3345,3347,3373,3378,3377,3346,6962,6963,6987,3398,6948,3150,3189,6986,3180,3183,3214,3402,3443,3466,3467,3468,3444,3399,599,3367,3370,6866,6897,6864,3429,3438,786,6702,6699,3478,6733,3391,3394,778,6918,6921,6917,4297,7002,4117,4118,6997,6891,6892,6887,6888,6889,6890,4305,6896,6710] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [6933,4129,4149,4151,6920,4150,6937,6940,6950,6951,4435,4436,4453,4455,6901,6909,4456,4459,4464,4479,6982,4471,4481,5765,4146,4184,4186,4187,4450,4444,4153,4157,5768,5737,5738,5743,5748,5750,5767,5771,5772,5773,5739,5742,6976] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5276,5277,5278,5244,5246,5316,5288,5312,5314,6123,6099,5243,5522,5242,5511,5514,5527] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [610,632,3390,630,631,667,925,934,936,2219,3418,3419,2220,2221,3421,3382,2246,2248,638,2253,2254,2252,2249,2229,940,937,634,3431,917,3414,3417] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1724,1725,2008,2010,1723,2580,2603,1727,1758,1759,1757,1726,1731,2610,1738] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3584,4849,4851,4081,4846,4841,4844,4845,3944,4016,4017,3570,3572,4032,4041,4039,4040,3583,3948,4866,4086,4079,4083,4087,4064,4171] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [63,425,1347,64,65,53,51,498,445,501,497,520,526,1325,1326,567,584,564,495,545,560,562,522,513,1330] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [632,630,631,934,936,940,960,962,937,597,3431,3432,3457,917,950,3401,599,3463] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [589,590,606,779,617,618,2308,3365,3394,2305,2306,2307] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [3807,3801,3803,3805,3912,3913,3915,4920,4922,3917,3633,3632,3661,3648,3652,4912,3800] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [5194,4881,4889,5193,4894,4903,4907,3636,3637,4880] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6589,6751,6753,6457,6349] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3070,2938,3027,2830,3234,3232] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        
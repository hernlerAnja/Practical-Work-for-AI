
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
        
        load "data/7MOB.pdb", protein
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
 
        load "data/7MOB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7773,7774,7776,7778,7779,7981,7982,7983,7382,7395,7448,7691,7310,7379,7640] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [3448,3829,3911,3912,3914,3916,3778,3533,3586,4121,4119,3917,4120,3517,3520] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [2080,2081,2082,2083,1429,1431,2066,829,831,834,1393,1419,839,1682,1679,1673,837,838,850,853,2094,1751,2092,1699,1700,1701,1747,849,1420,35,697,27,37] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [688,2217,373,714,716,2216,2231,321,322,323,369,2228,704,702,703,705,51,53,295,301,304,15,41,2075,2207,2209,2212,2227,1405,1413,1415] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [9954,6796,7295,7286,6811,9953,9955,6800,7685,7683,7689,8187,8197,8199,8201,8204,9970,9959,7299,7309,7305,7697,7699,7317,7311,8742] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [6091,4880,3823,6093,6092,3835,3837,3827,3433,3821,4335,4337,4342,4339,4325,2938,2934,2949,3437,3447,3443,3449,6097,6108,3455] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [10313,10401,9847,9848,10163,10161,10162,10167,10168,10169,10170,10179,10180,10183,10184,10187,10208,10218,10220,10310,10399,10400,10281,10312] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [6450,6299,6300,6305,6306,6307,6308,6451,6317,6321,6322,6346,6318,6325,6356,6419,5986,5985,6358,6301,6537] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [4455,4441,4577,4672,4297,4299,4300,4021,5405,4689,4688,4690,5404,4197] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [8303,8159,8161,8439,8162,8317,8550,8551,8552,9266,9267,7883,8534,8059] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [9710,9564,9565,9579,9580,9709,9734,9737,9736,9539,9541,9758,6655,9868] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [5847,5679,5896,5848,5677,5702,5703,5717,5718,6006,5872,5874,5875,2793] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [6893,7279,7282,7064,7065,7265,7397,6913,6927,7083,7411,7280,7455,7456,7457,6929,7388,7389,7417,7420,7392,7396,7386,7387] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [3417,3418,3420,3524,3526,3525,3527,3593,3594,3031,3549,3403,3221,3558,3595,3202,3203,3051,3065,3067,3555,3535,3530,3534] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [7455,7456,7457,7166,7169,7153,7146,7420,7083,7082,7058,7066,7411,7063,7065,7265,7061,7060] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [3549,3403,3220,3221,3284,3291,3558,3595,3304,3593,3594,3307,3204,3198,3199,3201,3203,3196] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [544,545,2722,2723,2724,709,547,533,548,733,734,726,730,2744,2729,2741] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [8049,8051,7998,7869,7603,7604,7607,8000,7997,7999,7611,7610,7614,7615,7618,7992,7996] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [3741,3742,3745,4007,4187,4189,4135,4136,4138,4134,3753,3756,3752,3748,3749,4137,4130] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [1346,2087,1344,1345,1351,1363,1923,1926,1922,2104,2111,2112,2108] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [1482,1483,1487,1493,1497,1498,1499,2019,2021,1804,1860,1861,1561] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [483,426,641,643,109,115,119,183,120,104,105] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3579,3286,3287,3708,3710,3772,3751,3565] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [5821,5927,5752,5753,5807,5043,5045,5186] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [8907,9615,9669,9789,8905,9614,9683,9048] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [2308,2533,2534,2595,2304,2306,2309,2464] 
set surface_color,  pcol26, surf_pocket26 
   
        
        deselect
        
        orient
        
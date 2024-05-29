
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
        
        load "data/2X18.pdb", protein
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
 
        load "data/2X18.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [773,2850,2852,2854,38,42,44,49,212,772,774,2388,2389,2390,333,2554,2563,55,56,52,210,58,60,331,2826,2827,2828,2864,2856,2889,2846,2848,2890,802,761,766,803,770,771,735,743,748,749,739,3991,35,26,39,4040,4041,2894,2861,2857] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5455,5794,5795,5276,5788,5456,5797,5799,5282,5283,5284,5285,5286,5781,5277,5453,5264,5265,5260,5463,5465,5253,5945,5947,5097,6067,6063,6065,6066,6091,5802,6049,6057,6059,5250,5251] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [2942,2949,7161,7345,7347,7333,2958,7335,7338,7597,7598,2946,3099,3101,3219,3220,3221,2960,2963,3213,3212,3241,7149,6964,7148,7137,7144,7601,7160,7166,7167,7168,7169,7170,7337] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [4607,7492,7493,7494,7496,7532,7535,4608,4636,7495,4368,4646,7228,7212,7484,7485,7456,7455,7226,7227,4382,4383,4384,4426,4982,4983,4385,4606,4635,4643,4644,4645,4647] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [1584,1572,3912,3914,1581,4187,1406,1407,1873,1874,1875,1405,4188,1574,4592,1571,3906,4072,4070,3896,3903,4585,4624,4625,4627,1909,4626,3909,3910,4588] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [1908,3892,4654,4656,4626,4655,4625,4627,3896,3903,1406,1407,1852,1872,1874,1875,1405,1851,1881,1884] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [3640,3670,3679,3680,3677,3381,3399,522,3639,3641,3678,3720,754,755,3681,523,5885,753,507,790,791,792,793,794,782] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [1726,1727,5329,5610,1698,1699,1451,5599,5600,5571,5572,1469,5607,5608,5609,5611,5569,5570,1734,1735,1697,1737,1736,1738] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [3657,7167,7169,3660,7170,7642,3690,7606,7607,7603,7632,7633,2942,7634,7635,3689,2938,2935,3648,3635,3653] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2434,2435,6502,6503,6513,2706,6229,2677,6514,6474,6473,6510,6511,6512,2716,2713,2714,2715,2676,2705,2717,2433] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5822,5898,6442,6443,6444,5446,5477,5818,5820,5441,5443,5900,6272,6273,6274] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [1574,1575,1615,4589,4592,4594,1598,1596,1599,3932,4580,4578,4583,4588,1601,4411,3937] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [736,739,741,2553,2577,725,549,550,552,83,78,727,730,735,2578,2575,2594] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [3626,3424,3426,3058,3425,3610,3608,3056,2981,7354,7356,7357,7359,3055,7318,7319,7322,7323,7325] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [4003,4004,4522,4520,4515,3966,3395,3396,851,852,880,3407,3408,826,830,857,860,828,3431,3432] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [4922,4923,4926,4939,4942,4947,5240,4924,5036,5014,5015,5228,4921,4929,4930,4958,4951,4963,4966] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [507,791,792,793,794,833,830,3396,4002,4003,4004,3670,3397,3398,3399,3641,3642,3643,3440] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [4059,4266,4267,4270,3959,3960,3942,3963,3968,3967,2888,2895,2899,4037,4058,4278] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5350,5363,5364,5336,5504,5414,5522,5523,5007,5395,4933,4934,4935] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [6807,6882,6812,6881,6791,7112,7124,6903,6804,6795,6786] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [2093,2333,2108,2112,2114,2336,1999,2041,2002,2004,2022,2025,2029,2344,2030,2332] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3293,3012,3013,3281,3072,3088,3282,2988,2990,2994,3011,3006,3010,2985,2993,3002,3003] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        

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
        
        load "data/7LQ1.pdb", protein
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
 
        load "data/7LQ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5970,6054,6055,5972,6689,5752,5753,5755,6690,6693,6694,5689,5691,6695,6696,5690,6078,6059,6066,6072,6076,5969,5671,5498,5499,5500,5566,5568,5567,5513,5514,5546,6075,6688,6118,6603,6604,6110,6670,6576,6101,6103,6669,6685,6687] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [4335,4340,4342,4651,4653,4655,5368,4341,4697,4698,4376,5795,5761,5762,5981,4622,5374,5378,5379,5380,5377,5792,5759,5781,5787,5788,5791,5783,5818,5819,5820,5965,5978,5975,5958] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [4189,2687,2688,4188,4462,4463,4471,4473,2678,4185,4198,2675,2677,2900,2923,2924,2925,4498,4502,4503,4199,3345,4496,4487,4493,4458,4464,4468,4208,4209,4187,4211,4161,4172,4179,4170,4511,4132,4456,4457,4128,4238,4126] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [6475,6596,6878,6880,6831,6832,6834,6849,6448,6549,6679,6680,6551,6550,6493,6837,6844] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [3029,3182,3027,3176,3037,3177,4763,4764,8100,8063,8033,8064,8065,3189,8038,3036,8032,8004,8041,4756,8039,8036] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [960,943,944,945,2860,2978,2976,2905,3149,3151,4461,2950,2951,2980,2890,2893,2897,2903,3161,3154,3159] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1186,2038,2037,4908,2068,2069,4903,4904,4905,4944,1742,5351,1743,2040,4611,1222,1233] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [6922,6958,6859,6946,6948,6951,7616,7613,6920,6921,6939,7578,6896,6861,6887,6857,6890,6998,6999,7000,7001,7002,7576,7577,6997] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [3136,2838,2835,3120,3034,3049,3139,4769,4770,4756,3131,3143,3029,3027,3037] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [4712,4714,842,856,834,4715,4980,4982,6033,6034,6035,6002,6004,6007,6010,4687,5001,5000,4710] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2826,3031,3037,3012,3177,3219,3223,8808,2257,2263,2820,8809,8807,2250,8031,8772,2270,3032,3035,2817] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [5851,1856,1853,1854,1855,1272,1274,5820,5817,5960,5961,1887,5843,5844,5881,5882,5919,5943,5940,6650,5937,1882,1884,1273,5920] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1273,5917,5920,5937,1880,1882,1907,1908,1909,1911,1903,1302,1825,1826,1827,1300,1301,1899,1901,1286,1287,1270,1271] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [6504,6505,7536,7537,7389,7412,7433,7497,6800,7506,7102,7432,7388,7390,7494,7495,7498,7499] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [6125,6156,6567,6571,7671,6155,7670,6870,7640,7642,7664,7666,7667,7668,7669,6869,6850] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [7204,7206,7231,7345,4140,4150,4151,7256,7254,4109,4111,4116,4156,4157,3869,4167,4168,4113] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1785,1786,1788,1777,1780,1515,1522,1523,1545,1165,1166,1167,1168,1158,1157,1654,1671,1164,1195] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2833,2838,2835,3042,3043,3120,3118,3119,3044,3049,3117,3064,3047] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        
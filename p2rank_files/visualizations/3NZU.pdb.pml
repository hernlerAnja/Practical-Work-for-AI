
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
        
        load "data/3NZU.pdb", protein
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
 
        load "data/3NZU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4781,4782,3249,3528,3529,4779,4780,4808,3222,3246,3248,434,437,4756,4757,3251,4778,3245,3256,438,1036,1037,1038,1039,1040,1035,4295,4935,4938,4309,4311,3287,4720,4718,4721,4724,4941,3564,4310,880,3607,3608,3560,3562,3559,3561,3563,1061,1022,1032,4844,4846,518,1023,4777,4805,4810,3258,4803,4804,4842,4845,4843,508,510,4839,3225,3226,998,452,466,997,993,1024,1026,3259,468,4921,1063,1070,4919,4920,4918,5022,4872,1062,4884] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [5590,5058,5591,4422,4466,4432,4406,5574,5677,5678,5679,5701,5702,5703,5704,5671,5676,5573,5575,5668,5669,5563,4449,4450,4451,4433,4434,5061,6643,4440,5567,4438,5072,4630,5012,5013,4488,5029,4629,4486,4650,4672,4648,4649,5670,5031,5034,4927,4928,4930,5017,5672,5673] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2152,2154,1517,3067,3065,3066,3064,3078,6190,6134,6158,6159,3053,6128,2485,3076,2472,2475,3028,2474,2717,2489,2506,2507,2545,2744,2745,2709,6249,6253,2480,2481,6256,6289,6251,6281,2156] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [888,890,889,4339,1160,1161,416,417,418,4274,4275,3518,3520,399,3525,3514,3516,3521,3522,3850,400,1166,1198,3526,3550,4316,4310,4315,4319,4273,4338,3841,3875,3876,3873,3842,1187,1189,899,3527,3529] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [2206,2205,1949,2037,181,182,2209,3390,205,198,171,173,174,165,2213,3720,206,153,159,162,163,1953,1955] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [6640,6644,5551,6649,6650,5119,5121,5118,5179,5086,5138,5144,5145,5157,6614,6616,5177,5567,5565,5549] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3232,3233,3234,3270,467,468,2978,465,466,2991,2993,2974,4791,4821,6108,6109,4815,4816,4812,4813,6087,6085,4853] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [2177,3670,3688,4697,3659,3669,6195,3341,2176,6202,2164,6215,6216,6217,4680] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [5502,6151,6153,6296,6295,6267,6269,6232,6272,5720,6234,5510,5742,5743,5508,6297] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [4295,4935,4300,4308,4309,4311,4329,4609,4604,4330,4310,880,879,4934,5022,5019,5020,5021,5026,5045,4611] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [5508,5489,5766,6297,6299,6301,6326,6329,6437,5759,5764,6473,6474,5509,5510,5519,5523,5743,6330,6331] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [899,438,1009,878,3529,4310,4319,880] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1533,1495,1858,1859,1842,1476,1478,1477,2143,2185,2186,1518,2181,2182,2194,1494,1516] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [4590,4608,4330,4531,4565,4573,4577,4576,4564,870,877,871,865,869,4561,879,878,4569,4599] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [4516,4262,4264,3934,3968,4232,4237,4230,4233,4348,3966] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [5518,4773,5505,5475,5474,5451,5453,5689,5478,5479] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [4556,4557,4554,4559,653,650,633,635,867,4571,1125,1123] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        
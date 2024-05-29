
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
        
        load "data/6C9G.pdb", protein
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
 
        load "data/6C9G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5585,5577,5048,5049,5050,5063,5064,5065,6328,5055,6324,6326,6194,6195,6320,6175,6176,6177,6180,6181,4915,5596,5597,4916,4917,5056,5058,6318,6329,6330,6333,5583,5572,5575,5579,5584,5587,5741,5719,5720,5721,6773,6774,6776,6769,5565,5739,5740,6756,4189] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [463,658,659,1191,1194,156,268,269,270,673,1190,674,155,725,722,99,100,254,678,102,103,692,1195,1196,1197,1198,1209,1099,426,1200,429,424,425,154,98,105,116,106,108,110,111,1189,1087,717,1114,1115,1204,1206,1186,541,542,714,699,1202] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [163,164,165,3417,3443,3462,3464,15,17,73,632,650,651,3199,3477,278,16,3217,3198,3463,148,3446,291,630,631,277,294,3218,3219,145,138,141] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5991,5992,6025,6013,6920,6024,5530,5563,5564,5565,5566,5567,5536,5568,5569,6898,6899,6912,6913,6921,6883,6884,6885,5587,5588,5730,5731,6196,6176,6188,6189,6191,6029,6200,6216,6026] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [6336,6346,6318,6319,6333,6301,6347,6534,6297,6300,6532,6571,6573,6579,6547,6548,6552,6550,6755,6751,6762,6767,6756,6602,6600,6596,6599,6782,6590,6595,6804,6763,6766,6773,6768,6769,6787] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [5577,5028,5031,5032,5033,5049,5050,5063,5064,5065,5423,5421,5411,4943,5323,5326,5286,5042,5314,5071,5072,5073,5316,5352,5354,5363,5403,5404,5405,5406,5565,5429,5578,5592,5572,5575,5579,5426] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [4187,4734,4188,4201,4907,4901,4903,4746,5703,5704,5705,5706,4909,4915,5595,5596,4916,5749,4208,4186,4189,5745,5747,4209,5693,5695,5697,5740,5702,5720,5721,5699] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2314,2310,2313,4329,4331,4332,4336,4353,2309,4355,2334,4534,4535,4888,4889,4834,4835,4389,4350,4371,4516,4897,4833] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [4245,4246,4247,4248,1939,1963,1949,1950,1946,1980,1982,1454,1473,4075,4077,1470,1464,1465,1466,1463] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2933,2934,2935,4288,4429,4423,2932,5637,5649,5652,5654,2942,5658,2941,3010,5671,2936,2939,4441,4494,4443,4445,5686,4428,4426,4420,4492,3018,5668] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [1276,2911,1278,1281,1437,1284,2784,2786,4036,1436,2625,2627,2629,2783,2806] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [5001,5004,5005,5006,5009,5010,5012,5629,5422,5663,5435,5628,5633,5661,2978,2987,2993,2994,2995,4994] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [3678,3679,3680,3681,3659,623,3214,3196,3211,3215,624,3560,3581,3688,3771,616,3783,3780,3781,619] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1081,1082,1092,740,742,744,778,768,774,1606,1607,1608,1567,1592,1593,1594,769,771,1596,1595,1597,1601] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [6951,6959,5979,5981,6672,5964,5895,5896,5897,5898,5899,5900,6950,4575,5960,6980,6977,6979,6981] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1980,1982,1497,958,1987,1988,4247,4248,1464,984,1463,1250,4255,980,982,981,988] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [2358,2345,4324,4328,4339,4334,4344,4346,3110,2366,3109,3140,2360,2364] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [4137,4739,4144,4151,4156,4191,4193,4194,4125,4217,4119,4121,2305,2307,4149,2308,4886,2331,4122,4893,4892] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [3744,3568,3570,3348,3350,3347,3625,3626,3627,3628,3631,3629,3630,3632,3633,3353,3355,3346,3305,3352,3759] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [2252,5785,5787,2253,2255,4616,4618,2219,2220,5819,5807,5808,5813,5814,5817,4651,2191,2218] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
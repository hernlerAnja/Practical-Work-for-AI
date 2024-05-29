
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
        
        load "data/5U6B.pdb", protein
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
 
        load "data/5U6B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3748,3750,6076,6077,5634,5635,5636,5637,6026,5256,5633,3610,3604,3605,5254,5800,5801,5815,6084,5814,5257,3618,3623,3625,5786,6131,3613,3749,3718,3747,3645,3770,3644,3691,6106,6111,5802,6104,6105,3661,3724,3722,3728,6098,3619,3624,3626,6130,3629,6122] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [4822,4691,4693,5181,4692,4807,4823,4821,5740,5735,5738,5734,5770,4655,4654,4681,4680,4642,4641,4682,4676,5610,4674,5232,5069,5659,5660,5661,5201,5204,5228,5229,4637,4640,4639,5198,5200,5641,5632,5646,5733,5186,5239,5636,4635,4636] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [1181,1182,1272,1273,608,1199,1200,346,725,740,743,737,739,1180,1185,1171,778,175,176,178,179,606,768,771,1274,1280,362,720,721,1276,361,230,231,232,360] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [7447,7451,7454,7847,7856,7857,7874,7875,7876,7254,7256,7948,6842,6895,6994,7401,7396,6838,6839,6840,6844,6894,6896,7009,7010,6851,6858,7152,7861,7953,7956,7949,7415,7419,7444,6843,7411,7413,7420,7416] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [3386,3414,2993,2990,3415,2983,2986,3400,3495,2549,3494,2691,2795,3413,3487,2955,2958,2959,2547,2548,2546,2381,2434,2952,2533,2954,2935,2940,2379,2382,2384,2400,2390,2397,2435] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [7471,6411,6412,6424,7468,7848,6419,6425,7850,7852,6427,7505,7470,7472,8143,8355,8401,8405,8406,8413,8144,8390] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [3391,3682,3683,3008,3009,3010,3011,3894,3929,3933,3952,3932,3939,3940,3944,1964,3389,1950,1951,1963,3387,1966] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [5914,5915,5916,5923,5946,5533,6459,6461,5922,5924,5925,6476,6478,6456,5917,5534,5535] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [446,394,398,390,397,473,441,442,476,478,405,690,1299,1302,376] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [6015,6246,6249,6250,6258,6265,6268,6069,6046,6252,6102,6103,4032,4041,4068] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2408,3507,3508,3495,2549,2688,2692,2662,2665,2667,2548,2545,2550,2654,2920,2417,2404,2409,2415,2400,2420,2553,2397] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1073,1074,1081,1072,1454,1455,1452,1453,2015,2017,2007,1995,1998,1485,1463,1464,1462] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4327,4340,3288,3289,3287,3781,3783,3784,3782,4329,3793,3791,3792] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [6869,7009,7010,7123,7153,7115,7955,7956,7969,7968] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1827,935,1822,1824,1856,1575,1578] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [8424,8523,8562,8284,8287,8709,8567,8711,8710,8712,8317] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5106,4968,5088,4971,4992,5764] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        

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
        
        load "data/3IBE.pdb", protein
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
 
        load "data/3IBE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4766,3321,3322,3327,3328,4767,3332,3606,3323,451,452,453,912,911,1041,1043,1068,1069,3325,931,3326,3299,3637,3639,3636,3638,3640,3641,4321,4959,3635,4331,4334,4335,4336,4337,4344,3364,3684,3685,4734,1025,1028,1029,1063,1064,1067,1030,1054,1055,1056,1058,534,3334,3336,3303,3335,4854,4855,481,482,4856,3302,4928,4819,1095,1070,1071,1072,4755,4790,4791,4792,4788,4815,4817,4818,4944,4757,4945,4948,4951,4728,4730,4731,4732,4882,533,1093,1094,523,4813,4814,4820,4821] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [4488,4445,4447,4448,4640,4510,4660,5636,5637,5638,5639,4658,5611,5550,5044,5551,5633,5628,5630,5632,5631,5083,5068,5523,5534,4458,4459,4454,5526,5022,5039,4639,5021,5023,4939,4937,4938,4940,5027,5041,4726] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3595,3918,3953,414,3597,3917,415,1216,1218,3919,1189,3591,3592,3593,3927,4299,4341,4342,4345,4346,4301,919,920,921,922,4364,4343,3942,918,940,942,931,431,432,433,3599,3602,3603,3604,3606] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [5091,5108,5109,5189,5192,5190,5191,5221,5090,5745,5743,5736,5773,5229,5772,5357,5359,5361,5559,5329,5570,5583,5584,5327,5328,5331,5330,5558] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [6066,6097,6139,6140,6143,6144,6147,6168,2573,2578,2580,2582,2583,2574,2167,6128,6133,2588,3134,6039,6041,3146,3147,3157,1543,3148,2802,2803,2840,3159,3109,3106,2804] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3347,5994,4825,4863,3310,3334,4824,482,6014,6017,3066,3068,3072,3075,3076,3055,3059,3278,3309,3311,3074,3332,4831,5990,5992,4827,5993] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [4288,4290,4267,4374,4263,4034,4036,4380,4385,4386,4538,4237,4239,4242,4043,4044,4045,4062] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2946,2948,2950,2380,2385,2389,2393,3173,2917,1803,1296,1297,1299,2897,2376,1813,1815,2030,2032,1809,1797] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [5462,5470,5477,5657,5658,6156,6185,6117,6115,6090,6125,6082,4750,6058,6060] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2216,2217,1970,219,203,202,2058,2220,3467,226,194,2224,2229,174,180,184,3797,3798,183,1974,1976] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2174,6102,6108,2188,4690,4707,3736,6109,6123,6124,6107,6101,6106,6094,3418,2187,2180,2186,3743,3747,3765,3767] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [422,867,958,853,865,1183,423,1182,386,387,388,389,396,397,398,959,960,971,750,753,754,776] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [912,910,1041,3606,451,453,931,4336,4345,4346,4343] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [642,1162,859,644,858,860,800,802,813,814,811,777] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [897,909,911,1042,1043,1120,1134,1138,4583,4587,1141,902,901,1078,1071,1115,1112,1114] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1464,1645,1646,1893,1922,1933,1932,1449] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [1085,1086,498,721,1050,592,562,560,995,993,998,720,557] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [5407,5421,5392,5408,5602,5622,5703] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [5126,6490,5123,6492,5114,5157,5519,5096,5510,5095] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [5335,5842,5319,5770,5782,5840,5200,5336,5309,5759,5783] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        
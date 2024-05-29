
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
        
        load "data/4KBK.pdb", protein
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
 
        load "data/4KBK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2429,2433,3462,3470,2428,2469,2470,2471,2472,2578,2580,2422,2423,2417,2420,3334,3364,2992,2948,2922,2924,2925,2576,2563,2941,2943,2947,2954,3365,2946,2696,3463,3464,2730] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4913,5803,4802,4803,4805,4911,4804,4775,4780,4782,4783,4770,4771,4777,5667,5299,5697,5795,5300,5325,5255,5257,5258,4896,5274,4824,5063,5796,5028,5797,4909,5243,5281,5282,5280,5287,5698,5276,5279] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [7072,7183,7090,7091,7488,7500,8048,7200,7274,7307,7074,7092,7198,7196,7068,7943,7527,8039,7502,7503,7544,7942,7532,8037,8040,8041,7308,7912,7521,7524,7519] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [985,575,984,986,545,543,567,564,237,562,955,1083,1080,1082,1084,351,546,117,108,112,114,144,145,241,235,238,527,240,250,120,124,146,1090,254,252,531,587] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1941,4325,1812,1814,1967,1964,1965,1963,1968,1796,1801,1807,1800,3734,3759,1364,1365,1784,1786,1518,1372,1773,1780,1782,4326,4327,4173,4174,4303,4169,3727,4328,3726,4330,4144,4135,4145,1397,4157,4158,4162,4163,4166,4146] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [6016,8322,8737,8739,6015,6435,8321,8923,8920,8921,8925,6452,8330,6458,6462,6463,6455,6433,8741,8743,6434,8740,8354,8758,8757,6048,8753,6424,6447,6614,6615,6616,6617,8898,6619,6592,6023,8771,8769,8764] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6864,6868,2166,2168,5480,6870,6872,2170,6780,6820,6822,2103,2104,6782,6783,2142,2138,2130,6775,6767,6776,6806,6807,6809,6808,6850,5447,5477,5479] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4518,4519,4520,4575,4579,4561,3144,4583,3114,4581,4487,4491,4517,4531,4533,4478,4492,4493,9123,9125,9127,9087,9088,9093,9098,9060] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [621,2277,2279,1030,1000,991,998,1032,581,582,1006,2292] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [7538,7539,7989,7955,7987,7957,7963,7578,9244,9242,7948,9257] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [3370,3411,3377,4639,4641,4654,2961,3385,3000,4637,2960] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [5744,6928,6930,6926,6943,5710,5703,5718,5293,5294,5333] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1812,1814,1965,1796,1365,1518,1773,1934,1516] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        
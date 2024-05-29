
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
        
        load "data/2C4G.pdb", protein
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
 
        load "data/2C4G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5677,5680,4609,5572,5241,4779,4778,4641,4642,4615,5159,5160,5673,5674,5672,5579,5584,5601,5212,5215,5599,5600,5155,4660,4762,5154,5156,5158,4661,5179,4603,4606,4607,5157,5184,5192] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [664,691,1110,1111,694,116,709,710,711,718,1094,722,1082,113,725,751,674,429,665,667,533,1182,1183,1184,1187,1190,272,170,171,117,120,122,125,119,288,666,287,289] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [3019,3020,4742,3454,4706,5053,5148,5054,5056,4516,3430,3429,4545,4517,4555,4556,4542,3010,5045,5044] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [554,7517,7508,553,555,563,658,7518,216,252,7927,27,30,566,7952,55,65,66,52,558,7928] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [5732,5734,6930,6931,6932,6959,8083,8084,8114,5728,5729,5748,5751,5752,5739,8075,8115,5972,5977,5975,5962,6984,6987,6945,6927,5982,5983,6943,6953,6954] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [2489,2456,1244,2433,2434,1472,1485,1487,1482,1239,1238,1242,1264,1258,1261,3586,2461,3616,1263,3577,1262] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [257,672,675,679,680,683,1169,707,7153,7524,7152,7171,7172,7173,540,558,1139,1140,1168,1127,1152,2369,508,505,507,253] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [7371,7375,8040,8038,8039,8221,8188,8189,8190,8196,8219,8220,7378,8893,8895,8074,8104,8106,5745,5753,8200,8193] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [2970,3817,3827,3832,2933,3777,3829,3534,3846,3869,3890,3528,3767,3769,2600,2601,2935,2936,2939,2942,2908,3517,3868,3522] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [3541,3721,3722,3723,2880,4395,3606,3608,3603,3695,3690,3691,3702,4393,3667,3669,3670,3692,3542,1255,1263,3576,3577] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [81,83,84,298,60,59,34,642,622,641,643,37,35,36,623,624] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [6709,5899,6700,6342,6345,6385,6386,6384,5938,5936,6393,6351,6356,5976,5950,5937,6693] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [2203,1852,2218,2219,1895,1894,1861,1866,1867,1868,1460,1443,1446,1448,1896,1886,1485,1409,1486,2210,1412] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4636,4637,4639,4777,4778,4641,5678,5680,4779,5679,4918,5693,4883,4884,4885,4886,5694,5701,5702,5703,5584,5544,5560,5561,5576] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [321,595,3419,600,602,3380,3391,3381,3383,3417,3392,322,324,590,591,367,3411] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [5197,5617,5614,5629,5630,5632,5165,5167,5173,5169,5659,5030,2654,5642,5658,4997,4995] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [8267,8265,8275,8315,7406,8023,8025,8015,8020,8362,8366,8032,8361,8344,8388,7437,7433,7434,7468,7431,8330,7440] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [1054,1070,1071,1211,1212,1206,1189,1190,1094,150,152] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [2462,4075,2426,2469,2470,4071,4072,3624,3626,4068,2465] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [7287,7621,7278,7791] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [7950,55,54,21,7890,7916,7918,7920,7915,7886] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
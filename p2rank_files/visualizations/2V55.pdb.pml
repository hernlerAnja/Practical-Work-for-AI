
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
        
        load "data/2V55.pdb", protein
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
 
        load "data/2V55.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [613,619,625,620,1609,1208,798,670,671,672,799,800,1706,1230,1234,1235,1624,1626,2893,2895,2897,1257,1625,1701,1598,617,1224,1258,1259,1061,1212,783,1060,1233] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [5330,5331,5332,6141,6238,5202,5203,5204,5145,5149,7416,7418,7420,5792,6130,6157,5151,5152,5157,5166,5791,5592,5593,5740,6233,6234,5315,5744,5762,5767,6156,6158] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [4052,3241,3242,3228,3229,4053,4046,4049,4050,4051,4074,3226,3227,3231,3258,3259,3374,3377,3379,3388,3404,3224,3381,3383,3221,3253,3225,3598,3402,3393,3396,3399,3262,3265,3354,3261,3346,3348,3352,3353,4354,4355,4359,4362,4066] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [7885,7886,7887,8902,7912,7891,7893,7892,8897,7801,7804,7781,7797,7800,7798,7799,7913,7916,7918,7920,7927,7924,7792,7943,8581,8582,8583,8905,7780,8584,7766,7768,7770] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [6103,6119,6101,6102,6376,6377,6378,6380,5188,5169,5181,5173,5183,5184,5423,6374,6118,5348,5440,5441,5443,5445,5439,6254,6255,6256,6257,5331,5332,6239,6240,6241,6258,6263] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [1849,1850,1852,1848,1853,637,642,641,1586,1609,1570,1587,1709,1857,1569,1571,800,956,1707,1708,909,911,1722,1723,1725,1731,799,649,651,652,891,908] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1215,1216,1642,1648,1217,1639,1687,1031,2756,1028,1688,1069,1024,5298,5275,5276,1650,1651,7369,7370,7372,7371] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [743,5564,744,5601,758,2846,2847,2848,2849,6171,7279,5749,5769,6219,6220,5560,7277,5563,5556,6174,6182,6183,7274] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [5670,5671,7561,5672,5674,7547,7548,7553,7554,7549,7558,4799,4798,4800,4783,4784,4826,4827,5361,5680,7474,7485,7481,7482,7483,7486,7480,7552,4825,7499,4785,4786,4787] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [2970,2971,289,291,1137,1138,1140,1144,1148,1139,1142,249,251,248,3010,3016,3017,3021,829,264,3012,3015,1151,2944,2946,2948,2937,2943,2945,2953,2949] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [8939,8942,8920,8875,8874,8881,8882,8941,8590,8887,8943,8891,8910,8937,8938,8919,8915,6835,6836,6811,6817,6814,8879,8589,8876,6842,6843,6844] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [3096,3097,3098,3099,504,3100,3102,717,521,524,527,557,520,3101,715,716,738,777,737,739,1100,1098,3107,7662,7664,757] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [5780,5820,7409,5814,5821,5854,5856,5778,7335,6165,7326,7330,7331,7336,7319,7321] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [4059,2283,2276,2277,2289,4333,4336,4399,4400,4332,4339,4344,4348,4396,4376,4426] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [8786,8813,8785,8794,6736,6792,6793,8787,8769,8758,8809,6698,6848,6864,6791,6849,6716,6729,6757,6759,8808,8846,8850,8852,8843] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [2886,1248,1282,1285,1289,1288,1279,1322,1312,1246,1633,1324,2803,2812,2798,2814] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [1903,1904,2489,2275,2277,4391,4394,4395,4396,2281,4426,2298] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [2264,2265,4244,4243,4266,4267,4270,4263,4265,2198,2208,2201,4300,4303,4295,4251,2188] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [5934,5932,7195,7225,5892,5921,5928,5893,7310,7313,7300,7294,7295,7302,7220,7222,7209,7210,7208] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [5270,5630,5632,5269,5271,5289,5059,5249,5089,5247,5248] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [5806,6650,6651,6652,6411,6134,6694,6693,6401,6133,6386,6398] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        
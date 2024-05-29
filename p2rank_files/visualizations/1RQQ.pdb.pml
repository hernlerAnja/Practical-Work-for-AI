
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
        
        load "data/1RQQ.pdb", protein
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
 
        load "data/1RQQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1238,676,334,335,442,471,1242,1243,1244,1245,1146,333,188,189,190,152,155,159,160,5974,140,141,144,145,151,404,167,169,170,171,161,173,174,339,406,5971,5977,1159,1160,1133,726,727,729,1132,698,719,1161,728,752,139,319,138,134,136,137,133,497,1255,1235,566,567,681,695,700,699,433,434,1258,435,1110,1266,1268,6010,6011,5988,1415,1416,1418,6007,6008,6009,1412,1135,1136,5985,394,395,1393,1409] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2484,2485,2495,2496,2480,2477,2470,2499,2464,2457,2463,3450,6109,6110,6105,6106,6107,6108,6080,2458,6087,6078,6081,6070,6071,6073,6076,6079,2786,3559,3573,3553,3557,3558,3560,2655,2656,2992,2653,2654,2515,2640,2513,2514,2459,2461,2462,3456,3461,3448,3447,3475,3041,3033,3034,3037,3476,3043,3013,3021,3415,3581,2750,3582,3688,3708,3709,3730,3742,3583,3724,3727,3731,3733,2744,2745,2752,2747,2652,2757,2657,2494,2660,2498,2719,2746,3550,3010,3014,3015,2996] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [5766,5827,5826,5853,5869,5871,5089,5000,5091,5199,5201,5855,5110,5171,5172,5173,5174,5217,5111,5116,5745,5751,5747] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [5794,5795,5803,5807,5808,5813,3681,3683,3690,3694,3666,5810,5812,5845,3671,3672,3668,5809,5846,3693,3696,3649,5819,5073,3642,5796,3648,3661] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [3230,3233,3234,3235,3236,3237,3232,3258,3077,3078,3181,3269,3202,3203,3270,3509,3510,3268,3259,3511,3502,3514,3512,3513,3515] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3262,4521,4523,4525,4538,4524,4537,4539,4540,2858,2859,3289,3518,3519,3523,3259,3506] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1187,1195,1196,1199,1197,1201,762,1167,1198,1200,1202,763,866,917,918,919,920,921,943,944,953,955,887] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1188,1189,2202,2204,1187,543,544,1191,1208,973,2226,944,945,947,2201,2253,2220,2221,2252,2218,2219,2203,2205,2206] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3000,3540,3496,3498,3005,2891,2892,2997,2999,3001,3505,3506,3504,2856,2858,2859] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1333,1334,1346,1326,5165,5153,5135,1353,1357,5729,1351,5156,5158,1356] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [4884,4897,4812,4878,4879,4880,4699,4737,5246,5271,5273,5248,5275,5276] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        
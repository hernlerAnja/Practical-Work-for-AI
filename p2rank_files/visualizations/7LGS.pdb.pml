
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
        
        load "data/7LGS.pdb", protein
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
 
        load "data/7LGS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3242,3243,3244,3212,956,3185,3186,860,861,862,3150,4435,4436,4434,4465,4467,4457,4464,4458,1166,2170,2172,2836,2139,2169,3453,2162,3454,2837,2830,2846,2847,3219,3222,2111,924,2140,2141,2163,895,2109,2106,952,953,954,955,559,898,931,932,897,1165,548,549,557,542] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [7024,7025,7026,7006,7008,6980,6982,7478,8004,7124,7924,7925,8005,7895,7523,7526,7530,7531,7555,6974,7500,7499,6977,7494,6975,6973,6979,7496,7137,7139,7460,7250,7140,7141,8010,8011,8012,7909,7282] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2990,2456,3419,2993,3016,2408,2409,3017,3020,2406,3049,2971,2972,3498,3500,3501,3499,2976,3418,2776,2777,2956,2439,2455,2405,2413,2608,2744,3504,3403,2610,3506,3505,3507,2438,2457,2606,2593,2591,2592,2596,2988,3389,3024,3025] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [728,729,732,1129,1130,1131,142,143,305,700,761,138,139,140,144,189,190,191,145,147,489,682,684,1210,456,1211,1212,1213,1216,1217,1219,320,322,488,314,318,308,172,173,1115,1101,736,737,702,707,572,705,688] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [5248,5266,5770,4897,5244,4760,4716,4717,4718,4761,4759,4715,5771,5296,5661,5690,5691,5297,4708,4709,4710,4713,5262,5265,4712,5289,5292,5321,5772,5773,5776,5777,5778,4912,4914,5016,5228,5675,4910,4741,4743,5226] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [577,580,581,1196,1147,1177,1179,709,1145,692,693,543,544,547,548,4442,4444,4445,4474,4440,4513,4515] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1240,1242,1233,167,169,170,171,1234,338,339,419,420,421,422,424,1219,457,1218,1232,1079,1241,1104,1105,1106,1365,1115] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2711,3661,2429,2430,2432,2433,2434,2610,2627,3506,3507,3529,2435,2437,2707,2745,3520,3521,3522,3528,2626,3660,3367] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [2869,3467,3484,2146,2147,2148,2145,3435,2980,2868,2171,2835,2836,2825,2831,2832] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1997,1998,1995,1996,1999,6565,5996,6564,6566,6356,6357,6358,2004,6354,6562,6026,6037] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [8011,8012,8013,7005,7007,7909,7872,7873,7899,7002,7003,7004,7141,8178,7900,8177,8159,8026,8028,8035,7214,7897,7898] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5792,5793,5794,5800,5801,4978,4979,4980,4982,4983,4985,4990,4740,4737,4738,4739,4931,5778,4913,4914,5017] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6856,7405,7445,2728,7233,2899,7228,7230,7256,2912,7232,2306] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [7566,7662,7663,7665,7565,7625,7635,7664,7666,7667,7601,7704,7953] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
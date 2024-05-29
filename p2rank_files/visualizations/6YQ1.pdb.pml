
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
        
        load "data/6YQ1.pdb", protein
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
 
        load "data/6YQ1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2990,2995,2987,2986,3390,3391,836,839,3022,3023,3024,2981,3025,3058,3370,3371,3372,3464,2968,3030,2974,806,821,825,827,835,3375,2996,3361,2997,3503,2368,2369,2379,2381,2382,2383,2384,2385,2440,2559,3467,3470,3471,3496,2945,2459,2963,2965,2826,2825,2951,2944,2387,2390,2439,2393,2441,3492,3493,3494,3497] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1147,1149,123,303,177,178,179,1148,695,1222,570,571,688,689,569,1254,1225,1228,1250,1251,1252,1255,718,731,122,712,709,734,739,741,1111,1133,1128,1129,1130,1261,118,119,125,131,120] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [5702,5704,4606,5214,5215,5216,4600,4601,4612,5605,5177,5184,5188,5206,4603,4604,5187,5672,5675,5046,5170,5679,5603,5604,4659,4784,4609,4658,5705,5163,5164,5209,5584,5575] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4126,7243,6909,6910,6911,7240,3080,3082,3100,3106,7222,7223,6918,6919,6921,6922,6924,6915,3109,3119,3114,3117,4123,4124,4125,6926,3138,3113,6684,6779,3085,3908,3910,3911,4115] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [3359,3013,3015,767,793,794,3929,3930,3931,3958,3362,3365,3660,3629,3626,3659,3661,3615,3616,3620,3986,3644,3640,3646,3985,3648,3966,791,797,3524,3525,3614,822,3363,3364,3366,3512,3510,790] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [6709,7317,7678,7708,7319,7687,7707,7775,7778,7285,6712,6713,6768,6710,6887,7273,7266,7267,7805,7692,7781,7807,6901,7782,7290,7296,7308,7309,7287] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [6791,6792,6785,6786,6788,6675,6798,6800,202,81,200,201,208,210,199,85,195,198,96,6790,6671,6685,6686,6689] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3523,3524,3525,3601,3602,3603,3614,3512,3508,3509,3510,3511,795,3615,3616,3587] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1865,6220,1907,6314,6337,6306,6307,6335,6336,6209,6226,6232,1881,1908,1870,1862,1863,1892,6210,6211] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1119,1121,1117,1382,1282,1283,1113,1684,1268,1269,1413,1629,1682,1683,1414,1379] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [3840,3805,3808,4077,4225,4226,4223,3666,3643,3948,4227] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [8297,7852,8049,8157,8014,8217,8017,7875,8249] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6084,6217,6222,6223,6362,5943,6358,6359,6360,6361,6175,5778,5940] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1244,1245,1237,480,482,1048,1050,1315,1310,1302,1304,1306,1307,1309,1292,1054,1293,1297] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1701,1702,1761,1793,1561,1986,1987,1985,1791,1849,1844,1850,1989,1396,1419,1558] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3346,3205,3462,3203] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
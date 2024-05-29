
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
        
        load "data/3BRH.pdb", protein
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
 
        load "data/3BRH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1568,3515,3625,3641,4000,1177,1179,1316,1178,4022,3639,3640,3648,1380,1567,1317,1378,1564,1565,1566,1186,1175,1197,1199,3506,1053,1050,3661,1049,1045,1163,3507,3511,3512,1335,3791,3836,4020,3790,3772,1334,1341,3853] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [4548,4551,4539,2677,4560,4564,4772,4774,4776,2653,2602,2604,4739,4740,2603,2641,2640,4559,2533,4553,4557,2531,2555,2557,2526,2559,2560,2553,2554,2582,2529] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [529,2205,4970,4971,493,277,510,511,512,494,270,271,241,240,2208,531,351,357,362,363,341,301,304,305,268,272,269,290,300,292,291,390,391,2213,4968,2171,243,242] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [133,92,114,163,164,165,166,61,63,65,2101,2314,2316,2318,58,91,86,88,89,90,2281,2081,2095,2102,2106,2090,2093,2094,198,199,200,162,197,2282,95] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3021,3023,2746,2748,4663,2719,2715,2717,2747,2749,2718,2782,2777,2778,2816,2769,4629,4666,4670,4671,2688,2720,4690,2838,2998,3001,3002,2985,2783,2837] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [3590,3566,3310,3589,3595,3309,3514,1052,1103,1104,1064,1129,1133,1132,3526,1126,1127,1128,848] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4210,4251,4252,4258,4261,3215,3198,3201,3207,4417,4456,3199,3208,3220,3244,3253,3255] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1969,1968,2092,2117,2119,2089,2063,2064,2125,2120,2123,2011,2012,2086,2084,2153] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4610,4611,4427,4428,4612,4583,4517,4518,4534,3204,4581,4573,4578,4577,4550,4465,4466,4542] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [4183,4185,4849,4847,4448,4445,4446,4861,4822,4851,4143,4169,4171,4141,4144,4147,4447] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1799,1757,1798,2003,1804,1808,753,781,793,745,1999,736,739,746,782,1965,1809,1811,750] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1112,1113,4960,4962,1601,1602,1607,1609,4964,1092,1094,477,4942,4957,4979,1070,1073,1080,1069] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1868,1870,1902,1869,1876,1599,1603,2236,4964,4962,2271,1880] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4183,4185,4180,4182,4184,4448,4481,4247,4449,4248,4218] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        
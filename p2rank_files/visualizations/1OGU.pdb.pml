
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
        
        load "data/1OGU.pdb", protein
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
 
        load "data/1OGU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1145,1146,1150,1151,119,1057,1153,107,109,111,112,630,627,628,495,496,1073,674,1072,1074,1052,1045,681,688,104,156,157,100,102,103,106,637,259,673,654,651,653,657,631,629,276,392,158,274,1152,118,632,633,108] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5105,4601,4703,5541,5542,5613,4602,4551,4600,4553,4555,4556,4563,4546,4547,4548,5156,4544,4550,5119,5125,5142,5133,5141,5614,4718,4720,5615,5618,5619,5621,5095,5096,5097,5099,5101,5520,5513] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [517,518,7208,621,53,9,526,527,529,203,6,7198,7207,7617,520,521,239,240,253] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [4449,2961,2970,2971,3364,4994,4997,4452,4453,4496,4486,4683,4647,4697,5089,4497,4483,4450,4988,4986,4985] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [3476,3511,3627,1238,3630,3512,1223,3475,2840,3477,1242,2836,2837,2838,3132,3133,1239,2822,1240,3479,3483,3484,1209,1210,1262,1260,1196,1197,1200,1201,2824,2828,3658,3657,2832] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [6861,6862,1090,646,671,1087,521,237,240,7213,7214,638,468,471,1132,481,1131,641,661,659,503,640,1102,1103,2341,2342,1115,6842,6863,6844] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [2551,3803,2893,3462,2859,2886,2887,2890,2862,3460,3712,2534,3469,3704,3452,3457,2921,3702,2552,3781,3825,3753,3751,3752,3761,3767,3762,2509,3804] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2401,1207,1452,1453,1459,1465,2181,2222,2205,2225,2440,2394,2395,2396,2398,2406,2410,2403,1460,1218,1219,1212,1227,1232,1233,1205,2192,2180,2182,1221,2412] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [7762,7730,5694,5708,7059,7760,7763,7764,7765,7729,7911,7065,7066,7068,7796,7886,7909,7910,8586,8588,8574,5693,7883,7885,7890,7794,7878,7880,7882,7884,5706,5691,5707,7061,7073] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [7705,7130,8056,8057,7722,7715,7713,7127,7710,7716,7096,7121,7123,7965,7097,7099,6779,8034,8020,8078,7955,7957,8006,7954,7959,7961,8017,8004,8005,7124,7158,6788,6789,6917] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [5109,5599,5600,5555,5558,5570,5114,4971,4973,2624,5573,2605,2608,4938,5583,6590] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [5687,5686,5689,5695,5700,6631,6633,6635,6643,6644,6647,6649,5675,5676,6677,5927,5928,5921,6638] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [604,606,25,284,285,165,266,67,70,71,46,21,47,22,23,587,586,605] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [1863,2183,2184,1819,2182,2176,1414,1426,1427,1428,1861,1835,1828,1833,1834,1437] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [7605,7606,7607,5033,7581,5031,5034,16,17,7641,7642,42,7580,7611] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [7730,5708,7763,7764,7765,7736,5669,5678,5707,5668,5677,5730,5728,5691,7737,7738,7073,7074,7075,7369,7370,5664] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [454,455,456,6847,6845,6846,505,6843,6844,6842,503,504,7213,7196,7197,7199,7198,6797,6798,7192] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [7406,7374,7383,5736,4847,4849,5738,7345,5740,5735,5636,5638,5639,5640,5642,5643,5756,4820,4827] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [5013,5020,548,533,3384,3411,4451,4445,4446,3382,3385,549,1,7,4455,5001] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4513,4515,4729,4613,5055,5074,4467] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [351,352,344,347,359,3146,3110,3112,324,325,341,3168,3166,3169] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [3352,3353,3321,3323,3355,4477,4486,3389] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        
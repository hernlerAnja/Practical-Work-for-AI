
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
        
        load "data/4KNB.pdb", protein
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
 
        load "data/4KNB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [305,530,650,1235,1236,1237,1238,1240,217,1072,1172,1167,1168,1169,163,157,158,161,160,655,1202,1203,1239,1241,1179,218,708,706,1058,1067,699,1086,674,1087,665,667,669] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [5898,5013,5891,5868,5869,5871,5837,6070,815,801,803,804,809,810,5897,840,843,844,845,846,787,788,5922,5923,5924,790,6071,6072,6066,6067,747,798,695,696,697,1126,1127,1129,1131,1132,682,799,800,876,877,898,1125,6099,6073,6078,6096,6097,1107,1128,1130,1116,1108,684,686,687,6091,6085,746,774,789] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [5484,5485,5487,4444,4450,5486,4504,4575,4445,4448,4904,5321,5417,5418,5421,5489,5416,4804,4951,4955,4956,4957,5307,5316,5335,5334,4923,4948,5336,4920,4916,4947,5490,4505,5488,4589,4587,5452,4899,5424] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2779,2804,2811,2471,2755,2382,2383,2384,3191,3192,2770,2772,2324,2327,2673,3272,3273,3274,3277,2483,2485,3307,3308,2807,3340,3341,3342,3343,3346,2323,2329,3345,3177,3280,2812,2813,3163,3348,2760,2753,2776] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [6757,7080,7087,6648,6649,7082,6771,6769,7599,6975,7600,7601,7634,7097,6592,6589,7099,7107,7108,7519,7518,7103,7131,7604,7607,7650,6609,7651,6588,6594,6595,7138,7139,7140,7490,7657] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [3217,5947,2449,5945,5973,5953,5954,2648,5972,2633,3226,3216,2695,3208,2767,2783,2647,3260,2637,2761,2762,2662,2678,2679,3243] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1719,1721,1748,1302,1732,1724,1726,1730,1755,1316,1320,1321,1322,1314,1315,1296,1364,1442,1312,1313,1467,1468,1301,1307,1310,1446,1378] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [7993,7995,7971,8005,8176,8178,8179,8049,7867,7834,8054,8055,8056,7959,7961,7673] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4900,5428,4811,4815,4817,5440,5444,5433,4726,4752,4727,4804,4800,5417,5413] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [538,452,453,541,1195,543,1179,1191,1199,1203,651,526,533,537,477,478,1168,1184,1185,530] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [1321,1322,1323,6910,6459,6704,6705,6706,1730,1731,1732,1733,6997,6993,6980,6905,6909,6985] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [7535,7543,7551,7587,6947,6950,6939,7088,7089,6981,6980,1713,1714,1715,1712,7110,7532,7586,6964] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6971,7600,7083,7611,7635,6988,7627,7617,7618,6899,6900] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [2543,2545,3303,2538,2541,2570,2490,2491,2723,2724,2741,2482,2484,3299,2486,2361,2360] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [7369,8259,7804,7397,7795,7396,7793,7794,8270,8250,8253,8255,7803] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [5632,5527,5528,5526,5524,5309,5304,5308,4973,4974,4975,5905,5847] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        
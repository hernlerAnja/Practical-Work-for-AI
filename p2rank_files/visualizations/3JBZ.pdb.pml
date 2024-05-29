
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
        
        load "data/3JBZ.pdb", protein
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
 
        load "data/3JBZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1591,1623,1625,1643,1263,1644,1650,1651,2034,1500,1261,1262,1265,1270,1991,1990,2001,2002,1271,1049,1050,817,818,819,581,584,820,821,824,814,816,1288,1290,1674,1675,1286,1287,1989,1099,2058,1302,2031,2032,2033,2057,1076,560,562,1595,1597,1599,1600,1601,1602,1593] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [5676,5681,6561,6649,5283,5284,5677,5266,5267,5694,5089,5088,5137,5740,6535,6646,6648,6657,5696,5699,5700,5702,5723,6560,5689,5691,5692,5693,5734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.408,0.902]
select surf_pocket3, protein and id [1095,1090,1104,1093,1137,1112,1114,2318,2319,2323,2346,2347,2313,2182,2117,2051,2081,2082,2054,2080,2084,2183,2292,2021,2024,2056,2057,2020,2211,2212,2018,836,852,854,1102] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.310,0.278,0.702]
select surf_pocket4, protein and id [4395,4392,4394,4135,5620,5621,4419,4417,4418,5633,5368,5369,4106,4108,4109,5359,5328,5329,5330,5332,5643,7212,7213,4480,7214,4479,4421,4424,4444,4445,4478,7215,5622,5360,4416] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.482,0.361,0.902]
select surf_pocket5, protein and id [2571,2607,2608,2614,2618,2619,2277,2576,2544,2545,2577,2578,2386,2393,2394,2421,2423,2649,2422,2684,2456,2304,2306,2307,2308,2303,2282] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.439,0.278,0.702]
select surf_pocket6, protein and id [7190,7191,7185,7186,7188,3434,3883,3884,3885,7322,7323,3374,7156,3844,7153,7155,7189,7187,3403,3433,3443,3444,7352,7354,7157,3402,7378] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.651,0.361,0.902]
select surf_pocket7, protein and id [6901,6202,6304,109,110,147,148,139,6343,6896,6892,6195,6888,6171,6225,6193,6194,6196,6197,6201,6301,175,177,6920,136,135] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.573,0.278,0.702]
select surf_pocket8, protein and id [4361,4934,4359,4111,4397,4076,4923,4920,4921,4922,5615,5604,5622,5614,5360,5355,5357,5358,4395,4396,5619,4103,4110,4105,4106,4109,4935,4352,4383,4385,5388,5391,5387,5393,5395] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.820,0.361,0.902]
select surf_pocket9, protein and id [1992,1993,1991,1990,2001,581,584,585,789,790,820,821,824,791,816,817,819,560,562,1580,1581,1583,536,792,1593] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.698]
select surf_pocket10, protein and id [404,227,229,240,208,209,377,514,263,513,463,435,436,403,228] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.812]
select surf_pocket11, protein and id [2251,2557,2558,2559,2562,2563,2994,2250,2599,2601,2602,2560,2224,2222,3287] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.565]
select surf_pocket12, protein and id [7125,7157,7414,7106,3373,3402,3346,3347,3371,3381,7127,7378,3444,7101,3788,7103,3818,3819,3820,7156,7155,3383,7412,7099] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.643]
select surf_pocket13, protein and id [330,332,333,292,293,1592,354,352,353,260,261,262,1572,1573,1588,1577,359,355,356,542,375,376,377,378,263,540,561,563,1583,241] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.435]
select surf_pocket14, protein and id [3012,3184,3355,3382,3045,7105,3314,3316,3321,3318,7106,3345,3346,3347,3320] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.475]
select surf_pocket15, protein and id [7773,5883,5886,5888,5914,7715,5757,7723,7743,7721] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.302]
select surf_pocket16, protein and id [6789,6741,7704,7705,6742,6501,6502,7707,7724,6680,7709,6503,7730,7728,6766,6786] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.416,0.361]
select surf_pocket17, protein and id [2251,2563,2993,2994,2250,2954,2958,2985,2528,2953,3287,3264,3285,2957] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.388,0.278]
select surf_pocket18, protein and id [7634,6133,7651,7653,7637,7677,6102,6103,6851,6852,6856,7747,6855] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.584,0.361]
select surf_pocket19, protein and id [945,947,920,1178,1188,1190,1189,944,946,948,951,1211,950] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.522,0.278]
select surf_pocket20, protein and id [4930,5238,5240,5245,5685,5242,4923,5600,5259,5679,5596] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.753,0.361]
select surf_pocket21, protein and id [44,45,6281,6282,6278,6311,6324,6325,327,6314,6316,306,309] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.651,0.278]
select surf_pocket22, protein and id [6649,5283,5284,5102,5307,5120,5305,5306,5304,6657] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.878,0.902,0.361]
select surf_pocket23, protein and id [2041,1667,1930,1949] 
set surface_color,  pcol23, surf_pocket23 
   
        
        deselect
        
        orient
        
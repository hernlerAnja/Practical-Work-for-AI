
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
        
        load "data/7MN8.pdb", protein
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
 
        load "data/7MN8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5028,5026,5027,5017,5018,5022,5203,5261,8060,5011,5012,5020,8486,8487,8485,8265,8267,7042,8264,8266,8034,8036,8038,7125,8472,8498,8475,8473,7051,7053,7026,6969,7126,7020,7021,7027,5013,5014] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [46,47,4918,4919,35,3054,4984,4985,29,30,122,31,187,150,186,77,78,149,157,280,3052,3053,24,26,27,32,36,39,2542,3041,3043,3047,3044,3045,4920,4970,2383,4965,4966,2384,2385,2387,4931,4958,2540,2818,2817,3036,2339,2342,2346,2381] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [7105,1820,1826,6782,6957,6704,6958,7104,1783,6776,1805,1806,6769,6778,6781,1785,6774,6702,6763,6691,1808,7087,7103,6792,6795,6796,7094,6932,1835,1859,1860,1830,1836,1832] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [6713,5250,6674,5439,5429,6716,6663,6664,6669,6670,5242,5638,6677,5438,6983,6984,5015,5007,5006,5008,6974,6976,5266,6978,6977,5249,6678,6734,6736,6750,6658,6644] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [11911,9077,9182,9286,9287,9288,9060,9074,9296,9300,11357,11359,11940,11941,9332,9334,9305,9267,9303,11544,9061,9177,11536,11337,11520,11521] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [7181,7317,7137,7334,7368,7333,7138,7174,7182,7190,7551,7550,7548,7824,7823,7143,7168,7128,7134,7122,7131,7133,1894,1895,8051,7358,7359,8053] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [1553,1557,1558,1562,6567,1556,1561,1630,1631,1459,1468,1532,1537,1538,1539,1575,1582,1581,1566,6560,6564,6565,6566,6558,6559] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [691,693,1168,1183,951,952,953,680,682,669,499,731,732,739,4789,729,730,738,4813,968,4800,978,979,4819,4820,4835,58,4833,4834] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [7855,7838,7574,7410,7346,7417,7415,7840,8068,8070,7592,7857,8072,5081,7343,7349,7342,7344,8052,7839,7348,7390,8057] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [5261,1868,5268,5271,5278,5659,8060,5032,8083,8081,5036,5044,5028,5026,5027,5029,7125,1864,1866,1875,1870] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [9843,9371,9854,9849,9850,9698,9703,9704,9707,9274,9700,11926,11943,11947,11935,11931,11937,9271,10173,10170,9841,9718] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [2388,4939,4941,2637,2638,2639,2384,2385,2386,2387,4958,4954,4955,4956,2361,2370,2380,2395,2410,2575,2656,2608,2376,2422,2429,2430] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [2324,2326,2349,2350,2351,6879,2147,2510,2516,2135,2802,2136,2138,2799,2800,3014,3021,2526,3025,2334,2356,2345,2322,2327,2329,2330,2509,2323] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [618,619,620,433,434,1708,1691,1688,1687,6843,6851,1999,1997,447,240,241,254,448] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [1580,1582,1581,1474,1468,1475,6638,6639,6559,6558,6756,6759,6748,6640,6760,6764,6755,6752] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [6563,6560,6561,6564,6547,6470,6461,6465,6466,6106,6459,6471,1459,1532,1543] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [12546,10519,12547,12168,12195,12181,12197,10346,10347,12182,12183] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [2043,2044,1992,6868,6869,6870,1991,2072,2074,3009,3013,2063,3256,3033] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [5103,8290,8069,8071] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [562,586,864,706,724,548,469,470,704,705] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [8639,8392,8357,8383,8385,8609,8630] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [1814,1815,1822,1823,1824,7089,7073,7082,7090,7144,7145,7075,7170,7171,7172,7258,7150,7083] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [3660,3653,3656,3659,3671,3693,3694,3688,3689,3390,3389,3697,3707,3708] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [1608,1609,1611,1614,1413,1496,895,1398,1610,1676,876,593,594,595] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [10817,12407,12409,12410,10519,10736,10741,10802,10812,10525,10526,10762,10786,10527,10757,10760,10796,10524] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [9259,10193,9670,9203,9209,10179,10192,10183,10185,9186] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [2707,2708,2709,12732,12734,12718,12719,2445,12359,12634,12648] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [12034,12035,12281,12279,12454,12455,12497,12498,12499,12047,12048,12039,11824,11825,11826,11429,11430,12297] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [2624,2627,4716,4718,4720,4846,4841,4842,4838,4844,4824] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [5108,5165,8098,5163,5128,5129,5131,8079,5099,5104,5134,5133,5096,5054,5055,5093,8290] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [5494,5829,5830,5813,5809,5728,5741,5477,5557,5784] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [11898,10214,11377,10200,11498,11499] 
set surface_color,  pcol32, surf_pocket32 
   
        
        deselect
        
        orient
        
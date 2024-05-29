
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
        
        load "data/7SA7.pdb", protein
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
 
        load "data/7SA7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9595,9612,9613,9614,10170,9570,9563,9564,9565,9566,10155,10157,10162,11106,11109,10166,10169,9374,10135,10136,10141,10142,11117,11120,10144,10150,11143,9615,9286,9287,9290,9629,9630,10159,10444,10454,10440,10441,10191,9605,9611] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [2007,2010,2014,2056,2057,2058,2059,2063,3412,2054,3410,2614,2758,2638,2757,1736,2072,2074,2729,2728,2734,2207,1795,1794,2008,1818,2009,3449,2603,2610,2611,2612,2601,1747,1748,2021,2020,3422,3426,3419] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [6781,6782,6784,6800,6801,6941,6942,6982,6774,6775,6776,6777,6778,6779,6780,10010,9503,6452,6449,6451,6459,6460,6475,6485,10014,10017,10033,10034,9502,6454,7046,7052,7058,9956,10016,6799,6476,6533,6534,7064,7063,6546,6553,9506,6549,6483,6484,6745] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [11052,11053,11054,11206,9590,9739,9572,9635,9573,11073,11151,11153,9577,9578,9579,9396,9397,9398,11193,9714,9715,9394,9389,9555] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [7620,7558,7562,7574,7575,7576,7553,7563,7698,7700,7382,7383,7540,7723,7699,9036,9037,9129,9132,9135,7373,7564,7566,9175,9160,9161,9162,9164,9122,7379,7381,7394,9176,7375] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [5080,5178,5180,5230,5231,3731,5205,5207,5218,5219,3710,3912,3913,3914,3895,3891,3896,3900,3901,3902,3904,5232,5099,4038,3717,3718,3719,3878,4062,3721,3958] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [2182,1998,1999,2079,2016,2017,2033,2034,2035,2021,2022,2023,3457,2159,1833,1852,1834,1838,1839,1842,1840,3499,1853,3459,3512,3360,2012] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [6501,7081,7072,7074,7108,7111,6502,6214,6177,6178,6179,6180,6181,6165,7109,5404,5405,6161,5602,5627,5606,5595,5406,5596,5597,7084,7088,5608,7077,6184,6186,6188,5643,5644,5637] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [5602,5627,5595,5598,5596,5597,5381,6168,5379,5396,6150,6151,6187,6189,6190,6224,6198,6417,5661,5662,5332,5334,5335,5336,6415,6416,5644,5645,5646,5647,5846,5383,6163,6166] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [287,288,304,305,306,293,270,109,110,111,112,105,283,350,430,453,454,292,1584,1586,294,1626,296,123,124,102,1615,1613,1487,1639] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [6277,6286,6288,6303,6314,6302,9338,9340,9915,9951,9952,9528,9529,9913,6305,10049,10050,10029,9891,9889,9892] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [7580,7561,7551,7595,9103,9092,9100,7555,8155,7599,7600,7594,7596,7597,7598,8429,8430,8436,8428,8435,8433,8133,8134,8136,8140,7358,8126,8135,9087,9089,9126] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [1003,920,930,944,945,953,954,1002,1246,1247,1266,1264,1018,1210,1239,1244,5822,5823,5824,5821,5834,5835,5889,5890] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [279,280,281,285,324,325,326,327,328,913,916,869,873,875,876,1542,1553,1543,894] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [2857,2859,2592,2842,2604,2593,2849,2850,3578,3477,3478,3054,3579,3562,3440] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [11172,10739,10741,11256,11272,11273,10544,10536,10537,10546,10529,10530,10148,10149,10549,11101,11102,11134,11137,11140,11141,11171] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [861,862,863,985,987,889,864,1534,1573,1576,1574,1567,1569,1570,1605,1604,1535,1176,1178,977,978,1705,1706,1689] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [4796,4810,4947,4948,4949,4634,4635,4636,4637,4865] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [1784,1782,1973,2493,2494,1772,1773,2335,2355,2357,2359,2360,2363,1766,2356,2366,2395,2396,2473] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [5561,6078,6079,5352,5354,5945,5370,5371,5372,5943,5944,5954,5956,5983,5984,6050,5921,5924,5923] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [5347,5351,5354,5370,5372,5383,5918,5919,5917,5577,5660,5329,5330,5335,5378,5379,5380,5382,5920,5921,5924] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [6018,6019,6020,6025,5974,5975,5977,5973,5857,5858,5859,5758,5759,5760,5761,5675,6053,5674,5757] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [3401,3320,3384,3137,3139,3280,3396,3395,2814,2816,2817,2795,2790,2792] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [243,244,765,626,627,628,630,631,606,634,666,53,55,764] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [10582,10583,10513,10969,10970,10827,10828,10829,10773,10503,10504,10562,10810,10802,10803,10805,10809] 
set surface_color,  pcol25, surf_pocket25 
   
        
        deselect
        
        orient
        
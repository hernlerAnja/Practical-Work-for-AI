
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
        
        load "data/4E4M.pdb", protein
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
 
        load "data/4E4M.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [182,183,184,187,188,238,239,189,190,191,868,195,1332,1245,1246,1247,837,841,842,1216,1325,1328,1329,2640,800,802,186,373,809,638,783,788,812,637,1343,639,202,389,1333,240,387,784,533,566,905,907,824,866,867,817,823,834,2639] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [3798,3802,3799,3686,3804,2672,3107,3108,3253,3254,3036,3717,3795,2709,2708,2710,2659,2660,2661,2664,2665,2656,2653,2654,2657,2843,3258,2857,2859,3003,3279,3304,3307,3715,3716,3311,3312,3338,3280,3276,3282,3272,3270,3287] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [7600,7601,7605,7612,7599,7598,7592,7593,7594,8742,8743,8744,8745,8640,8739,7943,8735,8738,8753,8048,8193,7650,8194,7648,7649,7596,7783,7976,7975,8198,8626,8251,8252,8278,8244,8247,8210,8216,8219,8220,8656,7597,8655,8657,8222,8227,7799,7797] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [6156,6185,6187,6186,5135,5142,5178,5179,5180,5746,5752,5313,5728,5723,5724,5774,5777,5781,5808,5749,5329,5327,5123,5124,5127,5129,5740,5742,5126,5757,6265,6268,6269,6272,6273,6275,5577,5578,5579,5506,5473] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [6054,6055,6056,6057,6605,6603,6604,6606,6610,6058,6061,6063,6060,9504,9507,9328,9329,6025,6028,6029,7272,7276,7279,7283,7270,7271,7287,9462,6027,6032,7290,7291,9460,9464,9465,9501,9327,9326,7251,7266,7261,7262,7267] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [8918,8902,8932,8933,9010,9042,722,718,720,9016,9389,8886,9062,8903,8592,8906,9388,717,74,75,8899,693,695,697,8981,8983,8947,9020,9411,9014,8767,9412] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [732,9482,733,6011,9479,9481,9483,5564,6009,5979,7346,7348,5985,5949,5546,5547,5548,9490,9685,9478,5988,5556,6236,5563,5549,5553,5554,707,708,710,711,706,709,7345,5951,5953,7374,713] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [760,7380,7383,7396,758,101,99,248,263,143,147,7407,130,129,133] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [2603,2718,3230,2719,2868,2600,2569,2570,2574,2599,2617,2618,2619,831,2613,2733] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [9637,9638,9640,5530,6041,6043,6072,9498,9499,9675,9676,9677,9682,9686,5533,5546,9683,9685,9512,9478,9671,9678,9659,9684,5536,5538,5534] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [575,547,548,549,679,540,695,680,697,751,750,508,72,73,75,696,512,9388,510,573,574,659,65] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [9069,9075,9073,9074,9076,9077,9080,8841,8526,8524,8525,9722,9749,9101,9732,9737,9740,9742,9746,8497,8489,8495,9697,9721,9761,9753] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [3557,3584,3585,3586,4135,4140,4767,4133,4134,4129,4136,4137,4127,3858,3901,3896,4797,4802,4800,4806,4809,4792,4781,3555,4813] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [2829,161,3273,3289,3271,331,332,333,268,269,270,272,334,3290,3267,141,139,140,2828,2825] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [491,493,223,1497,1374,1479,1494,520,490,492,453,455,454,456,522,1462,1350,1352,1353] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [1663,1664,1665,1666,1670,1659,2339,1114,1116,1431,2336,2332,2321,2322,2327,2330] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [2742,2608,2609,2616,2631,2802,2803,819,1263,820,358,2804,794,793,797] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [1523,1522,1537,2002,1573,1606,1610,1604,2001,1600,1571,1978,1979] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [5069,5039,5189,5083,5087,5070,5073,5188,5319,5700,5338,5699,5203] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [5431,5433,5393,5394,5432,5462,5395,5396,6290,5161,5163,5162,6434,6435,6437,6402,6314] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [9110,9113,9661,9662,9664,8951,8952,9143,9510,9303,9473,8944,8977,9663,9665,9520,9521] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [1562,1867,1868,857,858,859,1561,1809,1814,1861,1853,1854,1815,1768] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [6640,7194,7195,6673,6833,7051,6643,7193,7040,7192,6507] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [8168,8170,7658,7539,7540,7509,7543,7514,7511,7553,7673,7557,7559] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [944,916,917,2718,2719,2868,2617,2618,2619,2621,2623,830,831,2648] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [7633,8760,7899,8784,8772,8907,7632,7901,7902,7903,7900] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [1534,1567,1541,1542,1891,1893,2063,1703,2064,1733,1700,2251,2252,2254,2253,2255,2111,2100] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [4722,4724,4725,4723,4203,4363,4570,4170,4173,4037] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [6513,6544,6941,6942,6919,6540,6546,6550,6462,6477,6432,6463,6918] 
set surface_color,  pcol29, surf_pocket29 
   
        
        deselect
        
        orient
        

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
        
        load "data/5AIK.pdb", protein
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
 
        load "data/5AIK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8822,8833,8836,8834,8835,8443,8412,8420,8439,8441,518,295,299,300,302,305,308,516,8847,1551,1552,1581,1585,8361,8362,8364,8366,8353,8369,1545,1547,8826,8408,1447,1448,1433,1434,1322,1450,1455,1321,541,542,1449,8840,1279,1281,1562,1564,1565,1280,1571,1572,1576,1298,1297,8842,460,575,513,546,547] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [456,458,459,460,443,918,277,330,331,1431,1321,940,1309,273,279,285,310,311,1427,741,1424,1425,1426,1337,1338,884,886,888,889,742,883,893,913,907,909,910,912,911] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [5871,6020,5892,5891,6877,6900,6901,6902,6993,6484,6499,6873,6506,6308,6459,6477,6478,6479,6473,6475,6450,6452,6454,6449,6019,6004,6021,6995,6999,7000,6992,6994,6885,7002,5836,5838,5834,5840,6476] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [9223,9766,9769,9762,9764,9765,9075,9076,9763,9643,9246,9247,9274,9672,9245,9244,9252,8776,9241,9227,9222,9218,9220,8791,8792,8648,8668,8616,8612,8614,8666,8667,8610,8793,9655,9770,9772,8645,8647,8622,8617,8619] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [4127,3696,3698,3114,3692,3697,3227,3678,3669,3671,3725,3071,3094,3095,3113,3115,3241,3240,3691,3695,3063,3059,3061,3065,3066,3068,4126,3526,4217,4218,4219,4220,3527,4224,4225,4227,3242,3243,3244,3367,4221,3673,3674,3672,4098,4110] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [8639,8642,8637,8645,8647,505,509,8879,8851,495,103,499,9872,500,504,9791,8880,8883,9787,9786,9792,9793,9771,9785,9772,9655,9646,9647,9648,9612,9613,9614,9632,9615,9631,9605,9886,8792,8884,8885,8888,8793,8913] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [1681,1682,1683,1684,1686,2657,1687,1705,2647,1689,7052,1688,1702,6804,6805,6767,6768,7275,6732,7267,7265,7276,7277,7280,8241,2656,8238,8240,7264,7271,8247,8248,7272,7274] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [495,68,99,101,103,489,493,9872,21,24,26,8,9,79,80,9883,9876,9878,9916,29,33,9882,8636,8637,9907] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [769,396,397,399,417,413,416,894,897,768,3858,3855,5229,3841,3842,5231,5234,5236,5235,5227] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [2089,2091,2090,2116,9156,9159,9160,8396,8398,9161,9162,1907,1908,8372,8384,1544,1546,9173,8375,9172,2114,2115,1532,1647] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [10422,10419,10420,10421,821,822,839,825,826,838,42,43,44,10447,32,35,58,9875,10236,10237,10238,10239,9877,10446] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [6109,6114,6110,6113,7016,7017,6115,5861,5866,5867,5869,6084,6081,6118,6037,7015,7023,6021,7001,7002,6143] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [1203,1713,1204,2698,2699,1484,2645,2692,2689,2690,2691,1712,1706,1710,1708,1709,1714,1715,1483,1703,1718,1705] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [91,485,519,8636,8857,8858,520,299,8818,8431,8442,8432,8832,8834,100,102] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [7170,7171,6860,6867,6870,7157,7159,6875,6519,6520,6521,6523,6524,6525,6878,7374,7418,6868] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [6843,6845,6844,6861,6862,7023,6885,6886,7002,5871,6877,5861,5869] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [11022,11023,9538,9502,11012,11013,11014,11016,9537,10036,10969,10045,10046,10049,9822,10041,10043,10044,10039,10040,10033,10034,10037] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [9289,9291,9292,9293,9926,9928,10187,9287,9940,9630,9939,9647,9628,9639,10143] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [1595,1597,1598,1581,1585,1594,1596,1314,1296,1313,1608,1575,1576,1577,1593,1856] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [3740,4398,4399,4102,4103,4385,4387,4602,4646,3742] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [3823,5197,778,3821,3819,399,3792,774,776,216,5198,5194,5195,3829,5209,5210] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [1467,1696,1499,1694,1471,1485,1689,1488,1466,1509,1521,1524,1492,1516,1514] 
set surface_color,  pcol22, surf_pocket22 
   
        
        deselect
        
        orient
        
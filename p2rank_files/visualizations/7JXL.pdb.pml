
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
        
        load "data/7JXL.pdb", protein
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
 
        load "data/7JXL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1729,1730,1739,1752,1601,1727,1741,4200,1613,1616,4053,4068,1609,1687,1720,1630,1632,1603,1602,1607,4245,1747,1750,1751,1753,1774,8739,1830,4071,4247,4051,4027,4035,1583,1584,4044,1524,1563,1775,1588,4239,4236,4237,4238,4240,4273,4274,8733,8736,8737,8734,4195,4196,4208,1722,1726,4175,8735,4199,4221,4070,4248,4252] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [7264,7265,7270,7314,7315,7316,8259,8260,8339,8340,8347,7276,8230,8231,8244,8348,4320,4321,7280,8346,7858,7861,4319,7890,7866,7865,7812,7813,7452,7817,7834,7835,7836,7831,7268,7267,7842,8233] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [3079,3443,3074,3078,3473,2510,2511,3103,2512,2514,3070,3071,3472,3047,3552,3553,2713,2716,3558,2699,3025,3026,2562,2563,2517,2520,3555,2714,3044,3042,3444,3446,3447,3457,2522,2523,2526,2527] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [5483,5487,5881,5882,5480,4949,5457,5439,5453,5456,5086,4898,4904,4905,4948,4903,4901,4899,4902,5962,5961,5435,5852,5488,5512,5866,4910,5855,4909,4913,4950,4930,5968,5969,5970,4914,5101,5434] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [726,750,751,159,1151,1152,1231,723,344,721,727,709,157,155,156,160,782,162,1123,1125,753,757,758,1124,1122,1136,1232,208,360,206,1240,1239,361,172,168,207,347,353,357,704,705] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [492,495,187,1263,1255,375,393,377,183,184,378,1257,1259,1273,1275,1276,1277,181,469,470,471,528,688,689,467] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [4332,8705,8707,8704,8715,8428,8650,7882,4298,8708,7918,8693,8696,8697,8416,4300,8429,8233,8234,8235,8389,8400,8394,4264,4265,4266,8755,8759,8408,8412,8413,8414,8415,8404,7276,8227,8231,8232,4319] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7212,7172,7355,7357,7359,7361,7173,7151,7152,7153,7804,7724,7803,7726,7447,7437,7446,7432,7360,7362] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [5348,5345,5346,5426,4806,4785,4787,4807,4988,4989,4990,4991,4994,4996,4993,4995,5066,5071,5080] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [614,616,619,43,44,45,615,621,46,246,247,249,252,248,250,695,104,696,64,65,251,253,324,338,618,254,707] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [2684,2693,3021,3022,3027,3028,2679,2602,2604,2607,2609,2939,2398,2399,2400,2606,2603,2936,2937,2942,3017] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4327,4328,4365,4355,4331,8705,8706,4210,1725,4211,8735,4358,4361,4362,4363,4364,4389,1711,1708,1716] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [5619,5621,5582,5583,5592,5620,5622,5623,5624,5556,5559,5921,6947,5521,5523,5910,5911,5522] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [3214,3215,4538,3173,3174,3212,4531,3113,3501,3502,3112,3114,3152,3150,3183,3211,3210] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [704,705,605,608,610,590,525,604,527,526,1233,1234,1239,1244,1263,189,361,1249,1251] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [5308,5682,5707,5685,7106,7107,7102,7105,5675,6791,5649] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1864,1859,1903,1860,1863,8747,8802,1838,1839,8838,8839,1873,1872,8731,8845,8722,8745,8717,8867] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [829,890,893,894,1191,2194,2202,858,862,852,889,891,853,1181,1180,793] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [6634,6041,6355,6356,6209,6064,6637,6478,6483,6439] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        